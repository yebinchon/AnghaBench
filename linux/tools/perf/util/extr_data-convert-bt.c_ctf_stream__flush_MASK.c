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
struct ctf_stream {scalar_t__ count; int /*<<< orphan*/  cpu; int /*<<< orphan*/  stream; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ctf_stream *cs)
{
	int err = 0;

	if (cs) {
		err = FUNC0(cs->stream);
		if (err)
			FUNC2("CTF stream %d flush failed\n", cs->cpu);

		FUNC1("Flush stream for cpu %d (%u samples)\n",
		   cs->cpu, cs->count);

		cs->count = 0;
	}

	return err;
}