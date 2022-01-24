#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct crypto_comp {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  bufsize; } ;
struct TYPE_3__ {int name; int (* zbufsize ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PSTORE_COMPRESS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct crypto_comp*) ; 
 int FUNC2 (struct crypto_comp*) ; 
 char* big_oops_buf ; 
 int big_oops_buf_sz ; 
 struct crypto_comp* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 TYPE_2__* psinfo ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 struct crypto_comp* tfm ; 
 TYPE_1__* zbackend ; 

__attribute__((used)) static void FUNC10(void)
{
	struct crypto_comp *ctx;
	int size;
	char *buf;

	/* Skip if not built-in or compression backend not selected yet. */
	if (!FUNC0(CONFIG_PSTORE_COMPRESS) || !zbackend)
		return;

	/* Skip if no pstore backend yet or compression init already done. */
	if (!psinfo || tfm)
		return;

	if (!FUNC4(zbackend->name, 0, 0)) {
		FUNC7("Unknown compression: %s\n", zbackend->name);
		return;
	}

	size = zbackend->zbufsize(psinfo->bufsize);
	if (size <= 0) {
		FUNC7("Invalid compression size for %s: %d\n",
		       zbackend->name, size);
		return;
	}

	buf = FUNC6(size, GFP_KERNEL);
	if (!buf) {
		FUNC7("Failed %d byte compression buffer allocation for: %s\n",
		       size, zbackend->name);
		return;
	}

	ctx = FUNC3(zbackend->name, 0, 0);
	if (FUNC1(ctx)) {
		FUNC5(buf);
		FUNC7("crypto_alloc_comp('%s') failed: %ld\n", zbackend->name,
		       FUNC2(ctx));
		return;
	}

	/* A non-NULL big_oops_buf indicates compression is available. */
	tfm = ctx;
	big_oops_buf_sz = size;
	big_oops_buf = buf;

	FUNC8("Using crash dump compression: %s\n", zbackend->name);
}