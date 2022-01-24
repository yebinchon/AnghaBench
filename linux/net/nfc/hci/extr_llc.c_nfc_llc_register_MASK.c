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
struct nfc_llc_ops {int dummy; } ;
struct nfc_llc_engine {int /*<<< orphan*/  entry; struct nfc_llc_ops* ops; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfc_llc_engine*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 struct nfc_llc_engine* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  llc_engines ; 

int FUNC5(const char *name, struct nfc_llc_ops *ops)
{
	struct nfc_llc_engine *llc_engine;

	llc_engine = FUNC3(sizeof(struct nfc_llc_engine), GFP_KERNEL);
	if (llc_engine == NULL)
		return -ENOMEM;

	llc_engine->name = FUNC2(name, GFP_KERNEL);
	if (llc_engine->name == NULL) {
		FUNC1(llc_engine);
		return -ENOMEM;
	}
	llc_engine->ops = ops;

	FUNC0(&llc_engine->entry);
	FUNC4(&llc_engine->entry, &llc_engines);

	return 0;
}