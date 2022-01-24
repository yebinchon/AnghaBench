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
struct find_path_data {int /*<<< orphan*/  index; int /*<<< orphan*/  path; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head*) ; 

__attribute__((used)) static void FUNC2(void *data, struct buffer_head *bh)
{
	struct find_path_data *fp = data;

	FUNC0(bh);
	FUNC1(fp->path, fp->index, bh);
	fp->index++;
}