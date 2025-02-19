
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_de_head {int dummy; } ;
struct item_head {int dummy; } ;
struct buffer_head {int dummy; } ;


 struct reiserfs_de_head* B_I_DEH (struct buffer_head const*,struct item_head const*) ;
 int deh_location (struct reiserfs_de_head*) ;
 int ih_item_len (struct item_head const*) ;

__attribute__((used)) static inline int entry_length(const struct buffer_head *bh,
          const struct item_head *ih, int pos_in_item)
{
 struct reiserfs_de_head *deh;

 deh = B_I_DEH(bh, ih) + pos_in_item;
 if (pos_in_item)
  return deh_location(deh - 1) - deh_location(deh);

 return ih_item_len(ih) - deh_location(deh);
}
