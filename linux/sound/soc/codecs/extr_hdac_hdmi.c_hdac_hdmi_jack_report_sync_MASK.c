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
struct hdac_hdmi_port {int dummy; } ;
struct hdac_hdmi_pcm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hdac_hdmi_pcm*,struct hdac_hdmi_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_hdmi_port*) ; 

__attribute__((used)) static void FUNC2(struct hdac_hdmi_pcm *pcm,
		struct hdac_hdmi_port *port, bool is_connect)
{
	FUNC0(pcm, port, is_connect);
	FUNC1(port);
}