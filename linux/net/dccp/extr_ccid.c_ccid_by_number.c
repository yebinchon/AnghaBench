
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ccid_operations {scalar_t__ const ccid_id; } ;


 int ARRAY_SIZE (struct ccid_operations**) ;
 struct ccid_operations** ccids ;

__attribute__((used)) static struct ccid_operations *ccid_by_number(const u8 id)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ccids); i++)
  if (ccids[i]->ccid_id == id)
   return ccids[i];
 return ((void*)0);
}
