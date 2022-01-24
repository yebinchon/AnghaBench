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
struct bpf_spinlock_cnt {int cnt; } ;
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_NOEXIST ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,struct bpf_spinlock_cnt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  sk_pkt_out_cnt10_fd ; 
 int /*<<< orphan*/  sk_pkt_out_cnt_fd ; 

__attribute__((used)) static void FUNC2(int sk_fd, __u32 pkt_out_cnt)
{
	struct bpf_spinlock_cnt scnt = {};
	int err;

	scnt.cnt = pkt_out_cnt;
	err = FUNC1(sk_pkt_out_cnt_fd, &sk_fd, &scnt,
				  BPF_NOEXIST);
	FUNC0(err, "bpf_map_update_elem(sk_pkt_out_cnt_fd)",
	      "err:%d errno:%d", err, errno);

	scnt.cnt *= 10;
	err = FUNC1(sk_pkt_out_cnt10_fd, &sk_fd, &scnt,
				  BPF_NOEXIST);
	FUNC0(err, "bpf_map_update_elem(sk_pkt_out_cnt10_fd)",
	      "err:%d errno:%d", err, errno);
}