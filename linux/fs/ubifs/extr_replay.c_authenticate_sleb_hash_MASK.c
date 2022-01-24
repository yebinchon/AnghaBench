#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ubifs_info {int /*<<< orphan*/  hash_tfm; } ;
struct shash_desc {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* hash_desc ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,struct shash_desc*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct ubifs_info *c, struct shash_desc *log_hash, u8 *hash)
{
	FUNC0(hash_desc, c->hash_tfm);

	hash_desc->tfm = c->hash_tfm;

	FUNC2(c, log_hash, hash_desc);
	return FUNC1(hash_desc, hash);
}