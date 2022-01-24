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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 

__attribute__((used)) static size_t FUNC2(void)
{
	return
		FUNC1(sizeof(u64)) + /* TCP_NLA_BUSY */
		FUNC1(sizeof(u64)) + /* TCP_NLA_RWND_LIMITED */
		FUNC1(sizeof(u64)) + /* TCP_NLA_SNDBUF_LIMITED */
		FUNC1(sizeof(u64)) + /* TCP_NLA_DATA_SEGS_OUT */
		FUNC1(sizeof(u64)) + /* TCP_NLA_TOTAL_RETRANS */
		FUNC1(sizeof(u64)) + /* TCP_NLA_PACING_RATE */
		FUNC1(sizeof(u64)) + /* TCP_NLA_DELIVERY_RATE */
		FUNC0(sizeof(u32)) + /* TCP_NLA_SND_CWND */
		FUNC0(sizeof(u32)) + /* TCP_NLA_REORDERING */
		FUNC0(sizeof(u32)) + /* TCP_NLA_MIN_RTT */
		FUNC0(sizeof(u8)) + /* TCP_NLA_RECUR_RETRANS */
		FUNC0(sizeof(u8)) + /* TCP_NLA_DELIVERY_RATE_APP_LMT */
		FUNC0(sizeof(u32)) + /* TCP_NLA_SNDQ_SIZE */
		FUNC0(sizeof(u8)) + /* TCP_NLA_CA_STATE */
		FUNC0(sizeof(u32)) + /* TCP_NLA_SND_SSTHRESH */
		FUNC0(sizeof(u32)) + /* TCP_NLA_DELIVERED */
		FUNC0(sizeof(u32)) + /* TCP_NLA_DELIVERED_CE */
		FUNC1(sizeof(u64)) + /* TCP_NLA_BYTES_SENT */
		FUNC1(sizeof(u64)) + /* TCP_NLA_BYTES_RETRANS */
		FUNC0(sizeof(u32)) + /* TCP_NLA_DSACK_DUPS */
		FUNC0(sizeof(u32)) + /* TCP_NLA_REORD_SEEN */
		FUNC0(sizeof(u32)) + /* TCP_NLA_SRTT */
		0;
}