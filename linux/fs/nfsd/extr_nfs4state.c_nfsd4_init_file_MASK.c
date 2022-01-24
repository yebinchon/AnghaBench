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
struct nfs4_file {int fi_had_conflict; int /*<<< orphan*/  fi_hash; int /*<<< orphan*/  fi_lo_recalls; int /*<<< orphan*/  fi_lo_states; int /*<<< orphan*/  fi_access; int /*<<< orphan*/  fi_fds; scalar_t__ fi_share_deny; int /*<<< orphan*/ * fi_deleg_file; int /*<<< orphan*/  fi_fhandle; int /*<<< orphan*/  fi_clnt_odstate; int /*<<< orphan*/  fi_delegations; int /*<<< orphan*/  fi_stateids; int /*<<< orphan*/  fi_lock; int /*<<< orphan*/  fi_ref; } ;
struct knfsd_fh {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct knfsd_fh*) ; 
 int /*<<< orphan*/ * file_hashtbl ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  state_lock ; 

__attribute__((used)) static void FUNC8(struct knfsd_fh *fh, unsigned int hashval,
				struct nfs4_file *fp)
{
	FUNC4(&state_lock);

	FUNC6(&fp->fi_ref, 1);
	FUNC7(&fp->fi_lock);
	FUNC0(&fp->fi_stateids);
	FUNC0(&fp->fi_delegations);
	FUNC0(&fp->fi_clnt_odstate);
	FUNC2(&fp->fi_fhandle, fh);
	fp->fi_deleg_file = NULL;
	fp->fi_had_conflict = false;
	fp->fi_share_deny = 0;
	FUNC5(fp->fi_fds, 0, sizeof(fp->fi_fds));
	FUNC5(fp->fi_access, 0, sizeof(fp->fi_access));
#ifdef CONFIG_NFSD_PNFS
	INIT_LIST_HEAD(&fp->fi_lo_states);
	atomic_set(&fp->fi_lo_recalls, 0);
#endif
	FUNC3(&fp->fi_hash, &file_hashtbl[hashval]);
}