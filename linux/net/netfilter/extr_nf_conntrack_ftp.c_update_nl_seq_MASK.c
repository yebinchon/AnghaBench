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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct nf_ct_ftp_master {unsigned int* seq_aft_nl_num; scalar_t__** seq_aft_nl; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 unsigned int NUM_SEQ_TO_REMEMBER ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct nf_conn *ct, u32 nl_seq,
			  struct nf_ct_ftp_master *info, int dir,
			  struct sk_buff *skb)
{
	unsigned int i, oldest;

	/* Look for oldest: if we find exact match, we're done. */
	for (i = 0; i < info->seq_aft_nl_num[dir]; i++) {
		if (info->seq_aft_nl[dir][i] == nl_seq)
			return;
	}

	if (info->seq_aft_nl_num[dir] < NUM_SEQ_TO_REMEMBER) {
		info->seq_aft_nl[dir][info->seq_aft_nl_num[dir]++] = nl_seq;
	} else {
		if (FUNC1(info->seq_aft_nl[dir][0], info->seq_aft_nl[dir][1]))
			oldest = 0;
		else
			oldest = 1;

		if (FUNC0(nl_seq, info->seq_aft_nl[dir][oldest]))
			info->seq_aft_nl[dir][oldest] = nl_seq;
	}
}