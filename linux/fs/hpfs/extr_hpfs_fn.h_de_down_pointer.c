
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpfs_dirent {int length; int down; } ;
typedef int dnode_secno ;
typedef int __le32 ;


 int CHKCOND (int ,char*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline dnode_secno de_down_pointer (struct hpfs_dirent *de)
{
  CHKCOND(de->down,("HPFS: de_down_pointer: !de->down\n"));
  return le32_to_cpu(*(__le32 *) ((void *) de + le16_to_cpu(de->length) - 4));
}
