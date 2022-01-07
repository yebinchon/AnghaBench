
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uprobe_name; int * sdt_name; } ;


 TYPE_1__* sdt_reg_tbl ;
 int strcpy (char*,int ) ;
 int strncmp (int *,char*,int) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static void sdt_rename_register(char *sdt_reg, int sdt_len, char *uprobe_reg)
{
 int i = 0;

 for (i = 0; sdt_reg_tbl[i].sdt_name != ((void*)0); i++) {
  if (!strncmp(sdt_reg_tbl[i].sdt_name, sdt_reg, sdt_len)) {
   strcpy(uprobe_reg, sdt_reg_tbl[i].uprobe_name);
   return;
  }
 }

 strncpy(uprobe_reg, sdt_reg, sdt_len);
}
