
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ APIC_BASE_MSR ;
 int APIC_DEST_SELF ;
 int APIC_DM_SMI ;
 int APIC_ICR ;
 int APIC_INT_ASSERT ;
 int wrmsr (scalar_t__,int) ;

void self_smi(void)
{
 wrmsr(APIC_BASE_MSR + (APIC_ICR >> 4),
       APIC_DEST_SELF | APIC_INT_ASSERT | APIC_DM_SMI);
}
