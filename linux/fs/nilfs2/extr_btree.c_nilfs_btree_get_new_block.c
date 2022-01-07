
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_bmap {int dummy; } ;
struct buffer_head {int dummy; } ;
struct address_space {int dummy; } ;
typedef int __u64 ;
struct TYPE_2__ {struct address_space i_btnode_cache; } ;


 int ENOMEM ;
 TYPE_1__* NILFS_BMAP_I (struct nilfs_bmap const*) ;
 struct buffer_head* nilfs_btnode_create_block (struct address_space*,int ) ;
 int set_buffer_nilfs_volatile (struct buffer_head*) ;

__attribute__((used)) static int nilfs_btree_get_new_block(const struct nilfs_bmap *btree,
         __u64 ptr, struct buffer_head **bhp)
{
 struct address_space *btnc = &NILFS_BMAP_I(btree)->i_btnode_cache;
 struct buffer_head *bh;

 bh = nilfs_btnode_create_block(btnc, ptr);
 if (!bh)
  return -ENOMEM;

 set_buffer_nilfs_volatile(bh);
 *bhp = bh;
 return 0;
}
