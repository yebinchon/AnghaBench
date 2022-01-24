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
struct nfc_llc_engine {struct nfc_llc_engine* name; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfc_llc_engine*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nfc_llc_engine* FUNC2 (char const*) ; 

void FUNC3(const char *name)
{
	struct nfc_llc_engine *llc_engine;

	llc_engine = FUNC2(name);
	if (llc_engine == NULL)
		return;

	FUNC1(&llc_engine->entry);
	FUNC0(llc_engine->name);
	FUNC0(llc_engine);
}