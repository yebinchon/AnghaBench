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
typedef  enum avc_general_plug_dir { ____Placeholder_avc_general_plug_dir } avc_general_plug_dir ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct fw_unit*,int*,unsigned int,int*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,unsigned int) ; 

int FUNC5(struct fw_unit *unit, enum avc_general_plug_dir dir,
			  unsigned int pid, u8 *format, unsigned int len)
{
	u8 *buf;
	int err;

	buf = FUNC3(len + 10, GFP_KERNEL);
	if (buf == NULL)
		return -ENOMEM;

	buf[0] = 0x00;		/* CONTROL */
	buf[1] = 0xff;		/* UNIT */
	buf[2] = 0xbf;		/* EXTENDED STREAM FORMAT INFORMATION */
	buf[3] = 0xc0;		/* SINGLE subfunction */
	buf[4] = dir;		/* Plug Direction */
	buf[5] = 0x00;		/* UNIT */
	buf[6] = 0x00;		/* PCR (Isochronous Plug) */
	buf[7] = 0xff & pid;	/* Plug ID */
	buf[8] = 0xff;		/* Padding */
	buf[9] = 0xff;		/* Support status in response */
	FUNC4(buf + 10, format, len);

	/* do transaction and check buf[1-8] are the same against command */
	err = FUNC1(unit, buf, len + 10, buf, len + 10,
				  FUNC0(1) | FUNC0(2) | FUNC0(3) | FUNC0(4) | FUNC0(5) |
				  FUNC0(6) | FUNC0(7) | FUNC0(8));
	if (err < 0)
		;
	else if (err < len + 10)
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