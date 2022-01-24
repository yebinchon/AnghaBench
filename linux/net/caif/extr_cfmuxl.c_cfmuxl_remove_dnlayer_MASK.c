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
typedef  int u8 ;
struct cfmuxl {int /*<<< orphan*/  transmit_lock; int /*<<< orphan*/  frml_list; int /*<<< orphan*/ * dn_cache; } ;
struct cflayer {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int DN_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct cfmuxl* FUNC2 (struct cflayer*) ; 
 struct cflayer* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct cflayer *FUNC7(struct cflayer *layr, u8 phyid)
{
	struct cfmuxl *muxl = FUNC2(layr);
	struct cflayer *dn;
	int idx = phyid % DN_CACHE_SIZE;

	FUNC5(&muxl->transmit_lock);
	FUNC0(muxl->dn_cache[idx], NULL);
	dn = FUNC3(&muxl->frml_list, phyid);
	if (dn == NULL)
		goto out;

	FUNC4(&dn->node);
	FUNC1(dn != NULL);
out:
	FUNC6(&muxl->transmit_lock);
	return dn;
}