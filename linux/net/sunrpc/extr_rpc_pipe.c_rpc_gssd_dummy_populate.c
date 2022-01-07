
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rpc_pipe {int dummy; } ;
struct qstr {int len; int name; } ;
struct dentry {int dummy; } ;
struct TYPE_7__ {int name; } ;
struct TYPE_6__ {int name; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 struct qstr QSTR_INIT (int ,int ) ;
 size_t RPCAUTH_gssd ;
 int __rpc_depopulate (struct dentry*,TYPE_1__*,int ,int) ;
 struct dentry* d_hash_and_lookup (struct dentry*,struct qstr*) ;
 int dput (struct dentry*) ;
 TYPE_4__* files ;
 TYPE_1__* gssd_dummy_clnt_dir ;
 TYPE_1__* gssd_dummy_info_file ;
 struct dentry* rpc_mkpipe_dentry (struct dentry*,char*,int *,struct rpc_pipe*) ;
 int rpc_populate (struct dentry*,TYPE_1__*,int ,int,int *) ;
 int strlen (int ) ;

__attribute__((used)) static struct dentry *
rpc_gssd_dummy_populate(struct dentry *root, struct rpc_pipe *pipe_data)
{
 int ret = 0;
 struct dentry *gssd_dentry;
 struct dentry *clnt_dentry = ((void*)0);
 struct dentry *pipe_dentry = ((void*)0);
 struct qstr q = QSTR_INIT(files[RPCAUTH_gssd].name,
      strlen(files[RPCAUTH_gssd].name));


 gssd_dentry = d_hash_and_lookup(root, &q);
 if (!gssd_dentry)
  return ERR_PTR(-ENOENT);

 ret = rpc_populate(gssd_dentry, gssd_dummy_clnt_dir, 0, 1, ((void*)0));
 if (ret) {
  pipe_dentry = ERR_PTR(ret);
  goto out;
 }

 q.name = gssd_dummy_clnt_dir[0].name;
 q.len = strlen(gssd_dummy_clnt_dir[0].name);
 clnt_dentry = d_hash_and_lookup(gssd_dentry, &q);
 if (!clnt_dentry) {
  pipe_dentry = ERR_PTR(-ENOENT);
  goto out;
 }

 ret = rpc_populate(clnt_dentry, gssd_dummy_info_file, 0, 1, ((void*)0));
 if (ret) {
  __rpc_depopulate(gssd_dentry, gssd_dummy_clnt_dir, 0, 1);
  pipe_dentry = ERR_PTR(ret);
  goto out;
 }

 pipe_dentry = rpc_mkpipe_dentry(clnt_dentry, "gssd", ((void*)0), pipe_data);
 if (IS_ERR(pipe_dentry)) {
  __rpc_depopulate(clnt_dentry, gssd_dummy_info_file, 0, 1);
  __rpc_depopulate(gssd_dentry, gssd_dummy_clnt_dir, 0, 1);
 }
out:
 dput(clnt_dentry);
 dput(gssd_dentry);
 return pipe_dentry;
}
