#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_16__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_15__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_14__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_13__ {TYPE_8__ member_2; TYPE_7__ member_1; TYPE_6__ member_0; } ;
struct TYPE_12__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_11__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_10__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_9__ {TYPE_4__ member_2; TYPE_3__ member_1; TYPE_2__ member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RSND_GEN2_SCU ; 
 int /*<<< orphan*/  RSND_GEN2_SSI ; 
 int /*<<< orphan*/  FUNC12 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct rsnd_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC15 (struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC16 (struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC17 (struct rsnd_dai_stream*) ; 
 struct rsnd_mod* FUNC18 (struct rsnd_dai_stream*) ; 
 struct rsnd_mod* FUNC19 (struct rsnd_dai_stream*) ; 
 struct rsnd_priv* FUNC20 (struct rsnd_dai_stream*) ; 
 int FUNC21 (struct rsnd_mod*) ; 
 int FUNC22 (struct rsnd_mod*) ; 
 struct device* FUNC23 (struct rsnd_priv*) ; 
 scalar_t__ FUNC24 (struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  src ; 
 int /*<<< orphan*/  ssi ; 

__attribute__((used)) static dma_addr_t
FUNC25(struct rsnd_dai_stream *io,
		   struct rsnd_mod *mod,
		   int is_play, int is_from)
{
	struct rsnd_priv *priv = FUNC20(io);
	struct device *dev = FUNC23(priv);
	phys_addr_t ssi_reg = FUNC13(priv, RSND_GEN2_SSI);
	phys_addr_t src_reg = FUNC13(priv, RSND_GEN2_SCU);
	int is_ssi = !!(FUNC18(io) == mod) ||
		     !!(FUNC19(io) == mod);
	int use_src = !!FUNC17(io);
	int use_cmd = !!FUNC15(io) ||
		      !!FUNC16(io) ||
		      !!FUNC14(io);
	int id = FUNC21(mod);
	int busif = FUNC22(FUNC19(io));
	struct dma_addr {
		dma_addr_t out_addr;
		dma_addr_t in_addr;
	} dma_addrs[3][2][3] = {
		/* SRC */
		/* Capture */
		{{{ 0,				0 },
		  { FUNC4(src, id),	FUNC3(src, id) },
		  { FUNC0(src, id),	FUNC3(src, id) } },
		 /* Playback */
		 {{ 0,				0, },
		  { FUNC5(src, id),	FUNC2(src, id) },
		  { FUNC1(src, id),	FUNC2(src, id) } }
		},
		/* SSI */
		/* Capture */
		{{{ FUNC11(ssi, id),		0 },
		  { FUNC9(ssi, id, busif),	0 },
		  { FUNC9(ssi, id, busif),	0 } },
		 /* Playback */
		 {{ 0,			FUNC10(ssi, id) },
		  { 0,			FUNC7(ssi, id, busif) },
		  { 0,			FUNC7(ssi, id, busif) } }
		},
		/* SSIU */
		/* Capture */
		{{{ FUNC8(ssi, id, busif),	0 },
		  { FUNC9(ssi, id, busif),	0 },
		  { FUNC9(ssi, id, busif),	0 } },
		 /* Playback */
		 {{ 0,			FUNC6(ssi, id, busif) },
		  { 0,			FUNC7(ssi, id, busif) },
		  { 0,			FUNC7(ssi, id, busif) } } },
	};

	/*
	 * FIXME
	 *
	 * We can't support SSI9-4/5/6/7, because its address is
	 * out of calculation rule
	 */
	if ((id == 9) && (busif >= 4))
		FUNC12(dev, "This driver doesn't support SSI%d-%d, so far",
			id, busif);

	/* it shouldn't happen */
	if (use_cmd && !use_src)
		FUNC12(dev, "DVC is selected without SRC\n");

	/* use SSIU or SSI ? */
	if (is_ssi && FUNC24(io))
		is_ssi++;

	return (is_from) ?
		dma_addrs[is_ssi][is_play][use_src + use_cmd].out_addr :
		dma_addrs[is_ssi][is_play][use_src + use_cmd].in_addr;
}