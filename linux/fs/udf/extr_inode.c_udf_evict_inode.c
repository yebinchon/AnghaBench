
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * i_data; } ;
struct udf_inode_info {scalar_t__ i_alloc_type; scalar_t__ i_lenExtents; TYPE_1__ i_ext; } ;
struct inode {scalar_t__ i_size; int i_mode; int i_ino; int i_sb; int i_data; int i_nlink; } ;


 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ;
 int IS_SYNC (struct inode*) ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 int clear_inode (struct inode*) ;
 int invalidate_inode_buffers (struct inode*) ;
 int is_bad_inode (struct inode*) ;
 int kfree (int *) ;
 int truncate_inode_pages_final (int *) ;
 int udf_clear_extent_cache (struct inode*) ;
 int udf_free_inode (struct inode*) ;
 int udf_setsize (struct inode*,int ) ;
 int udf_update_inode (struct inode*,int ) ;
 int udf_warn (int ,char*,int ,int ,unsigned long long,unsigned long long) ;

void udf_evict_inode(struct inode *inode)
{
 struct udf_inode_info *iinfo = UDF_I(inode);
 int want_delete = 0;

 if (!inode->i_nlink && !is_bad_inode(inode)) {
  want_delete = 1;
  udf_setsize(inode, 0);
  udf_update_inode(inode, IS_SYNC(inode));
 }
 truncate_inode_pages_final(&inode->i_data);
 invalidate_inode_buffers(inode);
 clear_inode(inode);
 if (iinfo->i_alloc_type != ICBTAG_FLAG_AD_IN_ICB &&
     inode->i_size != iinfo->i_lenExtents) {
  udf_warn(inode->i_sb, "Inode %lu (mode %o) has inode size %llu different from extent length %llu. Filesystem need not be standards compliant.\n",
    inode->i_ino, inode->i_mode,
    (unsigned long long)inode->i_size,
    (unsigned long long)iinfo->i_lenExtents);
 }
 kfree(iinfo->i_ext.i_data);
 iinfo->i_ext.i_data = ((void*)0);
 udf_clear_extent_cache(inode);
 if (want_delete) {
  udf_free_inode(inode);
 }
}
