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
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HEX_PREFIX ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,void const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,int /*<<< orphan*/ ,int,int,int,void const*,size_t,int) ; 

__attribute__((used)) static void FUNC3(struct seq_file *seq, int prefix_type,
				 int rowsize, int groupsize, const void *buf,
				 size_t len, bool ascii)
{
	if (seq)
		FUNC2(seq, HEX_PREFIX, prefix_type, rowsize, groupsize,
			     buf, len, ascii);
	else
		FUNC1(KERN_WARNING, FUNC0(HEX_PREFIX), prefix_type,
			       rowsize, groupsize, buf, len, ascii);
}