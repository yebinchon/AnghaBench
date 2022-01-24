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
struct snd_soc_dai {int /*<<< orphan*/  id; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_dai {int dummy; } ;

/* Variables and functions */
 struct rsnd_priv* FUNC0 (struct snd_soc_dai*) ; 
 struct rsnd_dai* FUNC1 (struct rsnd_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rsnd_dai *FUNC2(struct snd_soc_dai *dai)
{
	struct rsnd_priv *priv = FUNC0(dai);

	return FUNC1(priv, dai->id);
}