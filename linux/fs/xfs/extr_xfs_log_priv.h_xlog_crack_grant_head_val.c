
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;



__attribute__((used)) static inline void
xlog_crack_grant_head_val(int64_t val, int *cycle, int *space)
{
 *cycle = val >> 32;
 *space = val & 0xffffffff;
}
