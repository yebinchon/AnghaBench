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
struct hdmi_spec {int dummy; } ;
struct hda_codec {int dp_mst; struct hdmi_spec* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hdmi_spec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi_spec*) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec)
{
	struct hdmi_spec *spec = codec->spec;

	if (spec) {
		FUNC0(spec);
		FUNC1(spec);
		codec->spec = NULL;
	}
	codec->dp_mst = false;
}