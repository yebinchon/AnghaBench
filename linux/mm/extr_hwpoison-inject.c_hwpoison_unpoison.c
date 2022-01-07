
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CAP_SYS_ADMIN ;
 int EPERM ;
 int capable (int ) ;
 int unpoison_memory (int ) ;

__attribute__((used)) static int hwpoison_unpoison(void *data, u64 val)
{
 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 return unpoison_memory(val);
}
