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
struct sspa_priv {int dummy; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct sspa_priv* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai*,struct sspa_priv*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai)
{
	struct sspa_priv *priv = FUNC0(dai->dev);

	FUNC1(dai, priv);
	return 0;

}