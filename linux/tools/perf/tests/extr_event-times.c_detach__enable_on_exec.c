
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pid; } ;
struct evlist {TYPE_1__ workload; } ;


 int waitpid (int ,int *,int ) ;

__attribute__((used)) static int detach__enable_on_exec(struct evlist *evlist)
{
 waitpid(evlist->workload.pid, ((void*)0), 0);
 return 0;
}
