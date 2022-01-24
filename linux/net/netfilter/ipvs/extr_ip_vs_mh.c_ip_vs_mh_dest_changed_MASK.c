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
struct ip_vs_service {struct ip_vs_mh_state* sched_data; } ;
struct ip_vs_mh_state {int /*<<< orphan*/  gcd; int /*<<< orphan*/  rshift; } ;
struct ip_vs_dest {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_vs_service*) ; 
 int FUNC1 (struct ip_vs_mh_state*,struct ip_vs_service*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_vs_service*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ip_vs_service *svc,
				 struct ip_vs_dest *dest)
{
	struct ip_vs_mh_state *s = svc->sched_data;

	s->gcd = FUNC0(svc);
	s->rshift = FUNC2(svc, s->gcd);

	/* Assign the lookup table with the updated service */
	return FUNC1(s, svc);
}