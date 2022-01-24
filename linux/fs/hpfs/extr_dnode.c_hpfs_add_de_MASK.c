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
struct super_block {int dummy; } ;
struct hpfs_dirent {unsigned int namelen; int down; int /*<<< orphan*/  name; int /*<<< orphan*/  not_8x3; int /*<<< orphan*/  length; int /*<<< orphan*/  last; } ;
struct dnode {int /*<<< orphan*/  first_free; int /*<<< orphan*/  self; } ;
typedef  scalar_t__ secno ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct hpfs_dirent* FUNC2 (struct hpfs_dirent*) ; 
 unsigned int FUNC3 (unsigned int,scalar_t__) ; 
 struct hpfs_dirent* FUNC4 (struct dnode*) ; 
 struct hpfs_dirent* FUNC5 (struct dnode*) ; 
 int FUNC6 (struct super_block*,unsigned char const*,unsigned int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,char*,unsigned char const,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (char*,struct hpfs_dirent*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct hpfs_dirent*,int /*<<< orphan*/ ,unsigned int) ; 

struct hpfs_dirent *FUNC14(struct super_block *s, struct dnode *d,
				const unsigned char *name,
				unsigned namelen, secno down_ptr)
{
	struct hpfs_dirent *de;
	struct hpfs_dirent *de_end = FUNC4(d);
	unsigned d_size = FUNC3(namelen, down_ptr);
	for (de = FUNC5(d); de < de_end; de = FUNC2(de)) {
		int c = FUNC6(s, name, namelen, de->name, de->namelen, de->last);
		if (!c) {
			FUNC7(s, "name (%c,%d) already exists in dnode %08x", *name, namelen, FUNC10(d->self));
			return NULL;
		}
		if (c < 0) break;
	}
	FUNC12((char *)de + d_size, de, (char *)de_end - (char *)de);
	FUNC13(de, 0, d_size);
	if (down_ptr) {
		*(__le32 *)((char *)de + d_size - 4) = FUNC1(down_ptr);
		de->down = 1;
	}
	de->length = FUNC0(d_size);
	de->not_8x3 = FUNC8(name, namelen);
	de->namelen = namelen;
	FUNC11(de->name, name, namelen);
	FUNC9(&d->first_free, d_size);
	return de;
}