
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct modsig {int dummy; } ;
struct integrity_iint_cache {int flags; int measured_pcrs; int atomic_flags; int mutex; } ;
struct inode {TYPE_1__* i_sb; int i_mode; } ;
struct ima_template_desc {int name; } ;
struct file {int f_flags; int f_mode; int f_path; } ;
struct evm_ima_xattr_data {scalar_t__ type; } ;
struct cred {int dummy; } ;
typedef int loff_t ;
typedef enum ima_hooks { ____Placeholder_ima_hooks } ima_hooks ;
typedef enum hash_algo { ____Placeholder_hash_algo } hash_algo ;
struct TYPE_2__ {int s_iflags; } ;


 int CONFIG_IMA_MEASURE_PCR_IDX ;
 int EACCES ;
 int EBADF ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ EVM_IMA_XATTR_DIGSIG ;
 int FILE_CHECK ;
 int FMODE_WRITE ;
 int IMA_ACTION_FLAGS ;
 int IMA_APPRAISE ;
 int IMA_APPRAISED ;
 int IMA_APPRAISED_SUBMASK ;
 int IMA_APPRAISE_ENFORCE ;
 int IMA_APPRAISE_SUBMASK ;
 int IMA_AUDIT ;
 int IMA_CHANGE_ATTR ;
 int IMA_CHANGE_XATTR ;
 int IMA_DIGSIG ;
 int IMA_DONE_MASK ;
 int IMA_DO_MASK ;
 int IMA_FAIL_UNVERIFIABLE_SIGS ;
 int IMA_FILE_APPRAISE ;
 int IMA_HASH ;
 int IMA_HASHED ;
 int IMA_MEASURE ;
 int IMA_MEASURED ;
 int IMA_MODSIG_ALLOWED ;
 int IMA_NEW_FILE ;
 int IMA_PERMIT_DIRECTIO ;
 int IMA_TEMPLATE_IMA_NAME ;
 int IMA_UPDATE_XATTR ;
 int MAY_WRITE ;
 int MMAP_CHECK ;
 int NAME_MAX ;
 int O_DIRECT ;
 int SB_I_IMA_UNVERIFIABLE_SIGNATURE ;
 int SB_I_UNTRUSTED_MOUNTER ;
 int S_ISREG (int ) ;
 int __putname (char*) ;
 int file_dentry (struct file*) ;
 struct inode* file_inode (struct file*) ;
 int ima_appraise ;
 int ima_appraise_measurement (int,struct integrity_iint_cache*,struct file*,char const*,struct evm_ima_xattr_data*,int,struct modsig*) ;
 int ima_audit_measurement (struct integrity_iint_cache*,char const*) ;
 int ima_collect_measurement (struct integrity_iint_cache*,struct file*,char*,int ,int,struct modsig*) ;
 char* ima_d_path (int *,char**,char*) ;
 int ima_free_modsig (struct modsig*) ;
 int ima_get_action (struct inode*,struct cred const*,int ,int,int,int*,struct ima_template_desc**) ;
 int ima_get_cache_status (struct integrity_iint_cache*,int) ;
 int ima_get_hash_algo (struct evm_ima_xattr_data*,int) ;
 int ima_policy_flag ;
 int ima_rdwr_violation_check (struct file*,struct integrity_iint_cache*,int,char**,char const**,char*) ;
 int ima_read_modsig (int,char*,int ,struct modsig**) ;
 int ima_read_xattr (int ,struct evm_ima_xattr_data**) ;
 int ima_store_measurement (struct integrity_iint_cache*,struct file*,char const*,struct evm_ima_xattr_data*,int,struct modsig*,int,struct ima_template_desc*) ;
 scalar_t__ ima_template_has_modsig (struct ima_template_desc*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 struct integrity_iint_cache* integrity_inode_get (struct inode*) ;
 int kfree (struct evm_ima_xattr_data*) ;
 int mmap_violation_check (int,struct file*,char**,char const**,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ strcmp (int ,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int process_measurement(struct file *file, const struct cred *cred,
          u32 secid, char *buf, loff_t size, int mask,
          enum ima_hooks func)
{
 struct inode *inode = file_inode(file);
 struct integrity_iint_cache *iint = ((void*)0);
 struct ima_template_desc *template_desc = ((void*)0);
 char *pathbuf = ((void*)0);
 char filename[NAME_MAX];
 const char *pathname = ((void*)0);
 int rc = 0, action, must_appraise = 0;
 int pcr = CONFIG_IMA_MEASURE_PCR_IDX;
 struct evm_ima_xattr_data *xattr_value = ((void*)0);
 struct modsig *modsig = ((void*)0);
 int xattr_len = 0;
 bool violation_check;
 enum hash_algo hash_algo;

 if (!ima_policy_flag || !S_ISREG(inode->i_mode))
  return 0;





 action = ima_get_action(inode, cred, secid, mask, func, &pcr,
    &template_desc);
 violation_check = ((func == FILE_CHECK || func == MMAP_CHECK) &&
      (ima_policy_flag & IMA_MEASURE));
 if (!action && !violation_check)
  return 0;

 must_appraise = action & IMA_APPRAISE;


 if (action & IMA_FILE_APPRAISE)
  func = FILE_CHECK;

 inode_lock(inode);

 if (action) {
  iint = integrity_inode_get(inode);
  if (!iint)
   rc = -ENOMEM;
 }

 if (!rc && violation_check)
  ima_rdwr_violation_check(file, iint, action & IMA_MEASURE,
      &pathbuf, &pathname, filename);

 inode_unlock(inode);

 if (rc)
  goto out;
 if (!action)
  goto out;

 mutex_lock(&iint->mutex);

 if (test_and_clear_bit(IMA_CHANGE_ATTR, &iint->atomic_flags))

  iint->flags &= ~(IMA_APPRAISE | IMA_APPRAISED |
     IMA_APPRAISE_SUBMASK | IMA_APPRAISED_SUBMASK |
     IMA_ACTION_FLAGS);






 if (test_and_clear_bit(IMA_CHANGE_XATTR, &iint->atomic_flags) ||
     ((inode->i_sb->s_iflags & SB_I_IMA_UNVERIFIABLE_SIGNATURE) &&
      !(inode->i_sb->s_iflags & SB_I_UNTRUSTED_MOUNTER) &&
      !(action & IMA_FAIL_UNVERIFIABLE_SIGS))) {
  iint->flags &= ~IMA_DONE_MASK;
  iint->measured_pcrs = 0;
 }





 iint->flags |= action;
 action &= IMA_DO_MASK;
 action &= ~((iint->flags & (IMA_DONE_MASK ^ IMA_MEASURED)) >> 1);


 if ((action & IMA_MEASURE) && (iint->measured_pcrs & (0x1 << pcr)))
  action ^= IMA_MEASURE;


 if ((action & IMA_HASH) &&
     !(test_bit(IMA_DIGSIG, &iint->atomic_flags))) {
  xattr_len = ima_read_xattr(file_dentry(file), &xattr_value);
  if ((xattr_value && xattr_len > 2) &&
      (xattr_value->type == EVM_IMA_XATTR_DIGSIG))
   set_bit(IMA_DIGSIG, &iint->atomic_flags);
  iint->flags |= IMA_HASHED;
  action ^= IMA_HASH;
  set_bit(IMA_UPDATE_XATTR, &iint->atomic_flags);
 }


 if (!action) {
  if (must_appraise) {
   rc = mmap_violation_check(func, file, &pathbuf,
        &pathname, filename);
   if (!rc)
    rc = ima_get_cache_status(iint, func);
  }
  goto out_locked;
 }

 if ((action & IMA_APPRAISE_SUBMASK) ||
     strcmp(template_desc->name, IMA_TEMPLATE_IMA_NAME) != 0) {

  xattr_len = ima_read_xattr(file_dentry(file), &xattr_value);






  if (iint->flags & IMA_MODSIG_ALLOWED) {
   rc = ima_read_modsig(func, buf, size, &modsig);

   if (!rc && ima_template_has_modsig(template_desc) &&
       iint->flags & IMA_MEASURED)
    action |= IMA_MEASURE;
  }
 }

 hash_algo = ima_get_hash_algo(xattr_value, xattr_len);

 rc = ima_collect_measurement(iint, file, buf, size, hash_algo, modsig);
 if (rc != 0 && rc != -EBADF && rc != -EINVAL)
  goto out_locked;

 if (!pathbuf)
  pathname = ima_d_path(&file->f_path, &pathbuf, filename);

 if (action & IMA_MEASURE)
  ima_store_measurement(iint, file, pathname,
          xattr_value, xattr_len, modsig, pcr,
          template_desc);
 if (rc == 0 && (action & IMA_APPRAISE_SUBMASK)) {
  inode_lock(inode);
  rc = ima_appraise_measurement(func, iint, file, pathname,
           xattr_value, xattr_len, modsig);
  inode_unlock(inode);
  if (!rc)
   rc = mmap_violation_check(func, file, &pathbuf,
        &pathname, filename);
 }
 if (action & IMA_AUDIT)
  ima_audit_measurement(iint, pathname);

 if ((file->f_flags & O_DIRECT) && (iint->flags & IMA_PERMIT_DIRECTIO))
  rc = 0;
out_locked:
 if ((mask & MAY_WRITE) && test_bit(IMA_DIGSIG, &iint->atomic_flags) &&
      !(iint->flags & IMA_NEW_FILE))
  rc = -EACCES;
 mutex_unlock(&iint->mutex);
 kfree(xattr_value);
 ima_free_modsig(modsig);
out:
 if (pathbuf)
  __putname(pathbuf);
 if (must_appraise) {
  if (rc && (ima_appraise & IMA_APPRAISE_ENFORCE))
   return -EACCES;
  if (file->f_mode & FMODE_WRITE)
   set_bit(IMA_UPDATE_XATTR, &iint->atomic_flags);
 }
 return 0;
}
