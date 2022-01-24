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
struct TYPE_3__ {int /*<<< orphan*/  tk_work; } ;
struct TYPE_4__ {TYPE_1__ u; int /*<<< orphan*/  tk_status; } ;
struct nfs_pgio_header {TYPE_2__ task; int /*<<< orphan*/  pnfs_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bl_read_cleanup ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void *data)
{
	struct nfs_pgio_header *hdr = data;

	hdr->task.tk_status = hdr->pnfs_error;
	FUNC0(&hdr->task.u.tk_work, bl_read_cleanup);
	FUNC1(&hdr->task.u.tk_work);
}