#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mmio; TYPE_1__* card; } ;
typedef  TYPE_2__ vortex_t ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned char VORTEX_MIXER_CHNBASE ; 
 unsigned char VORTEX_MIXER_RTBASE ; 
 int VORTEX_MIXER_SR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned char) ; 

__attribute__((used)) static int
FUNC4(vortex_t * vortex, unsigned char mix, unsigned char ch)
{
	int esp14 = -1, esp18, eax, ebx, edx, ebp, esi = 0;
	//int esp1f=edi(while)=src, esp10=ch;

	eax = FUNC1(vortex->mmio, VORTEX_MIXER_SR);
	if (((1 << ch) & eax) == 0) {
		FUNC0(vortex->card->dev, "mix ALARM %x\n", eax);
		return 0;
	}
	ebp = VORTEX_MIXER_CHNBASE + (ch << 2);
	esp18 = FUNC1(vortex->mmio, ebp);
	if (esp18 & 0x10) {
		ebx = (esp18 & 0xf);
		if (mix == ebx) {
			ebx = VORTEX_MIXER_RTBASE + (mix << 2);
			edx = FUNC1(vortex->mmio, ebx);
			//7b60
			FUNC2(vortex->mmio, ebp, edx);
			FUNC2(vortex->mmio, ebx, 0);
		} else {
			//7ad3
			edx =
			    FUNC1(vortex->mmio,
				   VORTEX_MIXER_RTBASE + (ebx << 2));
			//printk(KERN_INFO "vortex: mixdelWTD: 1 addr=%x, val=%x, src=%x\n", ebx, edx, src);
			while ((edx & 0xf) != mix) {
				if ((esi) > 0xf) {
					FUNC0(vortex->card->dev,
						"mixdelWTD: error lifeboat overflow\n");
					return 0;
				}
				esp14 = ebx;
				ebx = edx & 0xf;
				ebp = ebx << 2;
				edx =
				    FUNC1(vortex->mmio,
					   VORTEX_MIXER_RTBASE + ebp);
				//printk(KERN_INFO "vortex: mixdelWTD: while addr=%x, val=%x\n", ebp, edx);
				esi++;
			}
			//7b30
			ebp = ebx << 2;
			if (edx & 0x10) {	/* Delete entry in between others */
				ebx = VORTEX_MIXER_RTBASE + ((edx & 0xf) << 2);
				edx = FUNC1(vortex->mmio, ebx);
				//7b60
				FUNC2(vortex->mmio,
					VORTEX_MIXER_RTBASE + ebp, edx);
				FUNC2(vortex->mmio, ebx, 0);
				//printk(KERN_INFO "vortex mixdelWTD between addr= 0x%x, val= 0x%x\n", ebp, edx);
			} else {	/* Delete last entry */
				//7b83
				if (esp14 == -1)
					FUNC2(vortex->mmio,
						VORTEX_MIXER_CHNBASE +
						(ch << 2), esp18 & 0xef);
				else {
					ebx = (0xffffffe0 & edx) | (0xf & ebx);
					FUNC2(vortex->mmio,
						VORTEX_MIXER_RTBASE +
						(esp14 << 2), ebx);
					//printk(KERN_INFO "vortex mixdelWTD last addr= 0x%x, val= 0x%x\n", esp14, ebx);
				}
				FUNC2(vortex->mmio,
					VORTEX_MIXER_RTBASE + ebp, 0);
				return 1;
			}
		}
	} else {
		//printk(KERN_INFO "removed last mix\n");
		//7be0
		FUNC3(vortex, ch);
		FUNC2(vortex->mmio, ebp, 0);
	}
	return 1;
}