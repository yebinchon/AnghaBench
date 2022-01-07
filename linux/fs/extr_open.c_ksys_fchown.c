
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
struct fd {TYPE_1__* file; } ;
typedef int gid_t ;
struct TYPE_4__ {int f_path; } ;


 int EBADF ;
 int audit_file (TYPE_1__*) ;
 int chown_common (int *,int ,int ) ;
 struct fd fdget (unsigned int) ;
 int fdput (struct fd) ;
 int mnt_drop_write_file (TYPE_1__*) ;
 int mnt_want_write_file (TYPE_1__*) ;

int ksys_fchown(unsigned int fd, uid_t user, gid_t group)
{
 struct fd f = fdget(fd);
 int error = -EBADF;

 if (!f.file)
  goto out;

 error = mnt_want_write_file(f.file);
 if (error)
  goto out_fput;
 audit_file(f.file);
 error = chown_common(&f.file->f_path, user, group);
 mnt_drop_write_file(f.file);
out_fput:
 fdput(f);
out:
 return error;
}
