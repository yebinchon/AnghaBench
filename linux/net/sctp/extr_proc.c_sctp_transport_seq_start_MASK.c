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
struct seq_file {struct sctp_ht_iter* private; } ;
struct sctp_ht_iter {int /*<<< orphan*/  hti; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*) ; 

__attribute__((used)) static void *FUNC3(struct seq_file *seq, loff_t *pos)
{
	struct sctp_ht_iter *iter = seq->private;

	FUNC1(&iter->hti);

	return FUNC0(FUNC2(seq), &iter->hti, *pos);
}