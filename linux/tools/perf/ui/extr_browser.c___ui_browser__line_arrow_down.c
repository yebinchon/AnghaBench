
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ui_browser {scalar_t__ top_idx; int rows; } ;


 int SLSMG_HLINE_CHAR ;
 int SLSMG_LLCORN_CHAR ;
 int SLSMG_RARROW_CHAR ;
 int SLSMG_ULCORN_CHAR ;
 int SLsmg_draw_hline (int) ;
 int SLsmg_draw_vline (unsigned int) ;
 int SLsmg_set_char_set (int) ;
 int SLsmg_write_char (int ) ;
 int ui_browser__gotorc (struct ui_browser*,unsigned int,unsigned int) ;

__attribute__((used)) static void __ui_browser__line_arrow_down(struct ui_browser *browser,
       unsigned int column,
       u64 start, u64 end)
{
 unsigned int row, end_row;

 SLsmg_set_char_set(1);

 if (start >= browser->top_idx) {
  row = start - browser->top_idx;
  ui_browser__gotorc(browser, row, column);
  SLsmg_write_char(SLSMG_ULCORN_CHAR);
  ui_browser__gotorc(browser, row, column + 1);
  SLsmg_draw_hline(2);

  if (++row == 0)
   goto out;
 } else
  row = 0;

 if (end >= browser->top_idx + browser->rows)
  end_row = browser->rows - 1;
 else
  end_row = end - browser->top_idx;

 ui_browser__gotorc(browser, row, column);
 SLsmg_draw_vline(end_row - row + 1);

 ui_browser__gotorc(browser, end_row, column);
 if (end < browser->top_idx + browser->rows) {
  SLsmg_write_char(SLSMG_LLCORN_CHAR);
  ui_browser__gotorc(browser, end_row, column + 1);
  SLsmg_write_char(SLSMG_HLINE_CHAR);
  ui_browser__gotorc(browser, end_row, column + 2);
  SLsmg_write_char(SLSMG_RARROW_CHAR);
 }
out:
 SLsmg_set_char_set(0);
}
