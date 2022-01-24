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
typedef  int /*<<< orphan*/  u8 ;
struct snd_soc_dai {int /*<<< orphan*/  component; } ;
struct cs53l30_private {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS53L30_ASP_3ST ; 
 int /*<<< orphan*/  CS53L30_ASP_3ST_MASK ; 
 int /*<<< orphan*/  CS53L30_ASP_CTL1 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cs53l30_private* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, int tristate)
{
	struct cs53l30_private *priv = FUNC1(dai->component);
	u8 val = tristate ? CS53L30_ASP_3ST : 0;

	return FUNC0(priv->regmap, CS53L30_ASP_CTL1,
				  CS53L30_ASP_3ST_MASK, val);
}