
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum kmsg_dump_reason { ____Placeholder_kmsg_dump_reason } kmsg_dump_reason ;




 scalar_t__ in_nmi () ;

__attribute__((used)) static bool pstore_cannot_wait(enum kmsg_dump_reason reason)
{

 if (in_nmi())
  return 1;

 switch (reason) {

 case 128:

 case 129:
  return 1;
 default:
  return 0;
 }
}
