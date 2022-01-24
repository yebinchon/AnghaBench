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
struct snd_dbri {int dummy; } ;
struct dbri_streaminfo {scalar_t__ offset; int /*<<< orphan*/ * substream; } ;

/* Variables and functions */
 struct dbri_streaminfo* FUNC0 (struct snd_dbri*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  D_USR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct snd_dbri* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_dbri *dbri = FUNC2(substream);
	struct dbri_streaminfo *info = FUNC0(dbri, substream);

	FUNC1(D_USR, "close audio output.\n");
	info->substream = NULL;
	info->offset = 0;

	return 0;
}