
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_lock_res {scalar_t__ l_level; int l_lock; int l_lksb; } ;
struct inode {int dummy; } ;
typedef unsigned int ssize_t ;
struct TYPE_2__ {struct user_lock_res ip_lockres; } ;


 int BUG_ON (int) ;
 TYPE_1__* DLMFS_I (struct inode*) ;
 scalar_t__ DLM_LOCK_PR ;
 unsigned int DLM_LVB_LEN ;
 int memcpy (char*,char*,unsigned int) ;
 char* ocfs2_dlm_lvb (int *) ;
 scalar_t__ ocfs2_dlm_lvb_valid (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

ssize_t user_dlm_read_lvb(struct inode *inode,
     char *val,
     unsigned int len)
{
 struct user_lock_res *lockres = &DLMFS_I(inode)->ip_lockres;
 char *lvb;
 ssize_t ret = len;

 BUG_ON(len > DLM_LVB_LEN);

 spin_lock(&lockres->l_lock);

 BUG_ON(lockres->l_level < DLM_LOCK_PR);
 if (ocfs2_dlm_lvb_valid(&lockres->l_lksb)) {
  lvb = ocfs2_dlm_lvb(&lockres->l_lksb);
  memcpy(val, lvb, len);
 } else
  ret = 0;

 spin_unlock(&lockres->l_lock);
 return ret;
}
