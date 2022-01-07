
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {TYPE_1__* file; } ;
struct btf {int refcnt; } ;
struct TYPE_2__ {struct btf* private_data; int * f_op; } ;


 int EBADF ;
 int EINVAL ;
 struct btf* ERR_PTR (int ) ;
 int btf_fops ;
 struct fd fdget (int) ;
 int fdput (struct fd) ;
 int refcount_inc (int *) ;

struct btf *btf_get_by_fd(int fd)
{
 struct btf *btf;
 struct fd f;

 f = fdget(fd);

 if (!f.file)
  return ERR_PTR(-EBADF);

 if (f.file->f_op != &btf_fops) {
  fdput(f);
  return ERR_PTR(-EINVAL);
 }

 btf = f.file->private_data;
 refcount_inc(&btf->refcnt);
 fdput(f);

 return btf;
}
