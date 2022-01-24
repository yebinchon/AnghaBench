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
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  nilfs_sufile_do_cancel_free ; 
 int FUNC0 (struct inode*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct inode *sufile,
					    __u64 *segnumv, size_t nsegs,
					    size_t *ndone)
{
	return FUNC0(sufile, segnumv, nsegs, 0, ndone,
				    nilfs_sufile_do_cancel_free);
}