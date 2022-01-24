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
struct ubifs_info {int dummy; } ;
struct ubifs_dent_node {int /*<<< orphan*/  name; int /*<<< orphan*/  nlen; } ;
struct fscrypt_name {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info const*) ; 
 scalar_t__ FUNC1 (struct fscrypt_name const*) ; 
 int /*<<< orphan*/  FUNC2 (struct fscrypt_name const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(const struct ubifs_info *c,
			  const struct ubifs_dent_node *dent,
			  const struct fscrypt_name *nm)
{
	if (!FUNC0(c))
		return 0;
	if (FUNC3(dent->nlen) != FUNC1(nm))
		return -EINVAL;
	if (FUNC4(dent->name, FUNC2(nm), FUNC1(nm)))
		return -EINVAL;
	return 0;
}