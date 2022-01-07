
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IPV4_MIN_MTU ;

__attribute__((used)) static bool inetdev_valid_mtu(unsigned int mtu)
{
 return mtu >= IPV4_MIN_MTU;
}
