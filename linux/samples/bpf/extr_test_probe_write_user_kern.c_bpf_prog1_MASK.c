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
struct sockaddr_in {int dummy; } ;
struct pt_regs {int dummy; } ;
typedef  int /*<<< orphan*/  orig_addr ;
typedef  int /*<<< orphan*/  new_addr ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pt_regs*) ; 
 scalar_t__ FUNC1 (struct pt_regs*) ; 
 struct sockaddr_in* FUNC2 (int /*<<< orphan*/ *,struct sockaddr_in*) ; 
 scalar_t__ FUNC3 (struct sockaddr_in*,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  dnat_map ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_in*,struct sockaddr_in*,int) ; 

int FUNC6(struct pt_regs *ctx)
{
	struct sockaddr_in new_addr, orig_addr = {};
	struct sockaddr_in *mapped_addr;
	void *sockaddr_arg = (void *)FUNC0(ctx);
	int sockaddr_len = (int)FUNC1(ctx);

	if (sockaddr_len > sizeof(orig_addr))
		return 0;

	if (FUNC3(&orig_addr, sizeof(orig_addr), sockaddr_arg) != 0)
		return 0;

	mapped_addr = FUNC2(&dnat_map, &orig_addr);
	if (mapped_addr != NULL) {
		FUNC5(&new_addr, mapped_addr, sizeof(new_addr));
		FUNC4(sockaddr_arg, &new_addr,
				     sizeof(new_addr));
	}
	return 0;
}