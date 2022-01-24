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
struct seq_file {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr_leaves_on_tree; } ;
struct key {char* description; TYPE_1__ keys; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct key const*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC3(const struct key *keyring, struct seq_file *m)
{
	if (keyring->description)
		FUNC2(m, keyring->description);
	else
		FUNC2(m, "[anon]");

	if (FUNC0(keyring)) {
		if (keyring->keys.nr_leaves_on_tree != 0)
			FUNC1(m, ": %lu", keyring->keys.nr_leaves_on_tree);
		else
			FUNC2(m, ": empty");
	}
}