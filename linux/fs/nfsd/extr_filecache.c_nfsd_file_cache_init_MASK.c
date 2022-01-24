#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nfsd_file_mark {int dummy; } ;
struct nfsd_file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  nfb_lock; int /*<<< orphan*/  nfb_head; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int NFSD_FILE_HASH_SIZE ; 
 int /*<<< orphan*/  NFSD_FILE_SHUTDOWN ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfsd_file_delayed_close ; 
 int /*<<< orphan*/ * nfsd_file_fsnotify_group ; 
 int /*<<< orphan*/  nfsd_file_fsnotify_ops ; 
 TYPE_1__* nfsd_file_hashtbl ; 
 int /*<<< orphan*/  nfsd_file_lease_notifier ; 
 int /*<<< orphan*/  nfsd_file_lru ; 
 int /*<<< orphan*/  nfsd_file_lru_flags ; 
 int /*<<< orphan*/ * nfsd_file_mark_slab ; 
 int /*<<< orphan*/  nfsd_file_shrinker ; 
 int /*<<< orphan*/ * nfsd_file_slab ; 
 int /*<<< orphan*/  nfsd_filecache_laundrette ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

int
FUNC18(void)
{
	int		ret = -ENOMEM;
	unsigned int	i;

	FUNC4(NFSD_FILE_SHUTDOWN, &nfsd_file_lru_flags);

	if (nfsd_file_hashtbl)
		return 0;

	nfsd_file_hashtbl = FUNC6(NFSD_FILE_HASH_SIZE,
				sizeof(*nfsd_file_hashtbl), GFP_KERNEL);
	if (!nfsd_file_hashtbl) {
		FUNC14("nfsd: unable to allocate nfsd_file_hashtbl\n");
		goto out_err;
	}

	nfsd_file_slab = FUNC8("nfsd_file",
				sizeof(struct nfsd_file), 0, 0, NULL);
	if (!nfsd_file_slab) {
		FUNC14("nfsd: unable to create nfsd_file_slab\n");
		goto out_err;
	}

	nfsd_file_mark_slab = FUNC8("nfsd_file_mark",
					sizeof(struct nfsd_file_mark), 0, 0, NULL);
	if (!nfsd_file_mark_slab) {
		FUNC14("nfsd: unable to create nfsd_file_mark_slab\n");
		goto out_err;
	}


	ret = FUNC13(&nfsd_file_lru);
	if (ret) {
		FUNC14("nfsd: failed to init nfsd_file_lru: %d\n", ret);
		goto out_err;
	}

	ret = FUNC15(&nfsd_file_shrinker);
	if (ret) {
		FUNC14("nfsd: failed to register nfsd_file_shrinker: %d\n", ret);
		goto out_lru;
	}

	ret = FUNC10(&nfsd_file_lease_notifier);
	if (ret) {
		FUNC14("nfsd: unable to register lease notifier: %d\n", ret);
		goto out_shrinker;
	}

	nfsd_file_fsnotify_group = FUNC5(&nfsd_file_fsnotify_ops);
	if (FUNC2(nfsd_file_fsnotify_group)) {
		FUNC14("nfsd: unable to create fsnotify group: %ld\n",
			FUNC3(nfsd_file_fsnotify_group));
		nfsd_file_fsnotify_group = NULL;
		goto out_notifier;
	}

	for (i = 0; i < NFSD_FILE_HASH_SIZE; i++) {
		FUNC1(&nfsd_file_hashtbl[i].nfb_head);
		FUNC16(&nfsd_file_hashtbl[i].nfb_lock);
	}

	FUNC0(&nfsd_filecache_laundrette, nfsd_file_delayed_close);
out:
	return ret;
out_notifier:
	FUNC11(&nfsd_file_lease_notifier);
out_shrinker:
	FUNC17(&nfsd_file_shrinker);
out_lru:
	FUNC12(&nfsd_file_lru);
out_err:
	FUNC9(nfsd_file_slab);
	nfsd_file_slab = NULL;
	FUNC9(nfsd_file_mark_slab);
	nfsd_file_mark_slab = NULL;
	FUNC7(nfsd_file_hashtbl);
	nfsd_file_hashtbl = NULL;
	goto out;
}