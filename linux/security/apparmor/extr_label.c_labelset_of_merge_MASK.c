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
struct aa_labelset {int dummy; } ;
struct aa_ns {struct aa_labelset labels; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 struct aa_ns* FUNC0 (struct aa_label*) ; 
 scalar_t__ FUNC1 (struct aa_ns*,struct aa_ns*) ; 

__attribute__((used)) static struct aa_labelset *FUNC2(struct aa_label *a,
					     struct aa_label *b)
{
	struct aa_ns *nsa = FUNC0(a);
	struct aa_ns *nsb = FUNC0(b);

	if (FUNC1(nsa, nsb) <= 0)
		return &nsa->labels;
	return &nsb->labels;
}