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
typedef  int /*<<< orphan*/  u16 ;
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  hash; } ;
struct TYPE_2__ {void* no_formal_ino; void* no_addr; } ;
struct gfs2_dirent {int /*<<< orphan*/  __pad; void* de_type; void* de_name_len; void* de_rec_len; int /*<<< orphan*/  de_hash; TYPE_1__ de_inum; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_dirent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC5(const struct qstr *name, u16 reclen, struct gfs2_dirent *dent)
{
	dent->de_inum.no_addr = FUNC2(0);
	dent->de_inum.no_formal_ino = FUNC2(0);
	dent->de_hash = FUNC1(name->hash);
	dent->de_rec_len = FUNC0(reclen);
	dent->de_name_len = FUNC0(name->len);
	dent->de_type = FUNC0(0);
	FUNC4(dent->__pad, 0, sizeof(dent->__pad));
	FUNC3(dent + 1, name->name, name->len);
}