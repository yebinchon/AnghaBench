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
struct cmdif {int dummy; } ;
typedef  int /*<<< orphan*/  snd_pcm_format_t ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct cmdif*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int
FUNC5(struct cmdif *cif,
		unsigned char mixer, unsigned char id,
		unsigned char channels, snd_pcm_format_t format)
{
	unsigned char w, ch, sig, order;

	FUNC4
	    ("setsampleformat mixer: %d id: %d channels: %d format: %d\n",
	     mixer, id, channels, format);
	ch = channels == 1;
	w = FUNC3(format) == 8;
	sig = FUNC2(format) != 0;
	order = FUNC1(format) != 0;

	if (FUNC0(cif, mixer, w, ch, order, sig, id) &&
	    FUNC0(cif, mixer, w, ch, order, sig, id)) {
		FUNC4("setsampleformat failed\n");
		return -EIO;
	}
	return 0;
}