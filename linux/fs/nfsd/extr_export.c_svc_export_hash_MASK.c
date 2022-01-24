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
struct TYPE_2__ {int /*<<< orphan*/  mnt; int /*<<< orphan*/  dentry; } ;
struct svc_export {TYPE_1__ ex_path; int /*<<< orphan*/  ex_client; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXPORT_HASHBITS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct svc_export *exp)
{
	int hash;

	hash = FUNC0(exp->ex_client, EXPORT_HASHBITS);
	hash ^= FUNC0(exp->ex_path.dentry, EXPORT_HASHBITS);
	hash ^= FUNC0(exp->ex_path.mnt, EXPORT_HASHBITS);
	return hash;
}