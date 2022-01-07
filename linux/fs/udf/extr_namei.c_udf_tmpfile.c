
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
struct TYPE_3__ {int * a_ops; } ;
struct inode {int * i_fop; int * i_op; TYPE_1__ i_data; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {scalar_t__ i_alloc_type; } ;


 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 TYPE_2__* UDF_I (struct inode*) ;
 int d_tmpfile (struct dentry*,struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int udf_adinicb_aops ;
 int udf_aops ;
 int udf_file_inode_operations ;
 int udf_file_operations ;
 struct inode* udf_new_inode (struct inode*,int ) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static int udf_tmpfile(struct inode *dir, struct dentry *dentry, umode_t mode)
{
 struct inode *inode = udf_new_inode(dir, mode);

 if (IS_ERR(inode))
  return PTR_ERR(inode);

 if (UDF_I(inode)->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB)
  inode->i_data.a_ops = &udf_adinicb_aops;
 else
  inode->i_data.a_ops = &udf_aops;
 inode->i_op = &udf_file_inode_operations;
 inode->i_fop = &udf_file_operations;
 mark_inode_dirty(inode);
 d_tmpfile(dentry, inode);
 unlock_new_inode(inode);
 return 0;
}
