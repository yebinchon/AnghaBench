
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fault_attr {int dummy; } ;



__attribute__((used)) static inline bool fail_stacktrace(struct fault_attr *attr)
{
 return 1;
}
