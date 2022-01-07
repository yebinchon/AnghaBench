
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; int flags; } ;
struct audit_context {int type; TYPE_1__ mmap; } ;


 int AUDIT_MMAP ;
 struct audit_context* audit_context () ;

void __audit_mmap_fd(int fd, int flags)
{
 struct audit_context *context = audit_context();
 context->mmap.fd = fd;
 context->mmap.flags = flags;
 context->type = AUDIT_MMAP;
}
