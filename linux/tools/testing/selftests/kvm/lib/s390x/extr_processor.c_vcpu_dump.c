
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char* uint8_t ;
typedef int uint32_t ;
struct vcpu {TYPE_1__* state; } ;
struct kvm_vm {struct vcpu* vcpu_head; } ;
struct TYPE_2__ {int psw_addr; int psw_mask; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*,char*,int ,int ) ;

void vcpu_dump(FILE *stream, struct kvm_vm *vm, uint32_t vcpuid, uint8_t indent)
{
 struct vcpu *vcpu = vm->vcpu_head;

 fprintf(stream, "%*spstate: psw: 0x%.16llx:0x%.16llx\n",
  indent, "", vcpu->state->psw_mask, vcpu->state->psw_addr);
}
