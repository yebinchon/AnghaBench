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
struct LRMI_regs {int eax; int edx; int ebx; int ecx; } ;
typedef  int /*<<< orphan*/  r ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,struct LRMI_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct LRMI_regs*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

int FUNC4 (void)
{
	struct LRMI_regs	r;
	int			retval;

	if (!FUNC0())
		return 0;

	FUNC2(&r, 0, sizeof(r));

	r.eax = 0x0000E980;
	r.edx = 0x47534943;

	retval = FUNC1(0x15, &r);

	if (!retval) {
		FUNC3("Failed!\n");
		return 0;
	}
	if (r.eax == 0x47534943) {
		FUNC3("BIOS supports GSIC call:\n");
		FUNC3("\tsignature: %c%c%c%c\n",
		       (r.eax >> 24) & 0xff,
		       (r.eax >> 16) & 0xff,
		       (r.eax >> 8) & 0xff,
		       (r.eax) & 0xff);
		FUNC3("\tcommand port = 0x%.4x\n",
		       r.ebx & 0xffff);
		FUNC3("\tcommand =      0x%.4x\n",
		       (r.ebx >> 16) & 0xffff);
		FUNC3("\tevent port =   0x%.8x\n", r.ecx);
		FUNC3("\tflags =        0x%.8x\n", r.edx);
		if (((r.ebx >> 16) & 0xffff) != 0x82) {
			FUNC3("non-default command value. If speedstep-smi "
			       "doesn't work out of the box,\nyou may want to "
			       "try out the default value by passing "
			       "smi_cmd=0x82 to the module\n ON YOUR OWN "
			       "RISK.\n");
		}
		if ((r.ebx & 0xffff) != 0xb2) {
			FUNC3("non-default command port. If speedstep-smi "
			       "doesn't work out of the box,\nyou may want to "
			       "try out the default value by passing "
			       "smi_port=0x82 to the module\n ON YOUR OWN "
			       "RISK.\n");
		}
	} else {
		FUNC3("BIOS DOES NOT support GSIC call.  Dumping registers anyway:\n");
		FUNC3("eax = 0x%.8x\n", r.eax);
		FUNC3("ebx = 0x%.8x\n", r.ebx);
		FUNC3("ecx = 0x%.8x\n", r.ecx);
		FUNC3("edx = 0x%.8x\n", r.edx);
		FUNC3("Note also that some BIOS do not support the initial "
		       "GSIC call, but the newer\nspeedstep-smi driver may "
		       "work.\nFor this, you need to pass some arguments to "
		       "the speedstep-smi driver:\n");
		FUNC3("\tsmi_cmd=0x?? smi_port=0x?? smi_sig=1\n");
		FUNC3("\nUnfortunately, you have to know what exactly are "
		       "smi_cmd and smi_port, and this\nis system "
		       "dependant.\n");
	}
	return 1;
}