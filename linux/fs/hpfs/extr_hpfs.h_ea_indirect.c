
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extended_attribute {int flags; } ;


 int EA_indirect ;

__attribute__((used)) static inline bool ea_indirect(struct extended_attribute *ea)
{
 return ea->flags & EA_indirect;
}
