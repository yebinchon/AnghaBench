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
struct snd_soc_pcm_runtime {struct snd_soc_card* card; } ;
struct snd_soc_card {int /*<<< orphan*/  dapm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_card *card = rtd->card;

	/* set endpoints to default off mode */
	FUNC0(&card->dapm, "GSM Line Out");
	FUNC0(&card->dapm, "GSM Line In");
	FUNC0(&card->dapm, "Headset Mic");
	FUNC0(&card->dapm, "Handset Mic");
	FUNC0(&card->dapm, "Stereo Out");
	FUNC0(&card->dapm, "Handset Spk");

	/* allow audio paths from the GSM modem to run during suspend */
	FUNC1(&card->dapm, "GSM Line Out");
	FUNC1(&card->dapm, "GSM Line In");
	FUNC1(&card->dapm, "Headset Mic");
	FUNC1(&card->dapm, "Handset Mic");
	FUNC1(&card->dapm, "Stereo Out");
	FUNC1(&card->dapm, "Handset Spk");

	return 0;
}