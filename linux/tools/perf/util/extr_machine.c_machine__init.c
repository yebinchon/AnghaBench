
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct machine {int pid; int kptr_restrict_warned; int comm_exec; int * mmap_name; int * root_dir; int * current_tid; int * vmlinux_map; scalar_t__ kernel_start; scalar_t__ id_hdr_size; int * env; int * vdso_info; int dsos; int rb_node; int kmaps; } ;
typedef int pid_t ;
typedef int comm ;


 int ENOMEM ;
 int HOST_KERNEL_ID ;
 int RB_CLEAR_NODE (int *) ;
 int dsos__init (int *) ;
 struct thread* machine__findnew_thread (struct machine*,int,int) ;
 scalar_t__ machine__set_mmap_name (struct machine*) ;
 int machine__threads_init (struct machine*) ;
 int map_groups__init (int *,struct machine*) ;
 int memset (struct machine*,int ,int) ;
 int snprintf (char*,int,char*,int) ;
 int * strdup (char const*) ;
 int thread__put (struct thread*) ;
 int thread__set_comm (struct thread*,char*,int ) ;
 int zfree (int **) ;

int machine__init(struct machine *machine, const char *root_dir, pid_t pid)
{
 int err = -ENOMEM;

 memset(machine, 0, sizeof(*machine));
 map_groups__init(&machine->kmaps, machine);
 RB_CLEAR_NODE(&machine->rb_node);
 dsos__init(&machine->dsos);

 machine__threads_init(machine);

 machine->vdso_info = ((void*)0);
 machine->env = ((void*)0);

 machine->pid = pid;

 machine->id_hdr_size = 0;
 machine->kptr_restrict_warned = 0;
 machine->comm_exec = 0;
 machine->kernel_start = 0;
 machine->vmlinux_map = ((void*)0);

 machine->root_dir = strdup(root_dir);
 if (machine->root_dir == ((void*)0))
  return -ENOMEM;

 if (machine__set_mmap_name(machine))
  goto out;

 if (pid != HOST_KERNEL_ID) {
  struct thread *thread = machine__findnew_thread(machine, -1,
        pid);
  char comm[64];

  if (thread == ((void*)0))
   goto out;

  snprintf(comm, sizeof(comm), "[guest/%d]", pid);
  thread__set_comm(thread, comm, 0);
  thread__put(thread);
 }

 machine->current_tid = ((void*)0);
 err = 0;

out:
 if (err) {
  zfree(&machine->root_dir);
  zfree(&machine->mmap_name);
 }
 return 0;
}
