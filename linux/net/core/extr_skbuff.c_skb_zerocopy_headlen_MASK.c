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
struct sk_buff {unsigned int len; int /*<<< orphan*/  head_frag; } ;
struct TYPE_2__ {scalar_t__ nr_frags; } ;

/* Variables and functions */
 unsigned int L1_CACHE_BYTES ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 scalar_t__ FUNC0 (struct sk_buff const*) ; 
 unsigned int FUNC1 (struct sk_buff const*) ; 
 TYPE_1__* FUNC2 (struct sk_buff const*) ; 

unsigned int
FUNC3(const struct sk_buff *from)
{
	unsigned int hlen = 0;

	if (!from->head_frag ||
	    FUNC1(from) < L1_CACHE_BYTES ||
	    FUNC2(from)->nr_frags >= MAX_SKB_FRAGS)
		hlen = FUNC1(from);

	if (FUNC0(from))
		hlen = from->len;

	return hlen;
}