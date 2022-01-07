
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_segment {int unusable; } ;


 int memset (struct kvm_segment*,int ,int) ;

__attribute__((used)) static void kvm_seg_set_unusable(struct kvm_segment *segp)
{
 memset(segp, 0, sizeof(*segp));
 segp->unusable = 1;
}
