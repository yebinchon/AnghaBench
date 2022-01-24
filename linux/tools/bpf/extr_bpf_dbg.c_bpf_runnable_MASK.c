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
struct sock_fprog {unsigned int len; struct sock_filter* filter; } ;
struct sock_filter {scalar_t__ k; int /*<<< orphan*/  code; } ;
typedef  int /*<<< orphan*/  bpf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BPF_LD ; 
 scalar_t__ SKF_AD_OFF ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ATTACH_FILTER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sock_fprog*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct sock_filter *f, unsigned int len)
{
	int sock, ret, i;
	struct sock_fprog bpf = {
		.filter = f,
		.len = len,
	};

	sock = FUNC4(AF_INET, SOCK_DGRAM, 0);
	if (sock < 0) {
		FUNC2("cannot open socket!\n");
		return false;
	}
	ret = FUNC3(sock, SOL_SOCKET, SO_ATTACH_FILTER, &bpf, sizeof(bpf));
	FUNC1(sock);
	if (ret < 0) {
		FUNC2("program not allowed to run by kernel!\n");
		return false;
	}
	for (i = 0; i < len; i++) {
		if (FUNC0(f[i].code) == BPF_LD &&
		    f[i].k > SKF_AD_OFF) {
			FUNC2("extensions currently not supported!\n");
			return false;
		}
	}

	return true;
}