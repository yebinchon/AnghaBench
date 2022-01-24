#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct integrity_iint_cache {int flags; TYPE_1__* ima_hash; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_2__ {size_t algo; int length; int /*<<< orphan*/ * digest; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_INTEGRITY_RULE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IMA_AUDITED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*,...) ; 
 struct audit_buffer* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct audit_buffer*,unsigned char const*) ; 
 char** hash_algo_name ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (int,int /*<<< orphan*/ ) ; 

void FUNC9(struct integrity_iint_cache *iint,
			   const unsigned char *filename)
{
	struct audit_buffer *ab;
	char *hash;
	const char *algo_name = hash_algo_name[iint->ima_hash->algo];
	int i;

	if (iint->flags & IMA_AUDITED)
		return;

	hash = FUNC8((iint->ima_hash->length * 2) + 1, GFP_KERNEL);
	if (!hash)
		return;

	for (i = 0; i < iint->ima_hash->length; i++)
		FUNC6(hash + (i * 2), iint->ima_hash->digest[i]);
	hash[i * 2] = '\0';

	ab = FUNC3(FUNC0(), GFP_KERNEL,
			     AUDIT_INTEGRITY_RULE);
	if (!ab)
		goto out;

	FUNC2(ab, "file=");
	FUNC5(ab, filename);
	FUNC2(ab, " hash=\"%s:%s\"", algo_name, hash);

	FUNC4(ab);
	FUNC1(ab);

	iint->flags |= IMA_AUDITED;
out:
	FUNC7(hash);
	return;
}