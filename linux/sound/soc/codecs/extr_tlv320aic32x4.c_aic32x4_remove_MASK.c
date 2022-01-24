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
struct device {int dummy; } ;
struct aic32x4_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aic32x4_priv*) ; 
 struct aic32x4_priv* FUNC1 (struct device*) ; 

int FUNC2(struct device *dev)
{
	struct aic32x4_priv *aic32x4 = FUNC1(dev);

	FUNC0(aic32x4);

	return 0;
}