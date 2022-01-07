
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sysfs__read_ull_base (char const*,unsigned long long*,int ) ;

int sysfs__read_ull(const char *entry, unsigned long long *value)
{
 return sysfs__read_ull_base(entry, value, 0);
}
