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
typedef  int u64 ;
struct sock {int /*<<< orphan*/  sk_omem_alloc; int /*<<< orphan*/  sk_bpf_storage; } ;
struct bpf_sk_storage_map {int /*<<< orphan*/  elem_size; } ;
struct bpf_sk_storage_elem {int dummy; } ;
struct bpf_sk_storage_data {int /*<<< orphan*/  data; } ;
struct bpf_sk_storage {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 int BPF_EXIST ; 
 int BPF_F_LOCK ; 
 int BPF_NOEXIST ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct bpf_sk_storage_data* FUNC0 (int) ; 
 struct bpf_sk_storage_data* FUNC1 (struct bpf_sk_storage_elem*) ; 
 struct bpf_sk_storage_elem* FUNC2 (struct bpf_sk_storage_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_sk_storage*,struct bpf_sk_storage_elem*) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_sk_storage*,struct bpf_sk_storage_elem*,int) ; 
 struct bpf_sk_storage_data* FUNC5 (struct bpf_sk_storage*,struct bpf_sk_storage_map*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct bpf_sk_storage_data*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bpf_map*,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct bpf_sk_storage_elem*) ; 
 int /*<<< orphan*/  FUNC11 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct bpf_sk_storage* FUNC14 (int /*<<< orphan*/ ) ; 
 struct bpf_sk_storage_elem* FUNC15 (struct bpf_sk_storage_map*,struct sock*,void*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct bpf_sk_storage_map*,struct bpf_sk_storage_elem*) ; 
 scalar_t__ FUNC17 (struct bpf_sk_storage_elem*) ; 
 int /*<<< orphan*/  FUNC18 (struct bpf_sk_storage_elem*) ; 
 int FUNC19 (struct sock*,struct bpf_sk_storage_map*,struct bpf_sk_storage_elem*) ; 
 scalar_t__ FUNC20 (int) ; 

__attribute__((used)) static struct bpf_sk_storage_data *FUNC21(struct sock *sk,
						     struct bpf_map *map,
						     void *value,
						     u64 map_flags)
{
	struct bpf_sk_storage_data *old_sdata = NULL;
	struct bpf_sk_storage_elem *selem;
	struct bpf_sk_storage *sk_storage;
	struct bpf_sk_storage_map *smap;
	int err;

	/* BPF_EXIST and BPF_NOEXIST cannot be both set */
	if (FUNC20((map_flags & ~BPF_F_LOCK) > BPF_EXIST) ||
	    /* BPF_F_LOCK can only be used in a value with spin_lock */
	    FUNC20((map_flags & BPF_F_LOCK) && !FUNC11(map)))
		return FUNC0(-EINVAL);

	smap = (struct bpf_sk_storage_map *)map;
	sk_storage = FUNC14(sk->sk_bpf_storage);
	if (!sk_storage || FUNC9(&sk_storage->list)) {
		/* Very first elem for this sk */
		err = FUNC7(NULL, map_flags);
		if (err)
			return FUNC0(err);

		selem = FUNC15(smap, sk, value, true);
		if (!selem)
			return FUNC0(-ENOMEM);

		err = FUNC19(sk, smap, selem);
		if (err) {
			FUNC10(selem);
			FUNC6(smap->elem_size, &sk->sk_omem_alloc);
			return FUNC0(err);
		}

		return FUNC1(selem);
	}

	if ((map_flags & BPF_F_LOCK) && !(map_flags & BPF_NOEXIST)) {
		/* Hoping to find an old_sdata to do inline update
		 * such that it can avoid taking the sk_storage->lock
		 * and changing the lists.
		 */
		old_sdata = FUNC5(sk_storage, smap, false);
		err = FUNC7(old_sdata, map_flags);
		if (err)
			return FUNC0(err);
		if (old_sdata && FUNC17(FUNC2(old_sdata))) {
			FUNC8(map, old_sdata->data,
					      value, false);
			return old_sdata;
		}
	}

	FUNC12(&sk_storage->lock);

	/* Recheck sk_storage->list under sk_storage->lock */
	if (FUNC20(FUNC9(&sk_storage->list))) {
		/* A parallel del is happening and sk_storage is going
		 * away.  It has just been checked before, so very
		 * unlikely.  Return instead of retry to keep things
		 * simple.
		 */
		err = -EAGAIN;
		goto unlock_err;
	}

	old_sdata = FUNC5(sk_storage, smap, false);
	err = FUNC7(old_sdata, map_flags);
	if (err)
		goto unlock_err;

	if (old_sdata && (map_flags & BPF_F_LOCK)) {
		FUNC8(map, old_sdata->data, value, false);
		selem = FUNC2(old_sdata);
		goto unlock;
	}

	/* sk_storage->lock is held.  Hence, we are sure
	 * we can unlink and uncharge the old_sdata successfully
	 * later.  Hence, instead of charging the new selem now
	 * and then uncharge the old selem later (which may cause
	 * a potential but unnecessary charge failure),  avoid taking
	 * a charge at all here (the "!old_sdata" check) and the
	 * old_sdata will not be uncharged later during __selem_unlink_sk().
	 */
	selem = FUNC15(smap, sk, value, !old_sdata);
	if (!selem) {
		err = -ENOMEM;
		goto unlock_err;
	}

	/* First, link the new selem to the map */
	FUNC16(smap, selem);

	/* Second, link (and publish) the new selem to sk_storage */
	FUNC3(sk_storage, selem);

	/* Third, remove old selem, SELEM(old_sdata) */
	if (old_sdata) {
		FUNC18(FUNC2(old_sdata));
		FUNC4(sk_storage, FUNC2(old_sdata), false);
	}

unlock:
	FUNC13(&sk_storage->lock);
	return FUNC1(selem);

unlock_err:
	FUNC13(&sk_storage->lock);
	return FUNC0(err);
}