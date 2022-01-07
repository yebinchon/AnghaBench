
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_context {unsigned int major; int * argv; int arch; } ;


 int ACC_MODE (int ) ;
 int AUDIT_CLASS_CHATTR ;
 int AUDIT_CLASS_CHATTR_32 ;
 int AUDIT_CLASS_READ ;
 int AUDIT_CLASS_READ_32 ;
 int AUDIT_CLASS_WRITE ;
 int AUDIT_CLASS_WRITE_32 ;
 int AUDIT_PERM_ATTR ;
 int AUDIT_PERM_EXEC ;
 int AUDIT_PERM_READ ;
 int AUDIT_PERM_WRITE ;
 int SYS_BIND ;
 int audit_classify_syscall (int ,unsigned int) ;
 int audit_match_class (int ,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int audit_match_perm(struct audit_context *ctx, int mask)
{
 unsigned n;
 if (unlikely(!ctx))
  return 0;
 n = ctx->major;

 switch (audit_classify_syscall(ctx->arch, n)) {
 case 0:
  if ((mask & AUDIT_PERM_WRITE) &&
       audit_match_class(AUDIT_CLASS_WRITE, n))
   return 1;
  if ((mask & AUDIT_PERM_READ) &&
       audit_match_class(AUDIT_CLASS_READ, n))
   return 1;
  if ((mask & AUDIT_PERM_ATTR) &&
       audit_match_class(AUDIT_CLASS_CHATTR, n))
   return 1;
  return 0;
 case 1:
  if ((mask & AUDIT_PERM_WRITE) &&
       audit_match_class(AUDIT_CLASS_WRITE_32, n))
   return 1;
  if ((mask & AUDIT_PERM_READ) &&
       audit_match_class(AUDIT_CLASS_READ_32, n))
   return 1;
  if ((mask & AUDIT_PERM_ATTR) &&
       audit_match_class(AUDIT_CLASS_CHATTR_32, n))
   return 1;
  return 0;
 case 2:
  return mask & ACC_MODE(ctx->argv[1]);
 case 3:
  return mask & ACC_MODE(ctx->argv[2]);
 case 4:
  return ((mask & AUDIT_PERM_WRITE) && ctx->argv[0] == SYS_BIND);
 case 5:
  return mask & AUDIT_PERM_EXEC;
 default:
  return 0;
 }
}
