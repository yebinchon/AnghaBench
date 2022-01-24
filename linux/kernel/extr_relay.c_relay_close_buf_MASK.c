#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rchan_buf {int finalized; int /*<<< orphan*/  kref; int /*<<< orphan*/  dentry; TYPE_2__* chan; int /*<<< orphan*/  wakeup_work; } ;
struct TYPE_4__ {TYPE_1__* cb; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* remove_buf_file ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  relay_remove_buf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rchan_buf *buf)
{
	buf->finalized = 1;
	FUNC0(&buf->wakeup_work);
	buf->chan->cb->remove_buf_file(buf->dentry);
	FUNC1(&buf->kref, relay_remove_buf);
}