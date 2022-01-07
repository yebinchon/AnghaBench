
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hists {int dummy; } ;
struct TYPE_2__ {int dso_list; int field_sep; int col_width_list_str; } ;


 int BITS_PER_LONG ;
 unsigned int const hists__col_len (struct hists*,int) ;
 int hists__set_col_len (struct hists*,int,unsigned int const) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static void hists__set_unres_dso_col_len(struct hists *hists, int dso)
{
 const unsigned int unresolved_col_width = BITS_PER_LONG / 4;

 if (hists__col_len(hists, dso) < unresolved_col_width &&
     !symbol_conf.col_width_list_str && !symbol_conf.field_sep &&
     !symbol_conf.dso_list)
  hists__set_col_len(hists, dso, unresolved_col_width);
}
