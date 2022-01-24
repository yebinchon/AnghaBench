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
typedef  scalar_t__ umode_t ;
struct seq_file {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_mode; } ;

/* Variables and functions */
 scalar_t__ S_IALLUGO ; 
 scalar_t__ S_IRWXUGO ; 
 scalar_t__ S_ISVTX ; 
 TYPE_1__* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, struct dentry *root)
{
	umode_t mode = FUNC0(root)->i_mode & S_IALLUGO & ~S_ISVTX;

	if (mode != S_IRWXUGO)
		FUNC1(m, ",mode=%o", mode);
	return 0;
}