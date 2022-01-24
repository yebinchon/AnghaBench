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
 int FUNC0 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct inode *sufile,
						   __u64 segnum)
{
	return FUNC0(sufile,
				      FUNC1(sufile, segnum));
}