
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAP_NET_ADMIN ;
 int EPERM ;
 scalar_t__ IW_IS_SET (unsigned int) ;
 unsigned int SIOCGIWENCODE ;
 unsigned int SIOCGIWENCODEEXT ;
 int capable (int ) ;

__attribute__((used)) static int wext_permission_check(unsigned int cmd)
{
 if ((IW_IS_SET(cmd) || cmd == SIOCGIWENCODE ||
      cmd == SIOCGIWENCODEEXT) &&
     !capable(CAP_NET_ADMIN))
  return -EPERM;

 return 0;
}
