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
typedef  int (* xfs_agfl_walk_fn ) (struct xfs_mount*,unsigned int,void*) ;
struct xfs_mount {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct xfs_agf {scalar_t__ agf_flcount; int /*<<< orphan*/  agf_fllast; int /*<<< orphan*/  agf_flfirst; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct xfs_mount*,struct xfs_buf*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct xfs_mount*) ; 

int
FUNC4(
	struct xfs_mount	*mp,
	struct xfs_agf		*agf,
	struct xfs_buf		*agflbp,
	xfs_agfl_walk_fn	walk_fn,
	void			*priv)
{
	__be32			*agfl_bno;
	unsigned int		i;
	int			error;

	agfl_bno = FUNC0(mp, agflbp);
	i = FUNC1(agf->agf_flfirst);

	/* Nothing to walk in an empty AGFL. */
	if (agf->agf_flcount == FUNC2(0))
		return 0;

	/* Otherwise, walk from first to last, wrapping as needed. */
	for (;;) {
		error = walk_fn(mp, FUNC1(agfl_bno[i]), priv);
		if (error)
			return error;
		if (i == FUNC1(agf->agf_fllast))
			break;
		if (++i == FUNC3(mp))
			i = 0;
	}

	return 0;
}