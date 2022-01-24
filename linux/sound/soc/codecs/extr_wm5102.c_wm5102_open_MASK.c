#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * adsp; } ;
struct wm5102_priv {TYPE_1__ core; } ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_compr_stream {struct snd_soc_pcm_runtime* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 struct wm5102_priv* FUNC0 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC1 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct snd_compr_stream*) ; 

__attribute__((used)) static int FUNC3(struct snd_compr_stream *stream)
{
	struct snd_soc_pcm_runtime *rtd = stream->private_data;
	struct snd_soc_component *component = FUNC1(rtd, DRV_NAME);
	struct wm5102_priv *priv = FUNC0(component);

	return FUNC2(&priv->core.adsp[0], stream);
}