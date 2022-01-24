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
typedef  void* u32 ;
struct file_security_struct {void* fown_sid; void* sid; } ;
struct file {int dummy; } ;

/* Variables and functions */
 void* FUNC0 () ; 
 struct file_security_struct* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file)
{
	struct file_security_struct *fsec = FUNC1(file);
	u32 sid = FUNC0();

	fsec->sid = sid;
	fsec->fown_sid = sid;

	return 0;
}