
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int e_ident ;


 size_t EI_CLASS ;
 int EI_NIDENT ;
 size_t EI_VERSION ;
 scalar_t__ ELFCLASS64 ;
 int ELFMAG ;
 scalar_t__ EV_CURRENT ;
 int SEEK_SET ;
 int SELFMAG ;
 scalar_t__ lseek (int,int ,int ) ;
 scalar_t__ memcmp (scalar_t__*,int ,int ) ;
 int readn (int,scalar_t__*,int) ;

__attribute__((used)) static int fd__is_64_bit(int fd)
{
 u8 e_ident[EI_NIDENT];

 if (lseek(fd, 0, SEEK_SET))
  return -1;

 if (readn(fd, e_ident, sizeof(e_ident)) != sizeof(e_ident))
  return -1;

 if (memcmp(e_ident, ELFMAG, SELFMAG) ||
     e_ident[EI_VERSION] != EV_CURRENT)
  return -1;

 return e_ident[EI_CLASS] == ELFCLASS64;
}
