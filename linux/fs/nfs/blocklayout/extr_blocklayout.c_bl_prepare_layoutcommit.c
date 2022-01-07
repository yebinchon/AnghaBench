
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_layoutcommit_args {int dummy; } ;


 int ext_tree_prepare_commit (struct nfs4_layoutcommit_args*) ;

__attribute__((used)) static int
bl_prepare_layoutcommit(struct nfs4_layoutcommit_args *arg)
{
 return ext_tree_prepare_commit(arg);
}
