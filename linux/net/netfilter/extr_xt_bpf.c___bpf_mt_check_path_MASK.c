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
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_SOCKET_FILTER ; 
 int EINVAL ; 
 int FUNC0 (struct bpf_prog*) ; 
 scalar_t__ XT_BPF_PATH_MAX ; 
 struct bpf_prog* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(const char *path, struct bpf_prog **ret)
{
	if (FUNC2(path, XT_BPF_PATH_MAX) == XT_BPF_PATH_MAX)
		return -EINVAL;

	*ret = FUNC1(path, BPF_PROG_TYPE_SOCKET_FILTER);
	return FUNC0(*ret);
}