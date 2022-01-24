#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct audit_context {unsigned int major; int /*<<< orphan*/ * argv; int /*<<< orphan*/  arch; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AUDIT_CLASS_CHATTR ; 
 int /*<<< orphan*/  AUDIT_CLASS_CHATTR_32 ; 
 int /*<<< orphan*/  AUDIT_CLASS_READ ; 
 int /*<<< orphan*/  AUDIT_CLASS_READ_32 ; 
 int /*<<< orphan*/  AUDIT_CLASS_WRITE ; 
 int /*<<< orphan*/  AUDIT_CLASS_WRITE_32 ; 
 int AUDIT_PERM_ATTR ; 
 int AUDIT_PERM_EXEC ; 
 int AUDIT_PERM_READ ; 
 int AUDIT_PERM_WRITE ; 
 int /*<<< orphan*/  SYS_BIND ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct audit_context *ctx, int mask)
{
	unsigned n;
	if (FUNC3(!ctx))
		return 0;
	n = ctx->major;

	switch (FUNC1(ctx->arch, n)) {
	case 0:	/* native */
		if ((mask & AUDIT_PERM_WRITE) &&
		     FUNC2(AUDIT_CLASS_WRITE, n))
			return 1;
		if ((mask & AUDIT_PERM_READ) &&
		     FUNC2(AUDIT_CLASS_READ, n))
			return 1;
		if ((mask & AUDIT_PERM_ATTR) &&
		     FUNC2(AUDIT_CLASS_CHATTR, n))
			return 1;
		return 0;
	case 1: /* 32bit on biarch */
		if ((mask & AUDIT_PERM_WRITE) &&
		     FUNC2(AUDIT_CLASS_WRITE_32, n))
			return 1;
		if ((mask & AUDIT_PERM_READ) &&
		     FUNC2(AUDIT_CLASS_READ_32, n))
			return 1;
		if ((mask & AUDIT_PERM_ATTR) &&
		     FUNC2(AUDIT_CLASS_CHATTR_32, n))
			return 1;
		return 0;
	case 2: /* open */
		return mask & FUNC0(ctx->argv[1]);
	case 3: /* openat */
		return mask & FUNC0(ctx->argv[2]);
	case 4: /* socketcall */
		return ((mask & AUDIT_PERM_WRITE) && ctx->argv[0] == SYS_BIND);
	case 5: /* execve */
		return mask & AUDIT_PERM_EXEC;
	default:
		return 0;
	}
}