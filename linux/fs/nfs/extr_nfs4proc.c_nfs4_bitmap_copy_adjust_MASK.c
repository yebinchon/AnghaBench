#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  cache_validity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FATTR4_WORD0_CHANGE ; 
 int /*<<< orphan*/  FATTR4_WORD0_SIZE ; 
 int /*<<< orphan*/  FMODE_READ ; 
 int NFS4_BITMASK_SZ ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 unsigned long NFS_INO_INVALID_CHANGE ; 
 unsigned long NFS_INO_INVALID_SIZE ; 
 unsigned long NFS_INO_REVAL_FORCED ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(__u32 *dst, const __u32 *src,
		struct inode *inode)
{
	unsigned long cache_validity;

	FUNC2(dst, src, NFS4_BITMASK_SZ*sizeof(*dst));
	if (!inode || !FUNC3(inode, FMODE_READ))
		return;

	cache_validity = FUNC1(FUNC0(inode)->cache_validity);
	if (!(cache_validity & NFS_INO_REVAL_FORCED))
		cache_validity &= ~(NFS_INO_INVALID_CHANGE
				| NFS_INO_INVALID_SIZE);

	if (!(cache_validity & NFS_INO_INVALID_SIZE))
		dst[0] &= ~FATTR4_WORD0_SIZE;

	if (!(cache_validity & NFS_INO_INVALID_CHANGE))
		dst[0] &= ~FATTR4_WORD0_CHANGE;
}