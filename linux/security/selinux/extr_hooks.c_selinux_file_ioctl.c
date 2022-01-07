
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct file {int dummy; } ;
struct cred {int dummy; } ;


 int CAP_OPT_NONE ;
 int CAP_SYS_TTY_CONFIG ;


 int FILE__GETATTR ;
 int FILE__IOCTL ;
 int FILE__SETATTR ;
 int cred_has_capability (struct cred const*,int ,int ,int) ;
 struct cred* current_cred () ;
 int file_has_perm (struct cred const*,struct file*,int ) ;
 int ioctl_has_perm (struct cred const*,struct file*,int ,int ) ;

__attribute__((used)) static int selinux_file_ioctl(struct file *file, unsigned int cmd,
         unsigned long arg)
{
 const struct cred *cred = current_cred();
 int error = 0;

 switch (cmd) {
 case 134:

 case 138:

 case 137:

 case 133:

 case 132:
  error = file_has_perm(cred, file, FILE__GETATTR);
  break;

 case 131:

 case 130:
  error = file_has_perm(cred, file, FILE__SETATTR);
  break;


 case 135:

 case 136:
  error = file_has_perm(cred, file, 0);
  break;

 case 129:
 case 128:
  error = cred_has_capability(cred, CAP_SYS_TTY_CONFIG,
         CAP_OPT_NONE, 1);
  break;




 default:
  error = ioctl_has_perm(cred, file, FILE__IOCTL, (u16) cmd);
 }
 return error;
}
