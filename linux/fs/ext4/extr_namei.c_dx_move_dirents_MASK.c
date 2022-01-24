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
struct ext4_dir_entry_2 {scalar_t__ inode; int /*<<< orphan*/  rec_len; int /*<<< orphan*/  name_len; } ;
struct dx_map_entry {int offs; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct ext4_dir_entry_2*,unsigned int) ; 

__attribute__((used)) static struct ext4_dir_entry_2 *
FUNC3(char *from, char *to, struct dx_map_entry *map, int count,
		unsigned blocksize)
{
	unsigned rec_len = 0;

	while (count--) {
		struct ext4_dir_entry_2 *de = (struct ext4_dir_entry_2 *)
						(from + (map->offs<<2));
		rec_len = FUNC0(de->name_len);
		FUNC2 (to, de, rec_len);
		((struct ext4_dir_entry_2 *) to)->rec_len =
				FUNC1(rec_len, blocksize);
		de->inode = 0;
		map++;
		to += rec_len;
	}
	return (struct ext4_dir_entry_2 *) (to - rec_len);
}