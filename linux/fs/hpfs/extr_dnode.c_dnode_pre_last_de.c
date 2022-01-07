
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpfs_dirent {int dummy; } ;
struct dnode {int dummy; } ;


 struct hpfs_dirent* de_next_de (struct hpfs_dirent*) ;
 struct hpfs_dirent* dnode_end_de (struct dnode*) ;
 struct hpfs_dirent* dnode_first_de (struct dnode*) ;

__attribute__((used)) static struct hpfs_dirent *dnode_pre_last_de(struct dnode *d)
{
 struct hpfs_dirent *de, *de_end, *dee = ((void*)0), *deee = ((void*)0);
 de_end = dnode_end_de(d);
 for (de = dnode_first_de(d); de < de_end; de = de_next_de(de)) {
  deee = dee; dee = de;
 }
 return deee;
}
