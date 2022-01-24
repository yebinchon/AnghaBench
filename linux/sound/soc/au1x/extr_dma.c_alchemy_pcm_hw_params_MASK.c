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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct audio_stream {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct audio_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*) ; 
 int FUNC5 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct audio_stream* FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *hw_params)
{
	struct audio_stream *stream = FUNC6(substream);
	int err;

	err = FUNC5(substream,
				       FUNC1(hw_params));
	if (err < 0)
		return err;
	err = FUNC0(stream,
				    FUNC2(hw_params),
				    FUNC3(hw_params));
	if (err)
		FUNC4(substream);

	return err;
}