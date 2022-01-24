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
struct snd_ali {int num_of_codecs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ali_pcms ; 
 int FUNC1 (struct snd_ali*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct snd_ali *codec)
{
	int i, err;
	for (i = 0; i < codec->num_of_codecs && i < FUNC0(ali_pcms); i++) {
		err = FUNC1(codec, i, &ali_pcms[i]);
		if (err < 0)
			return err;
	}
	return 0;
}