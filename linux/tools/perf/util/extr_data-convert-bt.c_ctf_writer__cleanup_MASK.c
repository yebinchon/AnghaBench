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
struct ctf_writer {int /*<<< orphan*/  writer; int /*<<< orphan*/  stream_class; int /*<<< orphan*/  clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ctf_writer*) ; 
 int /*<<< orphan*/  FUNC4 (struct ctf_writer*) ; 
 int /*<<< orphan*/  FUNC5 (struct ctf_writer*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct ctf_writer *cw)
{
	FUNC3(cw);

	FUNC0(cw->clock);
	FUNC4(cw);
	FUNC1(cw->stream_class);
	FUNC2(cw->writer);

	/* and NULL all the pointers */
	FUNC5(cw, 0, sizeof(*cw));
}