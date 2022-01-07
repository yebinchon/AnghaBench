
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {unsigned long f_flags; } ;
struct cred {int dummy; } ;


 int FILE__LOCK ;
 int FILE__WRITE ;
 unsigned long O_APPEND ;
 struct cred* current_cred () ;
 int file_has_perm (struct cred const*,struct file*,int ) ;

__attribute__((used)) static int selinux_file_fcntl(struct file *file, unsigned int cmd,
         unsigned long arg)
{
 const struct cred *cred = current_cred();
 int err = 0;

 switch (cmd) {
 case 134:
  if ((file->f_flags & O_APPEND) && !(arg & O_APPEND)) {
   err = file_has_perm(cred, file, FILE__WRITE);
   break;
  }

 case 129:
 case 128:
 case 143:
 case 140:
 case 138:
 case 139:

  err = file_has_perm(cred, file, 0);
  break;
 case 142:
 case 133:
 case 131:
 case 137:
 case 136:
 case 135:





  err = file_has_perm(cred, file, FILE__LOCK);
  break;
 }

 return err;
}
