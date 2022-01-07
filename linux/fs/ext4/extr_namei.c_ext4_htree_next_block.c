
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dx_node {scalar_t__ entries; } ;
struct dx_frame {scalar_t__ at; scalar_t__ entries; struct buffer_head* bh; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int __u32 ;


 int INDEX ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int PTR_ERR (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 int dx_get_block (scalar_t__) ;
 scalar_t__ dx_get_count (scalar_t__) ;
 int dx_get_hash (scalar_t__) ;
 struct buffer_head* ext4_read_dirblock (struct inode*,int ,int ) ;

__attribute__((used)) static int ext4_htree_next_block(struct inode *dir, __u32 hash,
     struct dx_frame *frame,
     struct dx_frame *frames,
     __u32 *start_hash)
{
 struct dx_frame *p;
 struct buffer_head *bh;
 int num_frames = 0;
 __u32 bhash;

 p = frame;







 while (1) {
  if (++(p->at) < p->entries + dx_get_count(p->entries))
   break;
  if (p == frames)
   return 0;
  num_frames++;
  p--;
 }
 bhash = dx_get_hash(p->at);
 if (start_hash)
  *start_hash = bhash;
 if ((hash & 1) == 0) {
  if ((bhash & ~1) != hash)
   return 0;
 }




 while (num_frames--) {
  bh = ext4_read_dirblock(dir, dx_get_block(p->at), INDEX);
  if (IS_ERR(bh))
   return PTR_ERR(bh);
  p++;
  brelse(p->bh);
  p->bh = bh;
  p->at = p->entries = ((struct dx_node *) bh->b_data)->entries;
 }
 return 1;
}
