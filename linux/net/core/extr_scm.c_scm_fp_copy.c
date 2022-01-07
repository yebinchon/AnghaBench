
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_fp_list {size_t count; int max; int * user; struct file** fp; } ;
struct file {int dummy; } ;
struct cmsghdr {int cmsg_len; } ;


 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 int EBADF ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SCM_MAX_FD ;
 int current_user () ;
 struct file* fget_raw (int) ;
 int * get_uid (int ) ;
 struct scm_fp_list* kmalloc (int,int ) ;

__attribute__((used)) static int scm_fp_copy(struct cmsghdr *cmsg, struct scm_fp_list **fplp)
{
 int *fdp = (int*)CMSG_DATA(cmsg);
 struct scm_fp_list *fpl = *fplp;
 struct file **fpp;
 int i, num;

 num = (cmsg->cmsg_len - sizeof(struct cmsghdr))/sizeof(int);

 if (num <= 0)
  return 0;

 if (num > SCM_MAX_FD)
  return -EINVAL;

 if (!fpl)
 {
  fpl = kmalloc(sizeof(struct scm_fp_list), GFP_KERNEL);
  if (!fpl)
   return -ENOMEM;
  *fplp = fpl;
  fpl->count = 0;
  fpl->max = SCM_MAX_FD;
  fpl->user = ((void*)0);
 }
 fpp = &fpl->fp[fpl->count];

 if (fpl->count + num > fpl->max)
  return -EINVAL;





 for (i=0; i< num; i++)
 {
  int fd = fdp[i];
  struct file *file;

  if (fd < 0 || !(file = fget_raw(fd)))
   return -EBADF;
  *fpp++ = file;
  fpl->count++;
 }

 if (!fpl->user)
  fpl->user = get_uid(current_user());

 return num;
}
