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
struct ovl_dir_file {int is_real; int /*<<< orphan*/ * cursor; struct ovl_dir_cache* cache; } ;
struct ovl_dir_cache {scalar_t__ version; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; struct ovl_dir_file* private_data; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ovl_dir_file*,struct dentry*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int FUNC3 (struct dentry*) ; 

__attribute__((used)) static void FUNC4(struct file *file)
{
	struct ovl_dir_file *od = file->private_data;
	struct ovl_dir_cache *cache = od->cache;
	struct dentry *dentry = file->f_path.dentry;
	bool is_real;

	if (cache && FUNC2(dentry) != cache->version) {
		FUNC1(od, dentry);
		od->cache = NULL;
		od->cursor = NULL;
	}
	is_real = FUNC3(dentry);
	if (od->is_real != is_real) {
		/* is_real can only become false when dir is copied up */
		if (FUNC0(is_real))
			return;
		od->is_real = false;
	}
}