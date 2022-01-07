
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksym {int addr; } ;



__attribute__((used)) static int ksym_cmp(const void *p1, const void *p2)
{
 return ((struct ksym *)p1)->addr - ((struct ksym *)p2)->addr;
}
