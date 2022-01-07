
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_7__ {int atr; } ;
struct TYPE_6__ {int atr; } ;
struct TYPE_5__ {int atr; } ;
struct TYPE_8__ {TYPE_3__ inputbox; TYPE_2__ border; TYPE_1__ dialog; } ;


 char ACS_HLINE ;
 int ACS_LTEE ;
 char ACS_RTEE ;
 int ERRDISPLAYTOOSMALL ;
 int INPUTBOX_HEIGTH_MIN ;
 int INPUTBOX_WIDTH_MIN ;







 int MAX_LEN ;

 int TRUE ;
 int delwin (int *) ;
 char* dialog_input_result ;
 TYPE_4__ dlg ;
 int draw_box (int *,int,int,int,int,int ,int ) ;
 int draw_shadow (int ,int,int,int,int) ;
 int flash () ;
 int getmaxx (int ) ;
 int getmaxy (int ) ;
 int getyx (int *,int,int) ;
 int isprint (int) ;
 int keypad (int *,int ) ;
 int mvwaddch (int *,int,int ,int ) ;
 int * newwin (int,int,int,int) ;
 int on_key_esc (int *) ;
 int on_key_resize () ;
 int print_autowrap (int *,char const*,int,int,int) ;
 int print_buttons (int *,int,int,int) ;
 int print_title (int *,char const*,int) ;
 int stdscr ;
 int strcpy (char*,char const*) ;
 int strlen (char*) ;
 int waddch (int *,char) ;
 int waddstr (int *,char*) ;
 int wattrset (int *,int ) ;
 int wgetch (int *) ;
 int wmove (int *,int,int) ;
 int wrefresh (int *) ;

