
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int handle_t ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int EXT4_HT_INODE ;
 int EXT4_INODE_EXTENTS ;
 int EXT4_STATE_VERITY_IN_PROGRESS ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dquot_initialize (struct inode*) ;
 int ext4_convert_inline_data (struct inode*) ;
 int ext4_inode_attach_jinode (struct inode*) ;
 int * ext4_journal_start (struct inode*,int ,int const) ;
 int ext4_journal_stop (int *) ;
 int ext4_orphan_add (int *,struct inode*) ;
 int ext4_set_inode_state (struct inode*,int ) ;
 int ext4_test_inode_flag (struct inode*,int ) ;
 int ext4_truncate (struct inode*) ;
 scalar_t__ ext4_verity_in_progress (struct inode*) ;
 int ext4_warning_inode (struct inode*,char*) ;
 struct inode* file_inode (struct file*) ;

__attribute__((used)) static int ext4_begin_enable_verity(struct file *filp)
{
 struct inode *inode = file_inode(filp);
 const int credits = 2;
 handle_t *handle;
 int err;

 if (ext4_verity_in_progress(inode))
  return -EBUSY;







 err = ext4_inode_attach_jinode(inode);
 if (err)
  return err;

 err = dquot_initialize(inode);
 if (err)
  return err;

 err = ext4_convert_inline_data(inode);
 if (err)
  return err;

 if (!ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS)) {
  ext4_warning_inode(inode,
       "verity is only allowed on extent-based files");
  return -EOPNOTSUPP;
 }





 err = ext4_truncate(inode);
 if (err)
  return err;

 handle = ext4_journal_start(inode, EXT4_HT_INODE, credits);
 if (IS_ERR(handle))
  return PTR_ERR(handle);

 err = ext4_orphan_add(handle, inode);
 if (err == 0)
  ext4_set_inode_state(inode, EXT4_STATE_VERITY_IN_PROGRESS);

 ext4_journal_stop(handle);
 return err;
}
