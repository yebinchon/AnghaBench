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
typedef  int u32 ;
struct rsnd_priv {int /*<<< orphan*/  lock; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int /*<<< orphan*/  substream; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int DIRQ ; 
 int OIRQ ; 
 int UIRQ ; 
 int /*<<< orphan*/  FUNC0 (struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsnd_mod*) ; 
 struct rsnd_priv* FUNC4 (struct rsnd_mod*) ; 
 struct device* FUNC5 (struct rsnd_priv*) ; 
 int FUNC6 (struct rsnd_mod*) ; 
 int FUNC7 (struct rsnd_mod*,struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC8 (struct rsnd_mod*) ; 
 int FUNC9 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct rsnd_mod *mod,
				 struct rsnd_dai_stream *io)
{
	struct rsnd_priv *priv = FUNC4(mod);
	struct device *dev = FUNC5(priv);
	int is_dma = FUNC6(mod);
	u32 status;
	bool elapsed = false;
	bool stop = false;

	FUNC11(&priv->lock);

	/* ignore all cases if not working */
	if (!FUNC2(io))
		goto rsnd_ssi_interrupt_out;

	status = FUNC9(mod);

	/* PIO only */
	if (!is_dma && (status & DIRQ))
		elapsed = FUNC7(mod, io);

	/* DMA only */
	if (is_dma && (status & (UIRQ | OIRQ))) {
		FUNC1(dev, "%s err status : 0x%08x\n",
			FUNC3(mod), status);

		stop = true;
	}

	FUNC8(mod);
rsnd_ssi_interrupt_out:
	FUNC12(&priv->lock);

	if (elapsed)
		FUNC0(io);

	if (stop)
		FUNC10(io->substream);

}