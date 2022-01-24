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
struct rsnd_ssi {int /*<<< orphan*/  irq; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  RSND_SSI_PROBED ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC2 (struct rsnd_ssi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rsnd_ssi*,int /*<<< orphan*/ ) ; 
 struct rsnd_ssi* FUNC4 (struct rsnd_mod*) ; 
 struct device* FUNC5 (struct rsnd_priv*) ; 
 int /*<<< orphan*/  rsnd_ssi_interrupt ; 
 scalar_t__ FUNC6 (struct rsnd_mod*,struct rsnd_dai_stream*) ; 

__attribute__((used)) static int FUNC7(struct rsnd_mod *mod,
				 struct rsnd_dai_stream *io,
				 struct rsnd_priv *priv)
{
	struct device *dev = FUNC5(priv);
	struct rsnd_ssi *ssi = FUNC4(mod);
	int ret = 0;

	/*
	 * SSIP/SSIU/IRQ are not needed on
	 * SSI Multi slaves
	 */
	if (FUNC6(mod, io))
		return 0;

	/*
	 * It can't judge ssi parent at this point
	 * see rsnd_ssi_pcm_new()
	 */

	/*
	 * SSI might be called again as PIO fallback
	 * It is easy to manual handling for IRQ request/free
	 *
	 * OTOH, this function might be called many times if platform is
	 * using MIX. It needs xxx_attach() many times on xxx_probe().
	 * Because of it, we can't control .probe/.remove calling count by
	 * mod->status.
	 * But it don't need to call request_irq() many times.
	 * Let's control it by RSND_SSI_PROBED flag.
	 */
	if (!FUNC2(ssi, RSND_SSI_PROBED)) {
		ret = FUNC1(ssi->irq,
				  rsnd_ssi_interrupt,
				  IRQF_SHARED,
				  FUNC0(dev), mod);

		FUNC3(ssi, RSND_SSI_PROBED);
	}

	return ret;
}