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
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;
struct key {int datalen; TYPE_1__ payload; int /*<<< orphan*/  description; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t dns_key_error ; 
 scalar_t__ FUNC1 (struct key const*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const struct key *key, struct seq_file *m)
{
	FUNC3(m, key->description);
	if (FUNC1(key)) {
		int err = FUNC0(key->payload.data[dns_key_error]);

		if (err)
			FUNC2(m, ": %d", err);
		else
			FUNC2(m, ": %u", key->datalen);
	}
}