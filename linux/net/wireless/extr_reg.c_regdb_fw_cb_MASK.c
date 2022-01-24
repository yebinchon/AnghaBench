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
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODATA ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (void*) ; 
 void* regdb ; 
 int /*<<< orphan*/  FUNC6 (struct firmware const*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(const struct firmware *fw, void *context)
{
	int set_error = 0;
	bool restore = true;
	void *db;

	if (!fw) {
		FUNC4("failed to load regulatory.db\n");
		set_error = -ENODATA;
	} else if (!FUNC10(fw->data, fw->size)) {
		FUNC4("loaded regulatory.db is malformed or signature is missing/invalid\n");
		set_error = -EINVAL;
	}

	FUNC8();
	if (regdb && !FUNC1(regdb)) {
		/* negative case - a bug
		 * positive case - can happen due to race in case of multiple cb's in
		 * queue, due to usage of asynchronous callback
		 *
		 * Either case, just restore and free new db.
		 */
	} else if (set_error) {
		regdb = FUNC0(set_error);
	} else if (fw) {
		db = FUNC3(fw->data, fw->size, GFP_KERNEL);
		if (db) {
			regdb = db;
			restore = context && FUNC5(context);
		} else {
			restore = true;
		}
	}

	if (restore)
		FUNC7(true, false);

	FUNC9();

	FUNC2(context);

	FUNC6(fw);
}