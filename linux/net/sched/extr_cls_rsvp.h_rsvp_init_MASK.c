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
struct tcf_proto {int /*<<< orphan*/  root; } ;
struct rsvp_head {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct rsvp_head* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rsvp_head*) ; 

__attribute__((used)) static int FUNC2(struct tcf_proto *tp)
{
	struct rsvp_head *data;

	data = FUNC0(sizeof(struct rsvp_head), GFP_KERNEL);
	if (data) {
		FUNC1(tp->root, data);
		return 0;
	}
	return -ENOBUFS;
}