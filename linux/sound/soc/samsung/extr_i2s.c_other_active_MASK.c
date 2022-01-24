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
struct i2s_dai {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct i2s_dai*) ; 
 scalar_t__ FUNC1 (struct i2s_dai*) ; 

__attribute__((used)) static inline bool FUNC2(struct i2s_dai *i2s)
{
	return FUNC0(i2s) || FUNC1(i2s);
}