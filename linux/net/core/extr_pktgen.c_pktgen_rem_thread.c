
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pktgen_thread {TYPE_2__* net; TYPE_1__* tsk; } ;
struct TYPE_4__ {int proc_dir; } ;
struct TYPE_3__ {int comm; } ;


 int remove_proc_entry (int ,int ) ;

__attribute__((used)) static void pktgen_rem_thread(struct pktgen_thread *t)
{

 remove_proc_entry(t->tsk->comm, t->net->proc_dir);
}
