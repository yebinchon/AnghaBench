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
struct sta32x_priv {scalar_t__ gpiod_nreset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct sta32x_priv *sta32x)
{
	if (sta32x->gpiod_nreset) {
		FUNC0(sta32x->gpiod_nreset, 0);
		FUNC1(1);
		FUNC0(sta32x->gpiod_nreset, 1);
		FUNC1(1);
	}

	return 0;
}