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
struct snd_info_buffer {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_PAR_PCM ; 
 int /*<<< orphan*/  AC_PAR_STREAM ; 
 unsigned int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_info_buffer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_info_buffer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_info_buffer*,char*) ; 

__attribute__((used)) static void FUNC5(struct snd_info_buffer *buffer,
			   struct hda_codec *codec, hda_nid_t nid)
{
	unsigned int pcm = FUNC0(codec, nid, AC_PAR_PCM);
	unsigned int stream = FUNC0(codec, nid, AC_PAR_STREAM);
	if (pcm == -1 || stream == -1) {
		FUNC4(buffer, "N/A\n");
		return;
	}
	FUNC3(buffer, pcm);
	FUNC1(buffer, pcm);
	FUNC2(buffer, stream);
}