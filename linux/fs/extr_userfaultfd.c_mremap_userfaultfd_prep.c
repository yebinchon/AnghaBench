
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_userfaultfd_ctx {struct userfaultfd_ctx* ctx; } ;
struct TYPE_2__ {struct userfaultfd_ctx* ctx; } ;
struct vm_area_struct {int vm_flags; TYPE_1__ vm_userfaultfd_ctx; } ;
struct userfaultfd_ctx {int features; int mmap_changing; } ;


 TYPE_1__ NULL_VM_UFFD_CTX ;
 int UFFD_FEATURE_EVENT_REMAP ;
 int VM_UFFD_MISSING ;
 int VM_UFFD_WP ;
 int WRITE_ONCE (int ,int) ;
 int userfaultfd_ctx_get (struct userfaultfd_ctx*) ;

void mremap_userfaultfd_prep(struct vm_area_struct *vma,
        struct vm_userfaultfd_ctx *vm_ctx)
{
 struct userfaultfd_ctx *ctx;

 ctx = vma->vm_userfaultfd_ctx.ctx;

 if (!ctx)
  return;

 if (ctx->features & UFFD_FEATURE_EVENT_REMAP) {
  vm_ctx->ctx = ctx;
  userfaultfd_ctx_get(ctx);
  WRITE_ONCE(ctx->mmap_changing, 1);
 } else {

  vma->vm_userfaultfd_ctx = NULL_VM_UFFD_CTX;
  vma->vm_flags &= ~(VM_UFFD_WP | VM_UFFD_MISSING);
 }
}
