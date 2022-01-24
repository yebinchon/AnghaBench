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
struct key {int /*<<< orphan*/  description; TYPE_1__ payload; } ;

/* Variables and functions */
 size_t BIG_KEY_FILE_THRESHOLD ; 
 size_t big_key_len ; 
 scalar_t__ FUNC0 (struct key const*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,int /*<<< orphan*/ ) ; 

void FUNC3(const struct key *key, struct seq_file *m)
{
	size_t datalen = (size_t)key->payload.data[big_key_len];

	FUNC2(m, key->description);

	if (FUNC0(key))
		FUNC1(m, ": %zu [%s]",
			   datalen,
			   datalen > BIG_KEY_FILE_THRESHOLD ? "file" : "buff");
}