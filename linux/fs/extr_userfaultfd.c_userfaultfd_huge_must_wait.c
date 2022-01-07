
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct userfaultfd_ctx {int dummy; } ;



__attribute__((used)) static inline bool userfaultfd_huge_must_wait(struct userfaultfd_ctx *ctx,
      struct vm_area_struct *vma,
      unsigned long address,
      unsigned long flags,
      unsigned long reason)
{
 return 0;
}
