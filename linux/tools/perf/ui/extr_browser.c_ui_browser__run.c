
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {int navkeypressed; int index; int nr_entries; int top_idx; int rows; int (* seek ) (struct ui_browser*,int,int ) ;scalar_t__ horiz_scroll; scalar_t__ columns; scalar_t__ use_navkeypressed; int helpline; int title; int (* refresh_dimensions ) (struct ui_browser*) ;} ;
typedef int off_t ;
 int K_RESIZE ;


 int SEEK_CUR ;
 int SEEK_END ;
 int SLsmg_refresh () ;
 int __ui_browser__refresh (struct ui_browser*) ;
 int __ui_browser__show_title (struct ui_browser*,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (struct ui_browser*) ;
 int stub2 (struct ui_browser*,int,int ) ;
 int stub3 (struct ui_browser*,int,int ) ;
 int stub4 (struct ui_browser*,int,int ) ;
 int stub5 (struct ui_browser*,int,int ) ;
 int stub6 (struct ui_browser*,int,int ) ;
 int ui__getch (int) ;
 int ui__lock ;
 int ui__refresh_dimensions (int) ;
 int ui_browser__reset_index (struct ui_browser*) ;
 int ui_helpline__puts (int ) ;

int ui_browser__run(struct ui_browser *browser, int delay_secs)
{
 int err, key;

 while (1) {
  off_t offset;

  pthread_mutex_lock(&ui__lock);
  err = __ui_browser__refresh(browser);
  SLsmg_refresh();
  pthread_mutex_unlock(&ui__lock);
  if (err < 0)
   break;

  key = ui__getch(delay_secs);

  if (key == K_RESIZE) {
   ui__refresh_dimensions(0);
   browser->refresh_dimensions(browser);
   __ui_browser__show_title(browser, browser->title);
   ui_helpline__puts(browser->helpline);
   continue;
  }

  if (browser->use_navkeypressed && !browser->navkeypressed) {
   if (key == 135 || key == 128 ||
       (browser->columns && (key == 132 || key == 129)) ||
       key == 131 || key == 130 ||
       key == 133 || key == 134 ||
       key == ' ') {
    browser->navkeypressed = 1;
    continue;
   } else
    return key;
  }

  switch (key) {
  case 135:
   if (browser->index == browser->nr_entries - 1)
    break;
   ++browser->index;
   if (browser->index == browser->top_idx + browser->rows) {
    ++browser->top_idx;
    browser->seek(browser, +1, SEEK_CUR);
   }
   break;
  case 128:
   if (browser->index == 0)
    break;
   --browser->index;
   if (browser->index < browser->top_idx) {
    --browser->top_idx;
    browser->seek(browser, -1, SEEK_CUR);
   }
   break;
  case 129:
   if (!browser->columns)
    goto out;
   if (browser->horiz_scroll < browser->columns - 1)
    ++browser->horiz_scroll;
   break;
  case 132:
   if (!browser->columns)
    goto out;
   if (browser->horiz_scroll != 0)
    --browser->horiz_scroll;
   break;
  case 131:
  case ' ':
   if (browser->top_idx + browser->rows > browser->nr_entries - 1)
    break;

   offset = browser->rows;
   if (browser->index + offset > browser->nr_entries - 1)
    offset = browser->nr_entries - 1 - browser->index;
   browser->index += offset;
   browser->top_idx += offset;
   browser->seek(browser, +offset, SEEK_CUR);
   break;
  case 130:
   if (browser->top_idx == 0)
    break;

   if (browser->top_idx < browser->rows)
    offset = browser->top_idx;
   else
    offset = browser->rows;

   browser->index -= offset;
   browser->top_idx -= offset;
   browser->seek(browser, -offset, SEEK_CUR);
   break;
  case 133:
   ui_browser__reset_index(browser);
   break;
  case 134:
   offset = browser->rows - 1;
   if (offset >= browser->nr_entries)
    offset = browser->nr_entries - 1;

   browser->index = browser->nr_entries - 1;
   browser->top_idx = browser->index - offset;
   browser->seek(browser, -offset, SEEK_END);
   break;
  default:
  out:
   return key;
  }
 }
 return -1;
}
