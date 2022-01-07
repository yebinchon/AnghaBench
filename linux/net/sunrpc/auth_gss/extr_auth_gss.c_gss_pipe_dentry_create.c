
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_pipe_dir_object {struct gss_pipe* pdo_data; } ;
struct gss_pipe {TYPE_1__* pipe; int clnt; int name; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct dentry* dentry; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 struct dentry* rpc_mkpipe_dentry (struct dentry*,int ,int ,TYPE_1__*) ;

__attribute__((used)) static int gss_pipe_dentry_create(struct dentry *dir,
  struct rpc_pipe_dir_object *pdo)
{
 struct gss_pipe *p = pdo->pdo_data;
 struct dentry *dentry;

 dentry = rpc_mkpipe_dentry(dir, p->name, p->clnt, p->pipe);
 if (IS_ERR(dentry))
  return PTR_ERR(dentry);
 p->pipe->dentry = dentry;
 return 0;
}
