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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ceph_osd_request {unsigned int r_num_ops; struct ceph_osd_req_op* r_ops; } ;
struct ceph_osd_req_op {int /*<<< orphan*/  flags; int /*<<< orphan*/  op; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_osd_req_op*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ceph_osd_req_op *
FUNC3(struct ceph_osd_request *osd_req, unsigned int which,
		 u16 opcode, u32 flags)
{
	struct ceph_osd_req_op *op;

	FUNC0(which >= osd_req->r_num_ops);
	FUNC0(!FUNC2(opcode));

	op = &osd_req->r_ops[which];
	FUNC1(op, 0, sizeof (*op));
	op->op = opcode;
	op->flags = flags;

	return op;
}