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
struct fl_flow_key {int dummy; } ;
struct fl_flow_mask {struct fl_flow_key key; } ;

/* Variables and functions */
 void* FUNC0 (struct fl_flow_key*,struct fl_flow_mask*) ; 
 int FUNC1 (struct fl_flow_mask*) ; 

__attribute__((used)) static void FUNC2(struct fl_flow_key *mkey, struct fl_flow_key *key,
			      struct fl_flow_mask *mask)
{
	const long *lkey = FUNC0(key, mask);
	const long *lmask = FUNC0(&mask->key, mask);
	long *lmkey = FUNC0(mkey, mask);
	int i;

	for (i = 0; i < FUNC1(mask); i += sizeof(long))
		*lmkey++ = *lkey++ & *lmask++;
}