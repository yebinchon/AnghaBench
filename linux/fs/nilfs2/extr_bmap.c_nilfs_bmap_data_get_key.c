
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_bmap {TYPE_1__* b_inode; } ;
typedef struct buffer_head {struct buffer_head const* b_this_page; int b_page; } const buffer_head ;
typedef int __u64 ;
struct TYPE_2__ {int i_blkbits; } ;


 int PAGE_SHIFT ;
 struct buffer_head const* page_buffers (int ) ;
 int page_index (int ) ;

__u64 nilfs_bmap_data_get_key(const struct nilfs_bmap *bmap,
         const struct buffer_head *bh)
{
 struct buffer_head *pbh;
 __u64 key;

 key = page_index(bh->b_page) << (PAGE_SHIFT -
      bmap->b_inode->i_blkbits);
 for (pbh = page_buffers(bh->b_page); pbh != bh; pbh = pbh->b_this_page)
  key++;

 return key;
}
