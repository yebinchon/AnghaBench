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
struct hda_codec {int dummy; } ;
typedef  enum ca0132_sample_rate { ____Placeholder_ca0132_sample_rate } ca0132_sample_rate ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_PARAM_CONN_POINT_ID ; 
 int /*<<< orphan*/  CONTROL_PARAM_CONN_POINT_SAMPLE_RATE ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct hda_codec *codec,
				int connid, enum ca0132_sample_rate rate)
{
	FUNC0(codec,
			CONTROL_PARAM_CONN_POINT_ID, connid);
	FUNC0(codec,
			CONTROL_PARAM_CONN_POINT_SAMPLE_RATE, rate);
}