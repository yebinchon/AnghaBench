
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * pdh_dentry; } ;
struct rpc_clnt {TYPE_2__ cl_pipedir_objects; int cl_count; TYPE_1__* cl_program; } ;
struct TYPE_3__ {int * pipe_dir_name; } ;




 int atomic_read (int *) ;

__attribute__((used)) static int rpc_clnt_skip_event(struct rpc_clnt *clnt, unsigned long event)
{
 if (clnt->cl_program->pipe_dir_name == ((void*)0))
  return 1;

 switch (event) {
 case 129:
  if (clnt->cl_pipedir_objects.pdh_dentry != ((void*)0))
   return 1;
  if (atomic_read(&clnt->cl_count) == 0)
   return 1;
  break;
 case 128:
  if (clnt->cl_pipedir_objects.pdh_dentry == ((void*)0))
   return 1;
  break;
 }
 return 0;
}
