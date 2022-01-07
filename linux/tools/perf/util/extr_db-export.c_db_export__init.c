
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db_export {int dummy; } ;


 int memset (struct db_export*,int ,int) ;

int db_export__init(struct db_export *dbe)
{
 memset(dbe, 0, sizeof(struct db_export));
 return 0;
}
