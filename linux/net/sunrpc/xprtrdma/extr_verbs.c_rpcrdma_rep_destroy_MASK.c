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
struct rpcrdma_rep {int /*<<< orphan*/  rr_rdmabuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpcrdma_rep*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rpcrdma_rep *rep)
{
	FUNC1(rep->rr_rdmabuf);
	FUNC0(rep);
}