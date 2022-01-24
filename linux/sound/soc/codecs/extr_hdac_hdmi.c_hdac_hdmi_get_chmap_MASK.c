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
struct hdac_hdmi_priv {int dummy; } ;
struct hdac_hdmi_pcm {int /*<<< orphan*/  chmap; } ;
struct hdac_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct hdac_hdmi_pcm* FUNC1 (struct hdac_hdmi_priv*,int) ; 
 struct hdac_hdmi_priv* FUNC2 (struct hdac_device*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct hdac_device *hdev, int pcm_idx,
					unsigned char *chmap)
{
	struct hdac_hdmi_priv *hdmi = FUNC2(hdev);
	struct hdac_hdmi_pcm *pcm = FUNC1(hdmi, pcm_idx);

	FUNC3(chmap, pcm->chmap, FUNC0(pcm->chmap));
}