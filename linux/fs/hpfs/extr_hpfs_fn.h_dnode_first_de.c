
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void hpfs_dirent ;
struct dnode {scalar_t__ dirent; } ;



__attribute__((used)) static inline struct hpfs_dirent *dnode_first_de (struct dnode *dnode)
{
  return (void *) dnode->dirent;
}
