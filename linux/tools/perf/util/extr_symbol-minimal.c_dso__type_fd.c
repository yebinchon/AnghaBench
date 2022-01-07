
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum dso_type { ____Placeholder_dso_type } dso_type ;
typedef int ehdr ;
struct TYPE_3__ {scalar_t__ e_machine; } ;
typedef TYPE_1__ Elf64_Ehdr ;


 int DSO__TYPE_32BIT ;
 int DSO__TYPE_64BIT ;
 int DSO__TYPE_UNKNOWN ;
 int DSO__TYPE_X32BIT ;
 scalar_t__ EM_X86_64 ;
 int fd__is_64_bit (int) ;
 int readn (int,TYPE_1__*,int) ;

enum dso_type dso__type_fd(int fd)
{
 Elf64_Ehdr ehdr;
 int ret;

 ret = fd__is_64_bit(fd);
 if (ret < 0)
  return DSO__TYPE_UNKNOWN;

 if (ret)
  return DSO__TYPE_64BIT;

 if (readn(fd, &ehdr, sizeof(ehdr)) != sizeof(ehdr))
  return DSO__TYPE_UNKNOWN;

 if (ehdr.e_machine == EM_X86_64)
  return DSO__TYPE_X32BIT;

 return DSO__TYPE_32BIT;
}
