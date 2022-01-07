
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_lock_res_ops {int dummy; } ;
struct ocfs2_lock_res {int l_name; } ;
struct inode {int i_sb; } ;
typedef enum ocfs2_lock_type { ____Placeholder_ocfs2_lock_type } ocfs2_lock_type ;
struct TYPE_2__ {int ip_blkno; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;



 int OCFS2_SB (int ) ;
 int mlog_bug_on_msg (int,char*,int) ;
 int ocfs2_build_lock_name (int,int ,unsigned int,int ) ;
 struct ocfs2_lock_res_ops ocfs2_inode_inode_lops ;
 struct ocfs2_lock_res_ops ocfs2_inode_open_lops ;
 struct ocfs2_lock_res_ops ocfs2_inode_rw_lops ;
 int ocfs2_lock_res_init_common (int ,struct ocfs2_lock_res*,int,struct ocfs2_lock_res_ops*,struct inode*) ;

void ocfs2_inode_lock_res_init(struct ocfs2_lock_res *res,
          enum ocfs2_lock_type type,
          unsigned int generation,
          struct inode *inode)
{
 struct ocfs2_lock_res_ops *ops;

 switch(type) {
  case 128:
   ops = &ocfs2_inode_rw_lops;
   break;
  case 130:
   ops = &ocfs2_inode_inode_lops;
   break;
  case 129:
   ops = &ocfs2_inode_open_lops;
   break;
  default:
   mlog_bug_on_msg(1, "type: %d\n", type);
   ops = ((void*)0);
   break;
 };

 ocfs2_build_lock_name(type, OCFS2_I(inode)->ip_blkno,
         generation, res->l_name);
 ocfs2_lock_res_init_common(OCFS2_SB(inode->i_sb), res, type, ops, inode);
}
