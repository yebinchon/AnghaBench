#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hdsp {TYPE_1__* card; void* io_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* Digiface ; 
 int HDSP_DllError ; 
 int HDSP_PROGRAM ; 
 int HDSP_S200 ; 
 int HDSP_S300 ; 
 int /*<<< orphan*/  HDSP_SHORT_WAIT ; 
 int HDSP_S_LOAD ; 
 int /*<<< orphan*/  HDSP_control2Reg ; 
 int /*<<< orphan*/  HDSP_fifoData ; 
 int /*<<< orphan*/  HDSP_status2Register ; 
 int /*<<< orphan*/  HDSP_statusRegister ; 
 int HDSP_version1 ; 
 int HDSP_version2 ; 
 void* Multiface ; 
 void* RPM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct hdsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hdsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hdsp*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4 (struct hdsp *hdsp)
{
	if ((FUNC2 (hdsp, HDSP_statusRegister) & HDSP_DllError) != 0) {

		FUNC3(hdsp, HDSP_control2Reg, HDSP_S_LOAD);
		FUNC3(hdsp, HDSP_fifoData, 0);

		if (FUNC1(hdsp, 0, HDSP_SHORT_WAIT) < 0) {
			FUNC3(hdsp, HDSP_control2Reg, HDSP_S300);
			FUNC3(hdsp, HDSP_control2Reg, HDSP_S_LOAD);
		}

		FUNC3(hdsp, HDSP_control2Reg, HDSP_S200 | HDSP_PROGRAM);
		FUNC3 (hdsp, HDSP_fifoData, 0);
		if (FUNC1(hdsp, 0, HDSP_SHORT_WAIT) < 0)
			goto set_multi;

		FUNC3(hdsp, HDSP_control2Reg, HDSP_S_LOAD);
		FUNC3(hdsp, HDSP_fifoData, 0);
		if (FUNC1(hdsp, 0, HDSP_SHORT_WAIT) == 0) {
			hdsp->io_type = Digiface;
			FUNC0(hdsp->card->dev, "Digiface found\n");
			return 0;
		}

		FUNC3(hdsp, HDSP_control2Reg, HDSP_S300);
		FUNC3(hdsp, HDSP_control2Reg, HDSP_S_LOAD);
		FUNC3(hdsp, HDSP_fifoData, 0);
		if (FUNC1(hdsp, 0, HDSP_SHORT_WAIT) == 0)
			goto set_multi;

		FUNC3(hdsp, HDSP_control2Reg, HDSP_S300);
		FUNC3(hdsp, HDSP_control2Reg, HDSP_S_LOAD);
		FUNC3(hdsp, HDSP_fifoData, 0);
		if (FUNC1(hdsp, 0, HDSP_SHORT_WAIT) < 0)
			goto set_multi;

		hdsp->io_type = RPM;
		FUNC0(hdsp->card->dev, "RPM found\n");
		return 0;
	} else {
		/* firmware was already loaded, get iobox type */
		if (FUNC2(hdsp, HDSP_status2Register) & HDSP_version2)
			hdsp->io_type = RPM;
		else if (FUNC2(hdsp, HDSP_status2Register) & HDSP_version1)
			hdsp->io_type = Multiface;
		else
			hdsp->io_type = Digiface;
	}
	return 0;

set_multi:
	hdsp->io_type = Multiface;
	FUNC0(hdsp->card->dev, "Multiface found\n");
	return 0;
}