int dialog_inputbox(const char *title, const char *prompt, int height, int width,
      const char *init)
{
 int i, x, y, box_y, box_x, box_width;
 int input_x = 0, key = 0, button = -1;
 int show_x, len, pos;
 char *instr = dialog_input_result;
 WINDOW *dialog;

 if (!init)
  instr[0] = '\0';
 else
  strcpy(instr, init);

do_resize:
 if (getmaxy(stdscr) <= (height - INPUTBOX_HEIGTH_MIN))
  return -ERRDISPLAYTOOSMALL;
 if (getmaxx(stdscr) <= (width - INPUTBOX_WIDTH_MIN))
  return -ERRDISPLAYTOOSMALL;


 x = (getmaxx(stdscr) - width) / 2;
 y = (getmaxy(stdscr) - height) / 2;

 draw_shadow(stdscr, y, x, height, width);

 dialog = newwin(height, width, y, x);
 keypad(dialog, TRUE);

 draw_box(dialog, 0, 0, height, width,
   dlg.dialog.atr, dlg.border.atr);
 wattrset(dialog, dlg.border.atr);
 mvwaddch(dialog, height - 3, 0, ACS_LTEE);
 for (i = 0; i < width - 2; i++)
  waddch(dialog, ACS_HLINE);
 wattrset(dialog, dlg.dialog.atr);
 waddch(dialog, ACS_RTEE);

 print_title(dialog, title, width);

 wattrset(dialog, dlg.dialog.atr);
 print_autowrap(dialog, prompt, width - 2, 1, 3);


 box_width = width - 6;
 getyx(dialog, y, x);
 box_y = y + 2;
 box_x = (width - box_width) / 2;
 draw_box(dialog, y + 1, box_x - 1, 3, box_width + 2,
   dlg.dialog.atr, dlg.border.atr);

 print_buttons(dialog, height, width, 0);


 wmove(dialog, box_y, box_x);
 wattrset(dialog, dlg.inputbox.atr);

 len = strlen(instr);
 pos = len;

 if (len >= box_width) {
  show_x = len - box_width + 1;
  input_x = box_width - 1;
  for (i = 0; i < box_width - 1; i++)
   waddch(dialog, instr[show_x + i]);
 } else {
  show_x = 0;
  input_x = len;
  waddstr(dialog, instr);
 }

 wmove(dialog, box_y, box_x + input_x);

 wrefresh(dialog);

 while (key != 133) {
  key = wgetch(dialog);

  if (button == -1) {
   switch (key) {
   case 128:
   case 129:
   case 134:
    break;
   case 135:
   case 8:
   case 127:
    if (pos) {
     wattrset(dialog, dlg.inputbox.atr);
     if (input_x == 0) {
      show_x--;
     } else
      input_x--;

     if (pos < len) {
      for (i = pos - 1; i < len; i++) {
       instr[i] = instr[i+1];
      }
     }

     pos--;
     len--;
     instr[len] = '\0';
     wmove(dialog, box_y, box_x);
     for (i = 0; i < box_width; i++) {
      if (!instr[show_x + i]) {
       waddch(dialog, ' ');
       break;
      }
      waddch(dialog, instr[show_x + i]);
     }
     wmove(dialog, box_y, input_x + box_x);
     wrefresh(dialog);
    }
    continue;
   case 132:
    if (pos > 0) {
     if (input_x > 0) {
      wmove(dialog, box_y, --input_x + box_x);
     } else if (input_x == 0) {
      show_x--;
      wmove(dialog, box_y, box_x);
      for (i = 0; i < box_width; i++) {
       if (!instr[show_x + i]) {
        waddch(dialog, ' ');
        break;
       }
       waddch(dialog, instr[show_x + i]);
      }
      wmove(dialog, box_y, box_x);
     }
     pos--;
    }
    continue;
   case 130:
    if (pos < len) {
     if (input_x < box_width - 1) {
      wmove(dialog, box_y, ++input_x + box_x);
     } else if (input_x == box_width - 1) {
      show_x++;
      wmove(dialog, box_y, box_x);
      for (i = 0; i < box_width; i++) {
       if (!instr[show_x + i]) {
        waddch(dialog, ' ');
        break;
       }
       waddch(dialog, instr[show_x + i]);
      }
      wmove(dialog, box_y, input_x + box_x);
     }
     pos++;
    }
    continue;
   default:
    if (key < 0x100 && isprint(key)) {
     if (len < MAX_LEN) {
      wattrset(dialog, dlg.inputbox.atr);
      if (pos < len) {
       for (i = len; i > pos; i--)
        instr[i] = instr[i-1];
       instr[pos] = key;
      } else {
       instr[len] = key;
      }
      pos++;
      len++;
      instr[len] = '\0';

      if (input_x == box_width - 1) {
       show_x++;
      } else {
       input_x++;
      }

      wmove(dialog, box_y, box_x);
      for (i = 0; i < box_width; i++) {
       if (!instr[show_x + i]) {
        waddch(dialog, ' ');
        break;
       }
       waddch(dialog, instr[show_x + i]);
      }
      wmove(dialog, box_y, input_x + box_x);
      wrefresh(dialog);
     } else
      flash();
     continue;
    }
   }
  }
  switch (key) {
  case 'O':
  case 'o':
   delwin(dialog);
   return 0;
  case 'H':
  case 'h':
   delwin(dialog);
   return 1;
  case 129:
  case 132:
   switch (button) {
   case -1:
    button = 1;
    print_buttons(dialog, height, width, 1);
    break;
   case 0:
    button = -1;
    print_buttons(dialog, height, width, 0);
    wmove(dialog, box_y, box_x + input_x);
    wrefresh(dialog);
    break;
   case 1:
    button = 0;
    print_buttons(dialog, height, width, 0);
    break;
   }
   break;
  case 128:
  case 134:
  case 130:
   switch (button) {
   case -1:
    button = 0;
    print_buttons(dialog, height, width, 0);
    break;
   case 0:
    button = 1;
    print_buttons(dialog, height, width, 1);
    break;
   case 1:
    button = -1;
    print_buttons(dialog, height, width, 0);
    wmove(dialog, box_y, box_x + input_x);
    wrefresh(dialog);
    break;
   }
   break;
  case ' ':
  case '\n':
   delwin(dialog);
   return (button == -1 ? 0 : button);
  case 'X':
  case 'x':
   key = 133;
   break;
  case 133:
   key = on_key_esc(dialog);
   break;
  case 131:
   delwin(dialog);
   on_key_resize();
   goto do_resize;
  }
 }

 delwin(dialog);
 return 133;
}
