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
 int EAGAIN ; 
 int EINVAL ; 
 int EIO ; 
 int ENOSYS ; 
 int FUNC1 (struct fw_unit*,int*,int,int*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 

int FUNC3(struct fw_unit *unit,
			  enum avc_general_plug_dir dir, unsigned int pid,
			  u8 *buf, unsigned int *len, unsigned int eid)
{
	unsigned int subfunc;
	int err;

	if (eid == 0xff)
		subfunc = 0xc0;	/* SINGLE */
	else
		subfunc = 0xc1;	/* LIST */

	buf[0] = 0x01;		/* STATUS */
	buf[1] = 0xff;		/* UNIT */
	buf[2] = 0xbf;		/* EXTENDED STREAM FORMAT INFORMATION */
	buf[3] = subfunc;	/* SINGLE or LIST */
	buf[4] = dir;		/* Plug Direction */
	buf[5] = 0x00;		/* Unit */
	buf[6] = 0x00;		/* PCR (Isochronous Plug) */
	buf[7] = 0xff & pid;	/* Plug ID */
	buf[8] = 0xff;		/* Padding */
	buf[9] = 0xff;		/* support status in response */
	buf[10] = 0xff & eid;	/* entry ID for LIST subfunction */
	buf[11] = 0xff;		/* padding */

	/* do transaction and check buf[1-7] are the same against command */
	err = FUNC1(unit, buf, 12, buf, *len,
				  FUNC0(1) | FUNC0(2) | FUNC0(3) | FUNC0(4) | FUNC0(5) |
				  FUNC0(6) | FUNC0(7));
	if (err < 0)
		;
	else if (err < 12)
		err = -EIO;
	else if (buf[0] == 0x08)	/* NOT IMPLEMENTED */
		err = -ENOSYS;
	else if (buf[0] == 0x0a)	/* REJECTED */
		err = -EINVAL;
	else if (buf[0] == 0x0b)	/* IN TRANSITION */
		err = -EAGAIN;
	/* LIST subfunction has entry ID */
	else if ((subfunc == 0xc1) && (buf[10] != eid))
		err = -EIO;
	if (err < 0)
		goto end;

	/* keep just stream format information */
	if (subfunc == 0xc0) {
		FUNC2(buf, buf + 10, err - 10);
		*len = err - 10;
	} else {
		FUNC2(buf, buf + 11, err - 11);
		*len = err - 11;
	}

	err = 0;
end:
	return err;
}