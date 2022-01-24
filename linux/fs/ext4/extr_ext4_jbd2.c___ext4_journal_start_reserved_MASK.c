#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  h_buffer_credits; TYPE_1__* h_journal; } ;
typedef  TYPE_2__ handle_t ;
struct TYPE_10__ {struct super_block* j_private; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

handle_t *FUNC7(handle_t *handle, unsigned int line,
					int type)
{
	struct super_block *sb;
	int err;

	if (!FUNC2(handle))
		return FUNC1();

	sb = handle->h_journal->j_private;
	FUNC6(sb, handle->h_buffer_credits,
					  _RET_IP_);
	err = FUNC3(sb);
	if (err < 0) {
		FUNC4(handle);
		return FUNC0(err);
	}

	err = FUNC5(handle, type, line);
	if (err < 0)
		return FUNC0(err);
	return handle;
}