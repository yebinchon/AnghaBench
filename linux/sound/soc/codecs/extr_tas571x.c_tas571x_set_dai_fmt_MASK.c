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
struct tas571x_private {unsigned int format; } ;
struct snd_soc_dai {int /*<<< orphan*/  component; } ;

/* Variables and functions */
 struct tas571x_private* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct snd_soc_dai *dai, unsigned int format)
{
	struct tas571x_private *priv = FUNC0(dai->component);

	priv->format = format;

	return 0;
}