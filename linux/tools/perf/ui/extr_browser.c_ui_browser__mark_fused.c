
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {unsigned int top_idx; } ;


 int SLSMG_LTEE_CHAR ;
 int SLSMG_ULCORN_CHAR ;
 int SLsmg_draw_hline (int) ;
 int SLsmg_set_char_set (int) ;
 int SLsmg_write_char (int ) ;
 int ui_browser__gotorc (struct ui_browser*,unsigned int,unsigned int) ;

void ui_browser__mark_fused(struct ui_browser *browser, unsigned int column,
       unsigned int row, bool arrow_down)
{
 unsigned int end_row;

 if (row >= browser->top_idx)
  end_row = row - browser->top_idx;
 else
  return;

 SLsmg_set_char_set(1);

 if (arrow_down) {
  ui_browser__gotorc(browser, end_row, column - 1);
  SLsmg_write_char(SLSMG_ULCORN_CHAR);
  ui_browser__gotorc(browser, end_row, column);
  SLsmg_draw_hline(2);
  ui_browser__gotorc(browser, end_row + 1, column - 1);
  SLsmg_write_char(SLSMG_LTEE_CHAR);
 } else {
  ui_browser__gotorc(browser, end_row, column - 1);
  SLsmg_write_char(SLSMG_LTEE_CHAR);
  ui_browser__gotorc(browser, end_row, column);
  SLsmg_draw_hline(2);
 }

 SLsmg_set_char_set(0);
}
