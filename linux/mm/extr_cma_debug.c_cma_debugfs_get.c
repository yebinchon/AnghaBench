
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;



__attribute__((used)) static int cma_debugfs_get(void *data, u64 *val)
{
 unsigned long *p = data;

 *val = *p;

 return 0;
}
