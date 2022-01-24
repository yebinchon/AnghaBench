#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  defer; } ;
struct nfs_cache_defer_req {TYPE_1__ req; int /*<<< orphan*/  count; int /*<<< orphan*/  completion; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nfs_cache_defer_req* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_dns_cache_defer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

struct nfs_cache_defer_req *FUNC3(void)
{
	struct nfs_cache_defer_req *dreq;

	dreq = FUNC1(sizeof(*dreq), GFP_KERNEL);
	if (dreq) {
		FUNC0(&dreq->completion);
		FUNC2(&dreq->count, 1);
		dreq->req.defer = nfs_dns_cache_defer;
	}
	return dreq;
}