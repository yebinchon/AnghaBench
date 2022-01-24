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
struct snd_soc_card {int /*<<< orphan*/  dapm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC1(struct snd_soc_card *card)
{
	FUNC0(&card->dapm, "Headphone");
	FUNC0(&card->dapm, "Headset Mic");
	FUNC0(&card->dapm, "Main AMIC");
	FUNC0(&card->dapm, "Main DMIC");
	FUNC0(&card->dapm, "Main Speaker");
	FUNC0(&card->dapm, "WM1250 Output");
	FUNC0(&card->dapm, "WM1250 Input");

	return 0;
}