
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ent32_p; } ;
struct fat_entry {TYPE_1__ u; } ;


 int BAD_FAT32 ;
 int FAT_ENT_EOF ;
 int WARN_ON (unsigned long) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int fat32_ent_get(struct fat_entry *fatent)
{
 int next = le32_to_cpu(*fatent->u.ent32_p) & 0x0fffffff;
 WARN_ON((unsigned long)fatent->u.ent32_p & (4 - 1));
 if (next >= BAD_FAT32)
  next = FAT_ENT_EOF;
 return next;
}
