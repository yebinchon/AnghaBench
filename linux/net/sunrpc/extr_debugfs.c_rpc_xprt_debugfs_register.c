
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int inject_disconnect; int debugfs; } ;
typedef int name ;
typedef int atomic_t ;


 int S_IFREG ;
 scalar_t__ atomic_inc_return (int *) ;
 int atomic_set (int *,int ) ;
 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,int ,struct rpc_xprt*,int *) ;
 int rpc_inject_disconnect ;
 int rpc_xprt_dir ;
 int snprintf (char*,int,char*,int) ;
 int xprt_info_fops ;

void
rpc_xprt_debugfs_register(struct rpc_xprt *xprt)
{
 int len, id;
 static atomic_t cur_id;
 char name[9];

 id = (unsigned int)atomic_inc_return(&cur_id);

 len = snprintf(name, sizeof(name), "%x", id);
 if (len >= sizeof(name))
  return;


 xprt->debugfs = debugfs_create_dir(name, rpc_xprt_dir);


 debugfs_create_file("info", S_IFREG | 0400, xprt->debugfs, xprt,
       &xprt_info_fops);

 atomic_set(&xprt->inject_disconnect, rpc_inject_disconnect);
}
