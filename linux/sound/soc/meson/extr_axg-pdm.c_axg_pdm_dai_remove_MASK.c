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
struct snd_soc_dai {int dummy; } ;
struct axg_pdm {int /*<<< orphan*/  pclk; int /*<<< orphan*/  sysclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct axg_pdm* FUNC1 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai)
{
	struct axg_pdm *priv = FUNC1(dai);

	FUNC0(priv->sysclk);
	FUNC0(priv->pclk);

	return 0;
}