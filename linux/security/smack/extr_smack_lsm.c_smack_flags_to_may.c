
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAY_EXEC ;
 int MAY_READ ;
 int MAY_WRITE ;
 int S_IRUGO ;
 int S_IWUGO ;
 int S_IXUGO ;

__attribute__((used)) static int smack_flags_to_may(int flags)
{
 int may = 0;

 if (flags & S_IRUGO)
  may |= MAY_READ;
 if (flags & S_IWUGO)
  may |= MAY_WRITE;
 if (flags & S_IXUGO)
  may |= MAY_EXEC;

 return may;
}
