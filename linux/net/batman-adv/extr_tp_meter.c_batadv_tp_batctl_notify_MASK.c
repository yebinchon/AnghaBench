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
typedef  int u8 ;
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct batadv_priv {int dummy; } ;
typedef  enum batadv_tp_meter_reason { ____Placeholder_batadv_tp_meter_reason } batadv_tp_meter_reason ;

/* Variables and functions */
 int BATADV_TP_REASON_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*,int const*,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(enum batadv_tp_meter_reason reason,
				    const u8 *dst, struct batadv_priv *bat_priv,
				    unsigned long start_time, u64 total_sent,
				    u32 cookie)
{
	u32 test_time;
	u8 result;
	u32 total_bytes;

	if (!FUNC1(reason)) {
		result = BATADV_TP_REASON_COMPLETE;
		test_time = FUNC2(jiffies - start_time);
		total_bytes = total_sent;
	} else {
		result = reason;
		test_time = 0;
		total_bytes = 0;
	}

	FUNC0(bat_priv, dst, result, test_time,
				      total_bytes, cookie);
}