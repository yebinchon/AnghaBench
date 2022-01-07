
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;



__attribute__((used)) static inline int64_t
xlog_assign_grant_head_val(int cycle, int space)
{
 return ((int64_t)cycle << 32) | space;
}
