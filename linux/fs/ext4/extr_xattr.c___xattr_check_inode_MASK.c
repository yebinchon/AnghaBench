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
typedef  int /*<<< orphan*/  u32 ;
struct inode {int dummy; } ;
struct ext4_xattr_ibody_header {scalar_t__ h_magic; } ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int /*<<< orphan*/  EXT4_XATTR_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct ext4_xattr_ibody_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,char const*,unsigned int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct inode *inode, struct ext4_xattr_ibody_header *header,
			 void *end, const char *function, unsigned int line)
{
	int error = -EFSCORRUPTED;

	if (end - (void *)header < sizeof(*header) + sizeof(u32) ||
	    (header->h_magic != FUNC2(EXT4_XATTR_MAGIC)))
		goto errout;
	error = FUNC3(FUNC0(header), end, FUNC0(header));
errout:
	if (error)
		FUNC1(inode, function, line, 0,
				   "corrupted in-inode xattr");
	return error;
}