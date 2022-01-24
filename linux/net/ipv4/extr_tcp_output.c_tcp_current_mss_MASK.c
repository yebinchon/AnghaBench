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
typedef  scalar_t__ u32 ;
struct tcphdr {int dummy; } ;
struct tcp_sock {scalar_t__ mss_cache; unsigned int tcp_header_len; } ;
struct tcp_out_options {int dummy; } ;
struct tcp_md5sig_key {int dummy; } ;
struct sock {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ icsk_pmtu_cookie; } ;

/* Variables and functions */
 struct dst_entry* FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct dst_entry const*) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int FUNC3 (struct sock*,int /*<<< orphan*/ *,struct tcp_out_options*,struct tcp_md5sig_key**) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct sock*,scalar_t__) ; 

unsigned int FUNC6(struct sock *sk)
{
	const struct tcp_sock *tp = FUNC4(sk);
	const struct dst_entry *dst = FUNC0(sk);
	u32 mss_now;
	unsigned int header_len;
	struct tcp_out_options opts;
	struct tcp_md5sig_key *md5;

	mss_now = tp->mss_cache;

	if (dst) {
		u32 mtu = FUNC1(dst);
		if (mtu != FUNC2(sk)->icsk_pmtu_cookie)
			mss_now = FUNC5(sk, mtu);
	}

	header_len = FUNC3(sk, NULL, &opts, &md5) +
		     sizeof(struct tcphdr);
	/* The mss_cache is sized based on tp->tcp_header_len, which assumes
	 * some common options. If this is an odd packet (because we have SACK
	 * blocks etc) then our calculated header_len will be different, and
	 * we have to adjust mss_now correspondingly */
	if (header_len != tp->tcp_header_len) {
		int delta = (int) header_len - tp->tcp_header_len;
		mss_now -= delta;
	}

	return mss_now;
}