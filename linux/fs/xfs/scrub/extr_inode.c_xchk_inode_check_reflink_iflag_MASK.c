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
typedef  int /*<<< orphan*/  xfs_ino_t ;
struct xfs_scrub {int /*<<< orphan*/  ip; int /*<<< orphan*/  tp; struct xfs_mount* mp; } ;
struct xfs_mount {int /*<<< orphan*/  m_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_scrub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_scrub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_scrub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(
	struct xfs_scrub	*sc,
	xfs_ino_t		ino)
{
	struct xfs_mount	*mp = sc->mp;
	bool			has_shared;
	int			error;

	if (!FUNC7(&mp->m_sb))
		return;

	error = FUNC6(sc->tp, sc->ip,
			&has_shared);
	if (!FUNC4(sc, FUNC1(mp, ino),
			FUNC0(mp, ino), &error))
		return;
	if (FUNC5(sc->ip) && !has_shared)
		FUNC3(sc, ino);
	else if (!FUNC5(sc->ip) && has_shared)
		FUNC2(sc, ino);
}