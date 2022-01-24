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
struct seq_file {struct aa_proxy* private; } ;
struct aa_proxy {int /*<<< orphan*/  label; } ;
struct aa_profile {int /*<<< orphan*/ * hash; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 struct aa_label* FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct aa_label*) ; 
 struct aa_profile* FUNC3 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char) ; 

__attribute__((used)) static int FUNC6(struct seq_file *seq, void *v)
{
	struct aa_proxy *proxy = seq->private;
	struct aa_label *label = FUNC0(&proxy->label);
	struct aa_profile *profile = FUNC3(label);
	unsigned int i, size = FUNC1();

	if (profile->hash) {
		for (i = 0; i < size; i++)
			FUNC4(seq, "%.2x", profile->hash[i]);
		FUNC5(seq, '\n');
	}
	FUNC2(label);

	return 0;
}