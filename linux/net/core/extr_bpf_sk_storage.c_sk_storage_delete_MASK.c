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
struct sock {int dummy; } ;
struct bpf_sk_storage_data {int dummy; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct bpf_sk_storage_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct bpf_sk_storage_data* FUNC2 (struct sock*,struct bpf_map*,int) ; 

__attribute__((used)) static int FUNC3(struct sock *sk, struct bpf_map *map)
{
	struct bpf_sk_storage_data *sdata;

	sdata = FUNC2(sk, map, false);
	if (!sdata)
		return -ENOENT;

	FUNC1(FUNC0(sdata));

	return 0;
}