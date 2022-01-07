
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {TYPE_1__* file; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_2__ {struct bpf_prog* private_data; int * f_op; } ;


 int EBADF ;
 int EINVAL ;
 struct bpf_prog* ERR_PTR (int ) ;
 int bpf_prog_fops ;
 int fdput (struct fd) ;

__attribute__((used)) static struct bpf_prog *____bpf_prog_get(struct fd f)
{
 if (!f.file)
  return ERR_PTR(-EBADF);
 if (f.file->f_op != &bpf_prog_fops) {
  fdput(f);
  return ERR_PTR(-EINVAL);
 }

 return f.file->private_data;
}
