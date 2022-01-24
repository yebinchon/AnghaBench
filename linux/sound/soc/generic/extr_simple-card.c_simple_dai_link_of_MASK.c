#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai_link {int /*<<< orphan*/  init; int /*<<< orphan*/ * ops; TYPE_2__* codecs; TYPE_1__* cpus; int /*<<< orphan*/  dai_fmt; } ;
struct simple_dai_props {struct asoc_simple_dai* codec_dai; struct asoc_simple_dai* cpu_dai; } ;
struct link_info {int /*<<< orphan*/  dais; int /*<<< orphan*/  link; int /*<<< orphan*/  cpu; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct asoc_simple_priv {struct asoc_simple_dai* dais; } ;
struct asoc_simple_dai {int dummy; } ;
typedef  int /*<<< orphan*/  prop ;
struct TYPE_4__ {int /*<<< orphan*/  dai_name; } ;
struct TYPE_3__ {int /*<<< orphan*/  dai_name; } ;

/* Variables and functions */
 char* PREFIX ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_dai_link*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai_link*) ; 
 int /*<<< orphan*/  asoc_simple_dai_init ; 
 int FUNC2 (struct device*,struct device_node*,struct snd_soc_dai_link*,struct asoc_simple_dai*) ; 
 int FUNC3 (struct device*,struct device_node*,struct snd_soc_dai_link*,struct asoc_simple_dai*) ; 
 int FUNC4 (struct device_node*,struct snd_soc_dai_link*) ; 
 int FUNC5 (struct device_node*,struct snd_soc_dai_link*,int*) ; 
 int FUNC6 (struct device*,struct device_node*,struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct device_node*,struct snd_soc_dai_link*) ; 
 int FUNC8 (struct device_node*,struct asoc_simple_dai*) ; 
 int FUNC9 (struct device*,struct snd_soc_dai_link*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*,struct device_node*) ; 
 struct device_node* FUNC11 (struct device_node*,char*) ; 
 struct device_node* FUNC12 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC13 (struct device_node*) ; 
 int /*<<< orphan*/  simple_ops ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*,struct device_node*,struct device_node*,struct simple_dai_props*,char*) ; 
 struct device* FUNC15 (struct asoc_simple_priv*) ; 
 struct snd_soc_dai_link* FUNC16 (struct asoc_simple_priv*,int /*<<< orphan*/ ) ; 
 struct simple_dai_props* FUNC17 (struct asoc_simple_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC19(struct asoc_simple_priv *priv,
			      struct device_node *np,
			      struct device_node *codec,
			      struct link_info *li,
			      bool is_top)
{
	struct device *dev = FUNC15(priv);
	struct snd_soc_dai_link *dai_link = FUNC16(priv, li->link);
	struct simple_dai_props *dai_props = FUNC17(priv, li->link);
	struct asoc_simple_dai *cpu_dai;
	struct asoc_simple_dai *codec_dai;
	struct device_node *top = dev->of_node;
	struct device_node *cpu = NULL;
	struct device_node *node = NULL;
	struct device_node *plat = NULL;
	char prop[128];
	char *prefix = "";
	int ret, single_cpu;

	/*
	 *	 |CPU   |Codec   : turn
	 * CPU	 |Pass  |return
	 * Codec |return|return
	 * np
	 */
	if (!li->cpu || np == codec)
		return 0;

	cpu  = np;
	node = FUNC12(np);
	li->link++;

	FUNC10(dev, "link_of (%pOF)\n", node);

	/* For single DAI link & old style of DT node */
	if (is_top)
		prefix = PREFIX;

	FUNC18(prop, sizeof(prop), "%splat", prefix);
	plat = FUNC11(node, prop);

	cpu_dai			=
	dai_props->cpu_dai	= &priv->dais[li->dais++];
	codec_dai		=
	dai_props->codec_dai	= &priv->dais[li->dais++];

	ret = FUNC6(dev, node, codec,
				       prefix, &dai_link->dai_fmt);
	if (ret < 0)
		goto dai_link_of_err;

	FUNC14(top, cpu, codec, dai_props, prefix);

	ret = FUNC5(cpu, dai_link, &single_cpu);
	if (ret < 0)
		goto dai_link_of_err;

	ret = FUNC4(codec, dai_link);
	if (ret < 0)
		goto dai_link_of_err;

	ret = FUNC7(plat, dai_link);
	if (ret < 0)
		goto dai_link_of_err;

	ret = FUNC8(cpu, cpu_dai);
	if (ret < 0)
		goto dai_link_of_err;

	ret = FUNC8(codec, codec_dai);
	if (ret < 0)
		goto dai_link_of_err;

	ret = FUNC3(dev, cpu, dai_link, cpu_dai);
	if (ret < 0)
		goto dai_link_of_err;

	ret = FUNC2(dev, codec, dai_link, codec_dai);
	if (ret < 0)
		goto dai_link_of_err;

	ret = FUNC9(dev, dai_link,
					   "%s-%s",
					   dai_link->cpus->dai_name,
					   dai_link->codecs->dai_name);
	if (ret < 0)
		goto dai_link_of_err;

	dai_link->ops = &simple_ops;
	dai_link->init = asoc_simple_dai_init;

	FUNC0(dai_link, single_cpu);
	FUNC1(dai_link);

dai_link_of_err:
	FUNC13(plat);
	FUNC13(node);

	return ret;
}