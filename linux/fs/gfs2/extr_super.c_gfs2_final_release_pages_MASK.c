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
struct inode {int /*<<< orphan*/  i_data; } ;
struct gfs2_inode {struct gfs2_glock* i_gl; struct inode i_inode; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_flags; int /*<<< orphan*/  gl_revokes; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLF_DIRTY ; 
 int /*<<< orphan*/  GLF_LFLUSH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gfs2_inode *ip)
{
	struct inode *inode = &ip->i_inode;
	struct gfs2_glock *gl = ip->i_gl;

	FUNC3(FUNC2(ip->i_gl), 0);
	FUNC3(&inode->i_data, 0);

	if (FUNC0(&gl->gl_revokes) == 0) {
		FUNC1(GLF_LFLUSH, &gl->gl_flags);
		FUNC1(GLF_DIRTY, &gl->gl_flags);
	}
}