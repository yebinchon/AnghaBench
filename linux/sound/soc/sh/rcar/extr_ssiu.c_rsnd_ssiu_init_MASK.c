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
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSI_MODE0 ; 
 int /*<<< orphan*/  SSI_MODE1 ; 
 int /*<<< orphan*/  SSI_MODE2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct rsnd_dai* FUNC1 (struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC2 (struct rsnd_mod*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct rsnd_mod*) ; 
 int FUNC4 (struct rsnd_mod*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rsnd_mod*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct rsnd_dai*) ; 
 scalar_t__ FUNC7 (struct rsnd_dai_stream*) ; 
 int FUNC8 (struct rsnd_dai_stream*) ; 
 int FUNC9 (struct rsnd_dai_stream*) ; 

__attribute__((used)) static int FUNC10(struct rsnd_mod *mod,
			  struct rsnd_dai_stream *io,
			  struct rsnd_priv *priv)
{
	struct rsnd_dai *rdai = FUNC1(io);
	u32 ssis = FUNC8(io);
	int use_busif = FUNC9(io);
	int id = FUNC3(mod);
	int is_clk_master = FUNC6(rdai);
	u32 val1, val2;
	int i;

	/* clear status */
	switch (id) {
	case 0:
	case 1:
	case 2:
	case 3:
	case 4:
		for (i = 0; i < 4; i++)
			FUNC5(mod, FUNC0(i * 2), 0xf << (id * 4));
		break;
	case 9:
		for (i = 0; i < 4; i++)
			FUNC5(mod, FUNC0((i * 2) + 1), 0xf << 4);
		break;
	}

	/*
	 * SSI_MODE0
	 */
	FUNC2(mod, SSI_MODE0, (1 << id), !use_busif << id);

	/*
	 * SSI_MODE1 / SSI_MODE2
	 *
	 * FIXME
	 * sharing/multi with SSI0 are mainly supported
	 */
	val1 = FUNC4(mod, SSI_MODE1);
	val2 = FUNC4(mod, SSI_MODE2);
	if (FUNC7(io)) {

		ssis |= (1 << id);

	} else if (ssis) {
		/*
		 * Multi SSI
		 *
		 * set synchronized bit here
		 */

		/* SSI4 is synchronized with SSI3 */
		if (ssis & (1 << 4))
			val1 |= (1 << 20);
		/* SSI012 are synchronized */
		if (ssis == 0x0006)
			val1 |= (1 << 4);
		/* SSI0129 are synchronized */
		if (ssis == 0x0206)
			val2 |= (1 << 4);
	}

	/* SSI1 is sharing pin with SSI0 */
	if (ssis & (1 << 1))
		val1 |= is_clk_master ? 0x2 : 0x1;

	/* SSI2 is sharing pin with SSI0 */
	if (ssis & (1 << 2))
		val1 |= is_clk_master ?	0x2 << 2 :
					0x1 << 2;
	/* SSI4 is sharing pin with SSI3 */
	if (ssis & (1 << 4))
		val1 |= is_clk_master ? 0x2 << 16 :
					0x1 << 16;
	/* SSI9 is sharing pin with SSI0 */
	if (ssis & (1 << 9))
		val2 |= is_clk_master ? 0x2 : 0x1;

	FUNC2(mod, SSI_MODE1, 0x0013001f, val1);
	FUNC2(mod, SSI_MODE2, 0x00000017, val2);

	return 0;
}