
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int cl_clid; int cl_debugfs; } ;
typedef int name ;


 int S_IFREG ;
 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,int ,struct rpc_clnt*,int *) ;
 int do_xprt_debugfs ;
 int rpc_clnt_dir ;
 int rpc_clnt_iterate_for_each_xprt (struct rpc_clnt*,int ,int*) ;
 int snprintf (char*,int,char*,int) ;
 int tasks_fops ;

void
rpc_clnt_debugfs_register(struct rpc_clnt *clnt)
{
 int len;
 char name[9];
 int xprtnum = 0;

 len = snprintf(name, sizeof(name), "%x", clnt->cl_clid);
 if (len >= sizeof(name))
  return;


 clnt->cl_debugfs = debugfs_create_dir(name, rpc_clnt_dir);


 debugfs_create_file("tasks", S_IFREG | 0400, clnt->cl_debugfs, clnt,
       &tasks_fops);

 rpc_clnt_iterate_for_each_xprt(clnt, do_xprt_debugfs, &xprtnum);
}
