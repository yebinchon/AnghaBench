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
struct bch_control {scalar_t__* a_log_tab; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bch_control*) ; 
 int FUNC1 (struct bch_control*,scalar_t__) ; 

__attribute__((used)) static inline int FUNC2(struct bch_control *bch, unsigned int x)
{
	return FUNC1(bch, FUNC0(bch)-bch->a_log_tab[x]);
}