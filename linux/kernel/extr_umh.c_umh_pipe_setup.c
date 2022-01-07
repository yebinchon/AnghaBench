
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umh_info {struct file* pipe_from_umh; struct file* pipe_to_umh; } ;
struct subprocess_info {struct umh_info* data; } ;
struct file {int dummy; } ;
struct cred {int dummy; } ;


 int create_pipe_files (struct file**,int ) ;
 int fput (struct file*) ;
 int replace_fd (int,struct file*,int ) ;

__attribute__((used)) static int umh_pipe_setup(struct subprocess_info *info, struct cred *new)
{
 struct umh_info *umh_info = info->data;
 struct file *from_umh[2];
 struct file *to_umh[2];
 int err;


 err = create_pipe_files(to_umh, 0);
 if (err)
  return err;
 err = replace_fd(0, to_umh[0], 0);
 fput(to_umh[0]);
 if (err < 0) {
  fput(to_umh[1]);
  return err;
 }


 err = create_pipe_files(from_umh, 0);
 if (err) {
  fput(to_umh[1]);
  replace_fd(0, ((void*)0), 0);
  return err;
 }
 err = replace_fd(1, from_umh[1], 0);
 fput(from_umh[1]);
 if (err < 0) {
  fput(to_umh[1]);
  replace_fd(0, ((void*)0), 0);
  fput(from_umh[0]);
  return err;
 }

 umh_info->pipe_to_umh = to_umh[1];
 umh_info->pipe_from_umh = from_umh[0];
 return 0;
}
