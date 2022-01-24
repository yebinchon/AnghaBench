#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* from; } ;
typedef  TYPE_1__ substring_t ;
struct kernel_pkey_params {char* info; char* encoding; char* hash_algo; } ;

/* Variables and functions */
 int EINVAL ; 
 int MAX_OPT_ARGS ; 
#define  Opt_enc 129 
 int Opt_err ; 
#define  Opt_hash 128 
 scalar_t__ FUNC0 (int,unsigned long*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  param_keys ; 
 char* FUNC2 (char**,char*) ; 

__attribute__((used)) static int FUNC3(struct kernel_pkey_params *params)
{
	unsigned long token_mask = 0;
	substring_t args[MAX_OPT_ARGS];
	char *c = params->info, *p, *q;
	int token;

	while ((p = FUNC2(&c, " \t"))) {
		if (*p == '\0' || *p == ' ' || *p == '\t')
			continue;
		token = FUNC1(p, param_keys, args);
		if (token == Opt_err)
			return -EINVAL;
		if (FUNC0(token, &token_mask))
			return -EINVAL;
		q = args[0].from;
		if (!q[0])
			return -EINVAL;

		switch (token) {
		case Opt_enc:
			params->encoding = q;
			break;

		case Opt_hash:
			params->hash_algo = q;
			break;

		default:
			return -EINVAL;
		}
	}

	return 0;
}