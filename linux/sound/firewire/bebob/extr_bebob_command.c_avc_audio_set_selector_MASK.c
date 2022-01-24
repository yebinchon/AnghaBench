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
struct fw_unit {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct fw_unit*,int*,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (int,int /*<<< orphan*/ ) ; 

int FUNC4(struct fw_unit *unit, unsigned int subunit_id,
			   unsigned int fb_id, unsigned int num)
{
	u8 *buf;
	int err;

	buf = FUNC3(12, GFP_KERNEL);
	if (buf == NULL)
		return -ENOMEM;

	buf[0]  = 0x00;		/* AV/C CONTROL */
	buf[1]  = 0x08 | (0x07 & subunit_id);	/* AUDIO SUBUNIT ID */
	buf[2]  = 0xb8;		/* FUNCTION BLOCK  */
	buf[3]  = 0x80;		/* type is 'selector'*/
	buf[4]  = 0xff & fb_id;	/* function block id */
	buf[5]  = 0x10;		/* control attribute is CURRENT */
	buf[6]  = 0x02;		/* selector length is 2 */
	buf[7]  = 0xff & num;	/* input function block plug number */
	buf[8]  = 0x01;		/* control selector is SELECTOR_CONTROL */

	err = FUNC1(unit, buf, 12, buf, 12,
				  FUNC0(1) | FUNC0(2) | FUNC0(3) | FUNC0(4) | FUNC0(5) |
				  FUNC0(6) | FUNC0(7) | FUNC0(8));
	if (err < 0)
		;
	else if (err < 9)
		err = -EIO;
	else if (buf[0] == 0x08) /* NOT IMPLEMENTED */
		err = -ENOSYS;
	else if (buf[0] == 0x0a) /* REJECTED */
		err = -EINVAL;
	else
		err = 0;

	FUNC2(buf);
	return err;
}