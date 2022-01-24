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
typedef  int u32 ;
struct cmdif {int dummy; } ;

/* Variables and functions */
#define  DATA_REC 132 
 int EACCES ; 
#define  EXT_END_OF_FILE 131 
#define  EXT_GOTO_CMD_REC 130 
#define  EXT_LIN_ADDR_REC 129 
#define  EXT_SEG_ADDR_REC 128 
 int /*<<< orphan*/  FUNC0 (struct cmdif*,int) ; 
 int FUNC1 (unsigned char const*,int) ; 
 int FUNC2 (struct cmdif*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(struct cmdif *cif, const unsigned char *img,
			unsigned int size)
{
	const unsigned char *in;
	u32 laddr, saddr, t, val;
	int err = 0;

	laddr = saddr = 0;
	while (size > 0 && err == 0) {
		in = img;
		if (in[0] == ':') {
			t = FUNC1(&in[7], 2);
			switch (t) {
			case DATA_REC:
				err = FUNC2(cif, in, laddr + saddr);
				break;
			case EXT_SEG_ADDR_REC:
				saddr = FUNC1(&in[9], 4) << 4;
				break;
			case EXT_LIN_ADDR_REC:
				laddr = FUNC1(&in[9], 4) << 16;
				break;
			case EXT_GOTO_CMD_REC:
				val = FUNC1(&in[9], 8);
				if (FUNC0(cif, val) != 0)
					err = -EACCES;
				break;
			case EXT_END_OF_FILE:
				size = 0;
				break;
			default:
				break;
			}
			while (size > 0) {
				size--;
				if (*img++ == '\n')
					break;
			}
		}
	}
	FUNC3("load firmware return %d\n", err);
	return err;
}