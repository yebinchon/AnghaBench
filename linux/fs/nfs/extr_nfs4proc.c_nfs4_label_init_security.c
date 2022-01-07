
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_label {int dummy; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {int dummy; } ;



__attribute__((used)) static inline struct nfs4_label *
nfs4_label_init_security(struct inode *dir, struct dentry *dentry,
 struct iattr *sattr, struct nfs4_label *l)
{ return ((void*)0); }
