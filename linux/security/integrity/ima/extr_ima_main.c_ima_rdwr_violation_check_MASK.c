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
struct integrity_iint_cache {int /*<<< orphan*/  atomic_flags; } ;
struct inode {int /*<<< orphan*/  i_readcount; } ;
struct file {int f_mode; int /*<<< orphan*/  f_path; } ;
typedef  int fmode_t ;

/* Variables and functions */
 int FMODE_WRITE ; 
 int /*<<< orphan*/  IMA_MUST_MEASURE ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,char const*,struct integrity_iint_cache*,char*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char**,char*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 struct integrity_iint_cache* FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct file *file,
				     struct integrity_iint_cache *iint,
				     int must_measure,
				     char **pathbuf,
				     const char **pathname,
				     char *filename)
{
	struct inode *inode = FUNC2(file);
	fmode_t mode = file->f_mode;
	bool send_tomtou = false, send_writers = false;

	if (mode & FMODE_WRITE) {
		if (FUNC1(&inode->i_readcount) && FUNC0(inode)) {
			if (!iint)
				iint = FUNC6(inode);
			/* IMA_MEASURE is set from reader side */
			if (iint && FUNC8(IMA_MUST_MEASURE,
						&iint->atomic_flags))
				send_tomtou = true;
		}
	} else {
		if (must_measure)
			FUNC7(IMA_MUST_MEASURE, &iint->atomic_flags);
		if (FUNC5(inode) && must_measure)
			send_writers = true;
	}

	if (!send_tomtou && !send_writers)
		return;

	*pathname = FUNC4(&file->f_path, pathbuf, filename);

	if (send_tomtou)
		FUNC3(file, *pathname, iint,
				  "invalid_pcr", "ToMToU");
	if (send_writers)
		FUNC3(file, *pathname, iint,
				  "invalid_pcr", "open_writers");
}