
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {TYPE_1__* file; } ;
struct bpf_map {int dummy; } ;
struct TYPE_2__ {struct bpf_map* private_data; int * f_op; } ;


 int EBADF ;
 int EINVAL ;
 struct bpf_map* ERR_PTR (int ) ;
 int bpf_map_fops ;
 int fdput (struct fd) ;

struct bpf_map *__bpf_map_get(struct fd f)
{
 if (!f.file)
  return ERR_PTR(-EBADF);
 if (f.file->f_op != &bpf_map_fops) {
  fdput(f);
  return ERR_PTR(-EINVAL);
 }

 return f.file->private_data;
}
