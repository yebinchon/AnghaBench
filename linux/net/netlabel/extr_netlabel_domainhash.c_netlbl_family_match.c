
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ AF_UNSPEC ;

__attribute__((used)) static bool netlbl_family_match(u16 f1, u16 f2)
{
 return (f1 == f2) || (f1 == AF_UNSPEC) || (f2 == AF_UNSPEC);
}
