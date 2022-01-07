
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vmx_pages {int enlightened_vmcs; int enlightened_vmcs_gpa; int shadow_vmcs_gpa; scalar_t__ shadow_vmcs; int vmcs_gpa; scalar_t__ vmcs; } ;
struct TYPE_2__ {int revision_id; } ;


 TYPE_1__* current_evmcs ;
 int enable_evmcs ;
 scalar_t__ evmcs_vmptrld (int ,int ) ;
 scalar_t__ vmclear (int ) ;
 int vmcs_revision () ;
 scalar_t__ vmptrld (int ) ;

bool load_vmcs(struct vmx_pages *vmx)
{
 if (!enable_evmcs) {

  *(uint32_t *)(vmx->vmcs) = vmcs_revision();
  if (vmclear(vmx->vmcs_gpa))
   return 0;

  if (vmptrld(vmx->vmcs_gpa))
   return 0;


  *(uint32_t *)(vmx->shadow_vmcs) =
   vmcs_revision() | 0x80000000ul;
  if (vmclear(vmx->shadow_vmcs_gpa))
   return 0;
 } else {
  if (evmcs_vmptrld(vmx->enlightened_vmcs_gpa,
      vmx->enlightened_vmcs))
   return 0;
  current_evmcs->revision_id = vmcs_revision();
 }

 return 1;
}
