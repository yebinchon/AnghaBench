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
struct p9_wstat {int /*<<< orphan*/ * extension; int /*<<< orphan*/ * muid; int /*<<< orphan*/ * gid; int /*<<< orphan*/ * uid; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct p9_wstat *stbuf)
{
	FUNC0(stbuf->name);
	stbuf->name = NULL;
	FUNC0(stbuf->uid);
	stbuf->uid = NULL;
	FUNC0(stbuf->gid);
	stbuf->gid = NULL;
	FUNC0(stbuf->muid);
	stbuf->muid = NULL;
	FUNC0(stbuf->extension);
	stbuf->extension = NULL;
}