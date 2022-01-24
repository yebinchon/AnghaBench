#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
struct snd_soc_dapm_route {int dummy; } ;
struct snd_soc_dai_link_component {char* dai_name; char* name; struct device_node* of_node; } ;
struct snd_soc_dai_link {int dummy; } ;
struct snd_soc_codec_conf {int dummy; } ;
struct TYPE_20__ {TYPE_13__* parent; struct device_node* of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct of_phandle_args {struct device_node* np; } ;
struct TYPE_19__ {int num_links; int num_configs; int num_dapm_routes; char* name; int /*<<< orphan*/  owner; TYPE_5__* dev; TYPE_3__* dapm_routes; TYPE_2__* codec_conf; TYPE_1__* dai_link; } ;
struct imx_audmix {int num_dai; int num_dai_conf; int num_dapm_routes; TYPE_4__ card; TYPE_3__* dapm_routes; TYPE_2__* dai_conf; TYPE_1__* dai; struct platform_device* out_pdev; struct platform_device* audmix_pdev; int /*<<< orphan*/  cpu_mclk; } ;
struct device_node {char* full_name; } ;
struct TYPE_18__ {char* source; char* sink; } ;
struct TYPE_17__ {char* name_prefix; struct device_node* of_node; } ;
struct TYPE_16__ {int num_cpus; int num_codecs; int num_platforms; char* name; char* stream_name; int dynamic; int dpcm_playback; int dpcm_capture; int ignore_pmdown_time; int no_pcm; int /*<<< orphan*/ * ops; struct snd_soc_dai_link_component* platforms; struct snd_soc_dai_link_component* cpus; struct snd_soc_dai_link_component* codecs; } ;
struct TYPE_15__ {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FSL_AUDMIX_MAX_DAIS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_13__*,char*,char*) ; 
 char* FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,char*) ; 
 void* FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC7 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  imx_audmix_be_ops ; 
 int /*<<< orphan*/  imx_audmix_fe_ops ; 
 int FUNC9 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC10 (struct device_node*) ; 
 int FUNC11 (struct device_node*,char*,int /*<<< orphan*/ *,int,struct of_phandle_args*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,struct imx_audmix*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct device_node *audmix_np = NULL, *out_cpu_np = NULL;
	struct platform_device *audmix_pdev = NULL;
	struct platform_device *cpu_pdev;
	struct of_phandle_args args;
	struct imx_audmix *priv;
	int i, num_dai, ret;
	const char *fe_name_pref = "HiFi-AUDMIX-FE-";
	char *be_name, *be_pb, *be_cp, *dai_name, *capture_dai_name;

	if (pdev->dev.parent) {
		audmix_np = pdev->dev.parent->of_node;
	} else {
		FUNC2(&pdev->dev, "Missing parent device.\n");
		return -EINVAL;
	}

	if (!audmix_np) {
		FUNC2(&pdev->dev, "Missing DT node for parent device.\n");
		return -EINVAL;
	}

	audmix_pdev = FUNC10(audmix_np);
	if (!audmix_pdev) {
		FUNC2(&pdev->dev, "Missing AUDMIX platform device for %s\n",
			np->full_name);
		return -EINVAL;
	}
	FUNC13(&audmix_pdev->dev);

	num_dai = FUNC9(audmix_np, "dais", NULL);
	if (num_dai != FSL_AUDMIX_MAX_DAIS) {
		FUNC2(&pdev->dev, "Need 2 dais to be provided for %s\n",
			audmix_np->full_name);
		return -EINVAL;
	}

	priv = FUNC7(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->num_dai = 2 * num_dai;
	priv->dai = FUNC7(&pdev->dev, priv->num_dai *
				 sizeof(struct snd_soc_dai_link), GFP_KERNEL);
	if (!priv->dai)
		return -ENOMEM;

	priv->num_dai_conf = num_dai;
	priv->dai_conf = FUNC7(&pdev->dev, priv->num_dai_conf *
				      sizeof(struct snd_soc_codec_conf),
				      GFP_KERNEL);
	if (!priv->dai_conf)
		return -ENOMEM;

	priv->num_dapm_routes = 3 * num_dai;
	priv->dapm_routes = FUNC7(&pdev->dev, priv->num_dapm_routes *
					 sizeof(struct snd_soc_dapm_route),
					 GFP_KERNEL);
	if (!priv->dapm_routes)
		return -ENOMEM;

	for (i = 0; i < num_dai; i++) {
		struct snd_soc_dai_link_component *dlc;

		/* for CPU/Codec/Platform x 2 */
		dlc = FUNC7(&pdev->dev, 6 * sizeof(*dlc), GFP_KERNEL);
		if (!dlc) {
			FUNC2(&pdev->dev, "failed to allocate dai_link\n");
			return -ENOMEM;
		}

		ret = FUNC11(audmix_np, "dais", NULL, i,
						 &args);
		if (ret < 0) {
			FUNC2(&pdev->dev, "of_parse_phandle_with_args failed\n");
			return ret;
		}

		cpu_pdev = FUNC10(args.np);
		if (!cpu_pdev) {
			FUNC2(&pdev->dev, "failed to find SAI platform device\n");
			return -EINVAL;
		}
		FUNC13(&cpu_pdev->dev);

		dai_name = FUNC6(&pdev->dev, GFP_KERNEL, "%s%s",
					  fe_name_pref, args.np->full_name + 1);

		FUNC3(pdev->dev.parent, "DAI FE name:%s\n", dai_name);

		if (i == 0) {
			out_cpu_np = args.np;
			capture_dai_name =
				FUNC6(&pdev->dev, GFP_KERNEL, "%s %s",
					       dai_name, "CPU-Capture");
		}

		priv->dai[i].cpus = &dlc[0];
		priv->dai[i].codecs = &dlc[1];
		priv->dai[i].platforms = &dlc[2];

		priv->dai[i].num_cpus = 1;
		priv->dai[i].num_codecs = 1;
		priv->dai[i].num_platforms = 1;

		priv->dai[i].name = dai_name;
		priv->dai[i].stream_name = "HiFi-AUDMIX-FE";
		priv->dai[i].codecs->dai_name = "snd-soc-dummy-dai";
		priv->dai[i].codecs->name = "snd-soc-dummy";
		priv->dai[i].cpus->of_node = args.np;
		priv->dai[i].cpus->dai_name = FUNC4(&cpu_pdev->dev);
		priv->dai[i].platforms->of_node = args.np;
		priv->dai[i].dynamic = 1;
		priv->dai[i].dpcm_playback = 1;
		priv->dai[i].dpcm_capture = (i == 0 ? 1 : 0);
		priv->dai[i].ignore_pmdown_time = 1;
		priv->dai[i].ops = &imx_audmix_fe_ops;

		/* Add AUDMIX Backend */
		be_name = FUNC6(&pdev->dev, GFP_KERNEL,
					 "audmix-%d", i);
		be_pb = FUNC6(&pdev->dev, GFP_KERNEL,
				       "AUDMIX-Playback-%d", i);
		be_cp = FUNC6(&pdev->dev, GFP_KERNEL,
				       "AUDMIX-Capture-%d", i);

		priv->dai[num_dai + i].cpus = &dlc[3];
		priv->dai[num_dai + i].codecs = &dlc[4];
		priv->dai[num_dai + i].platforms = &dlc[5];

		priv->dai[num_dai + i].num_cpus = 1;
		priv->dai[num_dai + i].num_codecs = 1;
		priv->dai[num_dai + i].num_platforms = 1;

		priv->dai[num_dai + i].name = be_name;
		priv->dai[num_dai + i].codecs->dai_name = "snd-soc-dummy-dai";
		priv->dai[num_dai + i].codecs->name = "snd-soc-dummy";
		priv->dai[num_dai + i].cpus->of_node = audmix_np;
		priv->dai[num_dai + i].cpus->dai_name = be_name;
		priv->dai[num_dai + i].platforms->name = "snd-soc-dummy";
		priv->dai[num_dai + i].no_pcm = 1;
		priv->dai[num_dai + i].dpcm_playback = 1;
		priv->dai[num_dai + i].dpcm_capture  = 1;
		priv->dai[num_dai + i].ignore_pmdown_time = 1;
		priv->dai[num_dai + i].ops = &imx_audmix_be_ops;

		priv->dai_conf[i].of_node = args.np;
		priv->dai_conf[i].name_prefix = dai_name;

		priv->dapm_routes[i].source =
			FUNC6(&pdev->dev, GFP_KERNEL, "%s %s",
				       dai_name, "CPU-Playback");
		priv->dapm_routes[i].sink = be_pb;
		priv->dapm_routes[num_dai + i].source   = be_pb;
		priv->dapm_routes[num_dai + i].sink     = be_cp;
		priv->dapm_routes[2 * num_dai + i].source = be_cp;
		priv->dapm_routes[2 * num_dai + i].sink   = capture_dai_name;
	}

	cpu_pdev = FUNC10(out_cpu_np);
	if (!cpu_pdev) {
		FUNC2(&pdev->dev, "failed to find SAI platform device\n");
		return -EINVAL;
	}
	FUNC13(&cpu_pdev->dev);

	priv->cpu_mclk = FUNC5(&cpu_pdev->dev, "mclk1");
	if (FUNC0(priv->cpu_mclk)) {
		ret = FUNC1(priv->cpu_mclk);
		FUNC2(&cpu_pdev->dev, "failed to get DAI mclk1: %d\n", ret);
		return -EINVAL;
	}

	priv->audmix_pdev = audmix_pdev;
	priv->out_pdev  = cpu_pdev;

	priv->card.dai_link = priv->dai;
	priv->card.num_links = priv->num_dai;
	priv->card.codec_conf = priv->dai_conf;
	priv->card.num_configs = priv->num_dai_conf;
	priv->card.dapm_routes = priv->dapm_routes;
	priv->card.num_dapm_routes = priv->num_dapm_routes;
	priv->card.dev = &pdev->dev;
	priv->card.owner = THIS_MODULE;
	priv->card.name = "imx-audmix";

	FUNC12(pdev, &priv->card);
	FUNC14(&priv->card, priv);

	ret = FUNC8(&pdev->dev, &priv->card);
	if (ret) {
		FUNC2(&pdev->dev, "snd_soc_register_card failed\n");
		return ret;
	}

	return ret;
}