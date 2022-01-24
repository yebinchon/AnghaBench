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
struct ext2_xattr_header {scalar_t__ h_magic; scalar_t__ h_blocks; } ;

/* Variables and functions */
 int EXT2_XATTR_MAGIC ; 
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static bool
FUNC1(struct ext2_xattr_header *header)
{
	if (header->h_magic != FUNC0(EXT2_XATTR_MAGIC) ||
	    header->h_blocks != FUNC0(1))
		return false;

	return true;
}