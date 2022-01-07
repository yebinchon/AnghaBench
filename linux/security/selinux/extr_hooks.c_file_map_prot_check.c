
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct file {int dummy; } ;
struct cred {int dummy; } ;


 int FILE__EXECUTE ;
 int FILE__READ ;
 int FILE__WRITE ;
 scalar_t__ IS_PRIVATE (int ) ;
 int PROCESS__EXECMEM ;
 unsigned long PROT_EXEC ;
 unsigned long PROT_WRITE ;
 int SECCLASS_PROCESS ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int cred_sid (struct cred const*) ;
 struct cred* current_cred () ;
 scalar_t__ default_noexec ;
 int file_has_perm (struct cred const*,struct file*,int ) ;
 int file_inode (struct file*) ;
 int selinux_state ;

__attribute__((used)) static int file_map_prot_check(struct file *file, unsigned long prot, int shared)
{
 const struct cred *cred = current_cred();
 u32 sid = cred_sid(cred);
 int rc = 0;

 if (default_noexec &&
     (prot & PROT_EXEC) && (!file || IS_PRIVATE(file_inode(file)) ||
       (!shared && (prot & PROT_WRITE)))) {





  rc = avc_has_perm(&selinux_state,
      sid, sid, SECCLASS_PROCESS,
      PROCESS__EXECMEM, ((void*)0));
  if (rc)
   goto error;
 }

 if (file) {

  u32 av = FILE__READ;


  if (shared && (prot & PROT_WRITE))
   av |= FILE__WRITE;

  if (prot & PROT_EXEC)
   av |= FILE__EXECUTE;

  return file_has_perm(cred, file, av);
 }

error:
 return rc;
}
