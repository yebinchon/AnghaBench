
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {int dentry; } ;
struct nfs4_state {struct inode* inode; } ;
struct nfs4_label {int * member_3; int member_2; int member_1; int member_0; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;


 struct inode* ERR_CAST (struct nfs4_state*) ;
 scalar_t__ IS_ERR (struct nfs4_state*) ;
 struct nfs4_state* nfs4_do_open (struct inode*,struct nfs_open_context*,int,struct iattr*,struct nfs4_label*,int*) ;
 struct nfs4_label* nfs4_label_init_security (struct inode*,int ,struct iattr*,struct nfs4_label*) ;
 int nfs4_label_release_security (struct nfs4_label*) ;

__attribute__((used)) static struct inode *
nfs4_atomic_open(struct inode *dir, struct nfs_open_context *ctx,
  int open_flags, struct iattr *attr, int *opened)
{
 struct nfs4_state *state;
 struct nfs4_label l = {0, 0, 0, ((void*)0)}, *label = ((void*)0);

 label = nfs4_label_init_security(dir, ctx->dentry, attr, &l);


 state = nfs4_do_open(dir, ctx, open_flags, attr, label, opened);

 nfs4_label_release_security(label);

 if (IS_ERR(state))
  return ERR_CAST(state);
 return state->inode;
}
