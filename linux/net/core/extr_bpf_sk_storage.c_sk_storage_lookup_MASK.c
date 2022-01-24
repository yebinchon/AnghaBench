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
struct sock {int /*<<< orphan*/  sk_bpf_storage; } ;
struct bpf_sk_storage_map {int dummy; } ;
struct bpf_sk_storage_data {int dummy; } ;
struct bpf_sk_storage {int dummy; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 struct bpf_sk_storage_data* FUNC0 (struct bpf_sk_storage*,struct bpf_sk_storage_map*,int) ; 
 struct bpf_sk_storage* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct bpf_sk_storage_data *
FUNC2(struct sock *sk, struct bpf_map *map, bool cacheit_lockit)
{
	struct bpf_sk_storage *sk_storage;
	struct bpf_sk_storage_map *smap;

	sk_storage = FUNC1(sk->sk_bpf_storage);
	if (!sk_storage)
		return NULL;

	smap = (struct bpf_sk_storage_map *)map;
	return FUNC0(sk_storage, smap, cacheit_lockit);
}