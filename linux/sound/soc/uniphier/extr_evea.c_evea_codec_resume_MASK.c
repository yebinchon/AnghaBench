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
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct evea_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct evea_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct evea_priv* FUNC6 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_component *component)
{
	struct evea_priv *evea = FUNC6(component);
	int ret;

	ret = FUNC1(evea->clk);
	if (ret)
		return ret;

	ret = FUNC1(evea->clk_exiv);
	if (ret)
		goto err_out_clock;

	ret = FUNC5(evea->rst);
	if (ret)
		goto err_out_clock_exiv;

	ret = FUNC5(evea->rst_exiv);
	if (ret)
		goto err_out_reset;

	ret = FUNC5(evea->rst_adamv);
	if (ret)
		goto err_out_reset_exiv;

	FUNC2(evea);
	FUNC3(evea);

	return 0;

err_out_reset_exiv:
	FUNC4(evea->rst_exiv);

err_out_reset:
	FUNC4(evea->rst);

err_out_clock_exiv:
	FUNC0(evea->clk_exiv);

err_out_clock:
	FUNC0(evea->clk);

	return ret;
}