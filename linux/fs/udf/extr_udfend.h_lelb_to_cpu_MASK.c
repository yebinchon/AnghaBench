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
struct lb_addr {int /*<<< orphan*/  partitionReferenceNum; int /*<<< orphan*/  logicalBlockNum; } ;
struct kernel_lb_addr {int /*<<< orphan*/  partitionReferenceNum; int /*<<< orphan*/  logicalBlockNum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct kernel_lb_addr FUNC2(struct lb_addr in)
{
	struct kernel_lb_addr out;

	out.logicalBlockNum = FUNC1(in.logicalBlockNum);
	out.partitionReferenceNum = FUNC0(in.partitionReferenceNum);

	return out;
}