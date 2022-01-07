
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_palloc_req {void* pr_entry_nr; } ;
struct nilfs_bmap {scalar_t__ b_ptr_type; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef void* __u64 ;


 scalar_t__ NILFS_BMAP_PTR_VS ;
 int NILFS_BMAP_USE_VBN (struct nilfs_bmap*) ;
 int buffer_nilfs_volatile (struct buffer_head*) ;
 void* nilfs_bmap_data_get_key (struct nilfs_bmap*,struct buffer_head*) ;
 struct inode* nilfs_bmap_get_dat (struct nilfs_bmap*) ;
 int nilfs_dat_commit_update (struct inode*,struct nilfs_palloc_req*,struct nilfs_palloc_req*,int) ;
 int nilfs_dat_mark_dirty (struct inode*,void*) ;
 int nilfs_dat_prepare_update (struct inode*,struct nilfs_palloc_req*,struct nilfs_palloc_req*) ;
 void* nilfs_direct_get_ptr (struct nilfs_bmap*,void*) ;
 int nilfs_direct_set_ptr (struct nilfs_bmap*,void*,void*) ;
 int set_buffer_nilfs_volatile (struct buffer_head*) ;

__attribute__((used)) static int nilfs_direct_propagate(struct nilfs_bmap *bmap,
      struct buffer_head *bh)
{
 struct nilfs_palloc_req oldreq, newreq;
 struct inode *dat;
 __u64 key;
 __u64 ptr;
 int ret;

 if (!NILFS_BMAP_USE_VBN(bmap))
  return 0;

 dat = nilfs_bmap_get_dat(bmap);
 key = nilfs_bmap_data_get_key(bmap, bh);
 ptr = nilfs_direct_get_ptr(bmap, key);
 if (!buffer_nilfs_volatile(bh)) {
  oldreq.pr_entry_nr = ptr;
  newreq.pr_entry_nr = ptr;
  ret = nilfs_dat_prepare_update(dat, &oldreq, &newreq);
  if (ret < 0)
   return ret;
  nilfs_dat_commit_update(dat, &oldreq, &newreq,
     bmap->b_ptr_type == NILFS_BMAP_PTR_VS);
  set_buffer_nilfs_volatile(bh);
  nilfs_direct_set_ptr(bmap, key, newreq.pr_entry_nr);
 } else
  ret = nilfs_dat_mark_dirty(dat, ptr);

 return ret;
}
