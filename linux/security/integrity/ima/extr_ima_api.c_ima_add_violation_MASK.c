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
struct integrity_iint_cache {int dummy; } ;
struct inode {int dummy; } ;
struct ima_template_entry {int dummy; } ;
struct ima_event_data {unsigned char const* filename; char const* violation; struct file* file; struct integrity_iint_cache* iint; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  violations; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_INTEGRITY_PCR ; 
 int /*<<< orphan*/  CONFIG_IMA_MEASURE_PCR_IDX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC1 (struct file*) ; 
 int FUNC2 (struct ima_event_data*,struct ima_template_entry**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ima_template_entry*) ; 
 TYPE_1__ ima_htable ; 
 int FUNC4 (struct ima_template_entry*,int,struct inode*,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct inode*,unsigned char const*,char const*,char const*,int,int /*<<< orphan*/ ) ; 

void FUNC6(struct file *file, const unsigned char *filename,
		       struct integrity_iint_cache *iint,
		       const char *op, const char *cause)
{
	struct ima_template_entry *entry;
	struct inode *inode = FUNC1(file);
	struct ima_event_data event_data = { .iint = iint,
					     .file = file,
					     .filename = filename,
					     .violation = cause };
	int violation = 1;
	int result;

	/* can overflow, only indicator */
	FUNC0(&ima_htable.violations);

	result = FUNC2(&event_data, &entry, NULL);
	if (result < 0) {
		result = -ENOMEM;
		goto err_out;
	}
	result = FUNC4(entry, violation, inode,
				    filename, CONFIG_IMA_MEASURE_PCR_IDX);
	if (result < 0)
		FUNC3(entry);
err_out:
	FUNC5(AUDIT_INTEGRITY_PCR, inode, filename,
			    op, cause, result, 0);
}