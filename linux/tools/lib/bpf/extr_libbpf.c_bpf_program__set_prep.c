
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; int* fds; } ;
struct bpf_program {scalar_t__ preprocessor; TYPE_1__ instances; } ;
typedef scalar_t__ bpf_program_prep_t ;


 int EINVAL ;
 int ENOMEM ;
 int* malloc (int) ;
 int memset (int*,int,int) ;
 int pr_warning (char*) ;

int bpf_program__set_prep(struct bpf_program *prog, int nr_instances,
     bpf_program_prep_t prep)
{
 int *instances_fds;

 if (nr_instances <= 0 || !prep)
  return -EINVAL;

 if (prog->instances.nr > 0 || prog->instances.fds) {
  pr_warning("Can't set pre-processor after loading\n");
  return -EINVAL;
 }

 instances_fds = malloc(sizeof(int) * nr_instances);
 if (!instances_fds) {
  pr_warning("alloc memory failed for fds\n");
  return -ENOMEM;
 }


 memset(instances_fds, -1, sizeof(int) * nr_instances);

 prog->instances.nr = nr_instances;
 prog->instances.fds = instances_fds;
 prog->preprocessor = prep;
 return 0;
}
