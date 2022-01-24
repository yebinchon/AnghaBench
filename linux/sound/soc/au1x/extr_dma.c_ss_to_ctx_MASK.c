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
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct alchemy_pcm_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 struct alchemy_pcm_ctx* FUNC0 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC1 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct alchemy_pcm_ctx *FUNC2(struct snd_pcm_substream *ss)
{
	struct snd_soc_pcm_runtime *rtd = ss->private_data;
	struct snd_soc_component *component = FUNC1(rtd, DRV_NAME);
	return FUNC0(component);
}