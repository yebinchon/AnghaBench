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
struct madera_priv {int /*<<< orphan*/ * domain_group_ref; struct madera* madera; } ;
struct madera {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(const struct madera_priv *priv)
{
	struct madera *madera = priv->madera;
	int i;

	for (i = 0; i < FUNC0(priv->domain_group_ref); ++i)
		FUNC1(madera->dev, "domain_grp_ref[%d]=%d\n", i,
			priv->domain_group_ref[i]);
}