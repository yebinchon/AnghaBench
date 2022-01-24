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
struct super_block {int dummy; } ;
struct regid {int flags; scalar_t__ identSuffix; int /*<<< orphan*/  ident; } ;
struct domainEntityIDSuffix {int flags; } ;

/* Variables and functions */
 int EACCES ; 
 int ENTITYIDSUFFIX_FLAGS_HARDWRITEPROTECT ; 
 int ENTITYIDSUFFIX_FLAGS_SOFTWRITEPROTECT ; 
 int ENTITYID_FLAGS_DIRTY ; 
 int /*<<< orphan*/  UDF_FLAG_RW_INCOMPAT ; 
 int /*<<< orphan*/  UDF_ID_COMPLIANT ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,char*,char*) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb,
					struct regid *ident, char *dname)
{
	struct domainEntityIDSuffix *suffix;

	if (FUNC1(ident->ident, UDF_ID_COMPLIANT, FUNC3(UDF_ID_COMPLIANT))) {
		FUNC4(sb, "Not OSTA UDF compliant %s descriptor.\n", dname);
		goto force_ro;
	}
	if (ident->flags & (1 << ENTITYID_FLAGS_DIRTY)) {
		FUNC4(sb, "Possibly not OSTA UDF compliant %s descriptor.\n",
			 dname);
		goto force_ro;
	}
	suffix = (struct domainEntityIDSuffix *)ident->identSuffix;
	if (suffix->flags & (1 << ENTITYIDSUFFIX_FLAGS_HARDWRITEPROTECT) ||
	    suffix->flags & (1 << ENTITYIDSUFFIX_FLAGS_SOFTWRITEPROTECT)) {
		if (!FUNC2(sb)) {
			FUNC4(sb, "Descriptor for %s marked write protected."
				 " Forcing read only mount.\n", dname);
		}
		goto force_ro;
	}
	return 0;

force_ro:
	if (!FUNC2(sb))
		return -EACCES;
	FUNC0(sb, UDF_FLAG_RW_INCOMPAT);
	return 0;
}