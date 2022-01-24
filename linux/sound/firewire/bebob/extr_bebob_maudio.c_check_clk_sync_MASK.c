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
typedef  int u8 ;
struct snd_bebob {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct snd_bebob*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct snd_bebob *bebob, unsigned int size, bool *sync)
{
	int err;
	u8 *buf;

	buf = FUNC2(size, GFP_KERNEL);
	if (buf == NULL)
		return -ENOMEM;

	err = FUNC0(bebob, buf, size);
	if (err < 0)
		goto end;

	/* if synced, this value is the same as SFC of FDF in CIP header */
	*sync = (buf[size - 2] != 0xff);
end:
	FUNC1(buf);
	return err;
}