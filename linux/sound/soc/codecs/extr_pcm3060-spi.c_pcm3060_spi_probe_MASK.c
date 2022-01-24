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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct pcm3060_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct pcm3060_priv* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pcm3060_regmap ; 
 int /*<<< orphan*/  FUNC5 (struct spi_device*,struct pcm3060_priv*) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	struct pcm3060_priv *priv;

	priv = FUNC2(&spi->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC5(spi, priv);

	priv->regmap = FUNC3(spi, &pcm3060_regmap);
	if (FUNC0(priv->regmap))
		return FUNC1(priv->regmap);

	return FUNC4(&spi->dev);
}