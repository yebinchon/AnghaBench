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
typedef  int /*<<< orphan*/  uid_t ;
struct user_namespace {struct user_namespace* parent; } ;
struct uid_gid_extent {int /*<<< orphan*/  count; int /*<<< orphan*/  first; int /*<<< orphan*/  lower_first; } ;
struct seq_file {struct user_namespace* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct user_namespace* FUNC3 (struct seq_file*) ; 

__attribute__((used)) static int FUNC4(struct seq_file *seq, void *v)
{
	struct user_namespace *ns = seq->private;
	struct uid_gid_extent *extent = v;
	struct user_namespace *lower_ns;
	uid_t lower;

	lower_ns = FUNC3(seq);
	if ((lower_ns == ns) && lower_ns->parent)
		lower_ns = lower_ns->parent;

	lower = FUNC1(lower_ns, FUNC0(extent->lower_first));

	FUNC2(seq, "%10u %10u %10u\n",
		extent->first,
		lower,
		extent->count);

	return 0;
}