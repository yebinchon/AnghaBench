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
struct inode_smack {int smk_flags; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int SMK_INODE_TRANSMUTE ; 
 struct inode_smack* FUNC0 (struct inode const*) ; 

__attribute__((used)) static inline int FUNC1(const struct inode *isp)
{
	struct inode_smack *sip = FUNC0(isp);
	return (sip->smk_flags & SMK_INODE_TRANSMUTE) != 0;
}