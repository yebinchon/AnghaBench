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
struct key_restriction {int /*<<< orphan*/  check; } ;
typedef  int /*<<< orphan*/  key_restrict_link_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct key_restriction* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct key_restriction* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct key_restriction *FUNC2(
	key_restrict_link_func_t check)
{
	struct key_restriction *keyres =
		FUNC1(sizeof(struct key_restriction), GFP_KERNEL);

	if (!keyres)
		return FUNC0(-ENOMEM);

	keyres->check = check;

	return keyres;
}