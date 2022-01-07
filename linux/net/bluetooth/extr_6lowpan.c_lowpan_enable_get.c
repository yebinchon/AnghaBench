
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int enable_6lowpan ;

__attribute__((used)) static int lowpan_enable_get(void *data, u64 *val)
{
 *val = enable_6lowpan;
 return 0;
}
