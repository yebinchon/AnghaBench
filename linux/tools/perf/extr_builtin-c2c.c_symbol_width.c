
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sort_entry {int se_width_idx; } ;
struct hists {int dummy; } ;
struct TYPE_2__ {int symbol_full; } ;


 int MIN (int,int ) ;
 int SYMBOL_WIDTH ;
 TYPE_1__ c2c ;
 int hists__col_len (struct hists*,int ) ;

__attribute__((used)) static int symbol_width(struct hists *hists, struct sort_entry *se)
{
 int width = hists__col_len(hists, se->se_width_idx);

 if (!c2c.symbol_full)
  width = MIN(width, SYMBOL_WIDTH);

 return width;
}
