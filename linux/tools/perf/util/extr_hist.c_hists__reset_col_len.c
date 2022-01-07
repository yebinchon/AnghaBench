
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hists {int dummy; } ;
typedef enum hist_column { ____Placeholder_hist_column } hist_column ;


 int HISTC_NR_COLS ;
 int hists__set_col_len (struct hists*,int,int ) ;

void hists__reset_col_len(struct hists *hists)
{
 enum hist_column col;

 for (col = 0; col < HISTC_NR_COLS; ++col)
  hists__set_col_len(hists, col, 0);
}
