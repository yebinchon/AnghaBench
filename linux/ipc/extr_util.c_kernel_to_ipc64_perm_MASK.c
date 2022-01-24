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
struct kern_ipc_perm {int /*<<< orphan*/  seq; int /*<<< orphan*/  mode; int /*<<< orphan*/  cgid; int /*<<< orphan*/  cuid; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  key; } ;
struct ipc64_perm {int /*<<< orphan*/  seq; int /*<<< orphan*/  mode; void* cgid; void* cuid; void* gid; void* uid; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct kern_ipc_perm *in, struct ipc64_perm *out)
{
	out->key	= in->key;
	out->uid	= FUNC2(FUNC0(), in->uid);
	out->gid	= FUNC1(FUNC0(), in->gid);
	out->cuid	= FUNC2(FUNC0(), in->cuid);
	out->cgid	= FUNC1(FUNC0(), in->cgid);
	out->mode	= in->mode;
	out->seq	= in->seq;
}