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
struct snd_soc_dai {int id; } ;
struct samsung_i2s_priv {struct i2s_dai* dai; } ;
struct i2s_dai {int dummy; } ;

/* Variables and functions */
 struct samsung_i2s_priv* FUNC0 (struct snd_soc_dai*) ; 

__attribute__((used)) static inline struct i2s_dai *FUNC1(struct snd_soc_dai *dai)
{
	struct samsung_i2s_priv *priv = FUNC0(dai);

	return &priv->dai[dai->id - 1];
}