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
struct evea_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  clk_exiv; int /*<<< orphan*/  rst; int /*<<< orphan*/  rst_exiv; int /*<<< orphan*/  rst_adamv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct evea_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct evea_priv* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component)
{
	struct evea_priv *evea = FUNC3(component);

	FUNC1(evea);

	FUNC2(evea->rst_adamv);
	FUNC2(evea->rst_exiv);
	FUNC2(evea->rst);

	FUNC0(evea->clk_exiv);
	FUNC0(evea->clk);

	return 0;
}