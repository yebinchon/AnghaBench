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
struct mem_cgroup {int dummy; } ;
struct eventfd_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  _MEM ; 
 int FUNC0 (struct mem_cgroup*,struct eventfd_ctx*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct mem_cgroup *memcg,
	struct eventfd_ctx *eventfd, const char *args)
{
	return FUNC0(memcg, eventfd, args, _MEM);
}