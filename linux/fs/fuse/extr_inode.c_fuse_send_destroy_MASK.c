#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fuse_conn {scalar_t__ conn_init; } ;
struct TYPE_4__ {int force; int nocreds; int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUSE_DESTROY ; 
 TYPE_1__ args ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_conn*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(struct fuse_conn *fc)
{
	if (fc->conn_init) {
		FUNC0(args);

		args.opcode = FUSE_DESTROY;
		args.force = true;
		args.nocreds = true;
		FUNC1(fc, &args);
	}
}