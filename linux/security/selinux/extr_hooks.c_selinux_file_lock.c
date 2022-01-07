
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cred {int dummy; } ;


 int FILE__LOCK ;
 struct cred* current_cred () ;
 int file_has_perm (struct cred const*,struct file*,int ) ;

__attribute__((used)) static int selinux_file_lock(struct file *file, unsigned int cmd)
{
 const struct cred *cred = current_cred();

 return file_has_perm(cred, file, FILE__LOCK);
}
