#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {TYPE_5__* card; TYPE_2__* dai_link; int /*<<< orphan*/  dev; struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {TYPE_4__* driver; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct snd_soc_component {int dummy; } ;
struct snd_compr_stream {int /*<<< orphan*/  direction; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_10__ {int /*<<< orphan*/  pcm_mutex; int /*<<< orphan*/  pcm_subclass; } ;
struct TYPE_9__ {TYPE_3__* cops; } ;
struct TYPE_8__ {int (* startup ) (struct snd_compr_stream*,struct snd_soc_dai*) ;int /*<<< orphan*/  (* shutdown ) (struct snd_compr_stream*,struct snd_soc_dai*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  name; TYPE_1__* compr_ops; } ;
struct TYPE_6__ {int (* startup ) (struct snd_compr_stream*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_compr_stream*,struct snd_soc_component*) ; 
 int FUNC5 (struct snd_compr_stream*,struct snd_soc_component**) ; 
 int FUNC6 (struct snd_compr_stream*,struct snd_soc_dai*) ; 
 int FUNC7 (struct snd_compr_stream*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_compr_stream*,struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC9(struct snd_compr_stream *cstream)
{
	struct snd_soc_pcm_runtime *rtd = cstream->private_data;
	struct snd_soc_component *component;
	struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
	int ret;

	FUNC1(&rtd->card->pcm_mutex, rtd->card->pcm_subclass);

	if (cpu_dai->driver->cops && cpu_dai->driver->cops->startup) {
		ret = cpu_dai->driver->cops->startup(cstream, cpu_dai);
		if (ret < 0) {
			FUNC0(cpu_dai->dev,
				"Compress ASoC: can't open interface %s: %d\n",
				cpu_dai->name, ret);
			goto out;
		}
	}

	ret = FUNC5(cstream, &component);
	if (ret < 0)
		goto machine_err;

	if (rtd->dai_link->compr_ops && rtd->dai_link->compr_ops->startup) {
		ret = rtd->dai_link->compr_ops->startup(cstream);
		if (ret < 0) {
			FUNC0(rtd->dev,
				"Compress ASoC: %s startup failed: %d\n",
				rtd->dai_link->name, ret);
			goto machine_err;
		}
	}

	FUNC3(rtd, cstream->direction);

	FUNC2(&rtd->card->pcm_mutex);

	return 0;

machine_err:
	FUNC4(cstream, component);

	if (cpu_dai->driver->cops && cpu_dai->driver->cops->shutdown)
		cpu_dai->driver->cops->shutdown(cstream, cpu_dai);
out:
	FUNC2(&rtd->card->pcm_mutex);
	return ret;
}