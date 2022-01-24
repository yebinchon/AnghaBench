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
struct snd_soc_component {int dummy; } ;
struct madera_priv {struct madera* madera; } ;
struct madera {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct madera*) ; 
 struct madera_priv* FUNC1 (struct snd_soc_component*) ; 

int FUNC2(struct snd_soc_component *component)
{
	struct madera_priv *priv = FUNC1(component);
	struct madera *madera = priv->madera;

	FUNC0(madera);

	return 0;
}