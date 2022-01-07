
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void hpfs_dirent ;
struct dnode {int first_free; } ;


 int CHKCOND (int,char*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline struct hpfs_dirent *dnode_end_de (struct dnode *dnode)
{
  CHKCOND(le32_to_cpu(dnode->first_free)>=0x14 && le32_to_cpu(dnode->first_free)<=0xa00,("HPFS: dnode_end_de: dnode->first_free = %x\n",(unsigned)le32_to_cpu(dnode->first_free)));
  return (void *) dnode + le32_to_cpu(dnode->first_free);
}
