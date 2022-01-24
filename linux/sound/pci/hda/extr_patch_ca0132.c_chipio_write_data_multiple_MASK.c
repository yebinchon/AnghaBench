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
typedef  int /*<<< orphan*/  u32 ;
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,char*) ; 

__attribute__((used)) static int FUNC2(struct hda_codec *codec,
				      const u32 *data,
				      unsigned int count)
{
	int status = 0;

	if (data == NULL) {
		FUNC1(codec, "chipio_write_data null ptr\n");
		return -EINVAL;
	}

	while ((count-- != 0) && (status == 0))
		status = FUNC0(codec, *data++);

	return status;
}