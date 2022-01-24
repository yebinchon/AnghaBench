#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int blkcnt_t ;
struct TYPE_4__ {scalar_t__ ip_clusters; } ;
struct TYPE_3__ {int s_clustersize_bits; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline blkcnt_t FUNC2(struct inode *inode)
{
	int c_to_s_bits = FUNC1(inode->i_sb)->s_clustersize_bits - 9;

	return (blkcnt_t)FUNC0(inode)->ip_clusters << c_to_s_bits;
}