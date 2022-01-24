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
struct hdac_hdmi_pcm {int /*<<< orphan*/  port_list; } ;
struct hdac_device {int dummy; } ;

/* Variables and functions */
 struct hdac_hdmi_pcm* FUNC0 (struct hdac_hdmi_priv*,int) ; 
 struct hdac_hdmi_priv* FUNC1 (struct hdac_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct hdac_device *hdev, int pcm_idx)
{
	struct hdac_hdmi_priv *hdmi = FUNC1(hdev);
	struct hdac_hdmi_pcm *pcm = FUNC0(hdmi, pcm_idx);

	if (!pcm)
		return false;

	if (FUNC2(&pcm->port_list))
		return false;

	return true;
}