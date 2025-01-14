
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ total_free; scalar_t__ total_dirty; } ;
struct ubifs_info {scalar_t__ dark_wm; int bi; TYPE_1__ lst; } ;


 int ENOSPC ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_dump_budg (struct ubifs_info*,int *) ;
 int ubifs_dump_lprops (struct ubifs_info*) ;
 int ubifs_err (struct ubifs_info*,char*) ;

__attribute__((used)) static int check_free_space(struct ubifs_info *c)
{
 ubifs_assert(c, c->dark_wm > 0);
 if (c->lst.total_free + c->lst.total_dirty < c->dark_wm) {
  ubifs_err(c, "insufficient free space to mount in R/W mode");
  ubifs_dump_budg(c, &c->bi);
  ubifs_dump_lprops(c);
  return -ENOSPC;
 }
 return 0;
}
