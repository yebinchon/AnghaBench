
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ocfs2_dir_lookup_result {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; int d_parent; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int __ocfs2_add_entry (int *,int ,int ,int ,struct inode*,int ,struct buffer_head*,struct ocfs2_dir_lookup_result*) ;
 int d_inode (int ) ;

__attribute__((used)) static inline int ocfs2_add_entry(handle_t *handle,
      struct dentry *dentry,
      struct inode *inode, u64 blkno,
      struct buffer_head *parent_fe_bh,
      struct ocfs2_dir_lookup_result *lookup)
{
 return __ocfs2_add_entry(handle, d_inode(dentry->d_parent),
     dentry->d_name.name, dentry->d_name.len,
     inode, blkno, parent_fe_bh, lookup);
}
