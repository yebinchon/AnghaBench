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
struct key {int /*<<< orphan*/  keys; } ;
struct assoc_array_edit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct assoc_array_edit*) ; 
 int /*<<< orphan*/  FUNC1 (struct assoc_array_edit*) ; 
 struct assoc_array_edit* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keyring_assoc_array_ops ; 

__attribute__((used)) static void FUNC4(struct key *keyring)
{
	struct assoc_array_edit *edit;

	edit = FUNC2(&keyring->keys, &keyring_assoc_array_ops);
	if (!FUNC0(edit)) {
		if (edit)
			FUNC1(edit);
		FUNC3(keyring, 0);
	}
}