
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int features; } ;


 int AUDIT_FEATURE_TO_MASK (int) ;
 TYPE_1__ af ;

int is_audit_feature_set(int i)
{
 return af.features & AUDIT_FEATURE_TO_MASK(i);
}
