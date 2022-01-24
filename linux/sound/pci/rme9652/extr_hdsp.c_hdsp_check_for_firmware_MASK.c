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
struct hdsp {scalar_t__ io_type; int state; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ H9632 ; 
 scalar_t__ H9652 ; 
 int HDSP_DllError ; 
 int HDSP_FirmwareCached ; 
 int HDSP_FirmwareLoaded ; 
 int /*<<< orphan*/  HDSP_statusRegister ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct hdsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hdsp*) ; 
 scalar_t__ FUNC3 (struct hdsp*) ; 

__attribute__((used)) static int FUNC4 (struct hdsp *hdsp, int load_on_demand)
{
	if (hdsp->io_type == H9652 || hdsp->io_type == H9632)
		return 0;
	if ((FUNC1 (hdsp, HDSP_statusRegister) & HDSP_DllError) != 0) {
		hdsp->state &= ~HDSP_FirmwareLoaded;
		if (! load_on_demand)
			return -EIO;
		FUNC0(hdsp->card->dev, "firmware not present.\n");
		/* try to load firmware */
		if (! (hdsp->state & HDSP_FirmwareCached)) {
			if (! FUNC2(hdsp))
				return 0;
			FUNC0(hdsp->card->dev,
				   "No firmware loaded nor cached, please upload firmware.\n");
			return -EIO;
		}
		if (FUNC3(hdsp) != 0) {
			FUNC0(hdsp->card->dev,
				   "Firmware loading from cache failed, please upload manually.\n");
			return -EIO;
		}
	}
	return 0;
}