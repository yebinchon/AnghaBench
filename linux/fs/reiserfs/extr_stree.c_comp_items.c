
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treepath {int dummy; } ;
struct item_head {int dummy; } ;
struct buffer_head {int dummy; } ;


 int B_IS_IN_TREE (struct buffer_head*) ;
 scalar_t__ B_NR_ITEMS (struct buffer_head*) ;
 int IH_SIZE ;
 scalar_t__ PATH_LAST_POSITION (struct treepath const*) ;
 struct buffer_head* PATH_PLAST_BUFFER (struct treepath const*) ;
 int memcmp (struct item_head const*,struct item_head*,int ) ;
 struct item_head* tp_item_head (struct treepath const*) ;

int comp_items(const struct item_head *stored_ih, const struct treepath *path)
{
 struct buffer_head *bh = PATH_PLAST_BUFFER(path);
 struct item_head *ih;


 if (!B_IS_IN_TREE(bh))
  return 1;


 if (PATH_LAST_POSITION(path) >= B_NR_ITEMS(bh))
  return 1;


 ih = tp_item_head(path);
 return memcmp(stored_ih, ih, IH_SIZE);
}
