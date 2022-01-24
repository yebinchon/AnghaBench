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
struct path {int dummy; } ;
struct fs_struct {struct path pwd; struct path root; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct fs_struct *fs, struct path *root,
				    struct path *pwd)
{
	unsigned seq;

	do {
		seq = FUNC0(&fs->seq);
		*root = fs->root;
		*pwd = fs->pwd;
	} while (FUNC1(&fs->seq, seq));
}