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
typedef  int /*<<< orphan*/  substring_t ;
struct trusted_key_payload {long key_len; int blob_len; int /*<<< orphan*/  blob; } ;
struct trusted_key_options {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int MAX_BLOB_SIZE ; 
 long MAX_KEY_SIZE ; 
 int MAX_OPT_ARGS ; 
 long MIN_KEY_SIZE ; 
#define  Opt_err 131 
#define  Opt_load 130 
#define  Opt_new 129 
#define  Opt_update 128 
 int FUNC0 (char*,struct trusted_key_payload*,struct trusted_key_options*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  key_tokens ; 
 int FUNC2 (char*,int,long*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char**,char*) ; 

__attribute__((used)) static int FUNC6(char *datablob, struct trusted_key_payload *p,
			  struct trusted_key_options *o)
{
	substring_t args[MAX_OPT_ARGS];
	long keylen;
	int ret = -EINVAL;
	int key_cmd;
	char *c;

	/* main command */
	c = FUNC5(&datablob, " \t");
	if (!c)
		return -EINVAL;
	key_cmd = FUNC3(c, key_tokens, args);
	switch (key_cmd) {
	case Opt_new:
		/* first argument is key size */
		c = FUNC5(&datablob, " \t");
		if (!c)
			return -EINVAL;
		ret = FUNC2(c, 10, &keylen);
		if (ret < 0 || keylen < MIN_KEY_SIZE || keylen > MAX_KEY_SIZE)
			return -EINVAL;
		p->key_len = keylen;
		ret = FUNC0(datablob, p, o);
		if (ret < 0)
			return ret;
		ret = Opt_new;
		break;
	case Opt_load:
		/* first argument is sealed blob */
		c = FUNC5(&datablob, " \t");
		if (!c)
			return -EINVAL;
		p->blob_len = FUNC4(c) / 2;
		if (p->blob_len > MAX_BLOB_SIZE)
			return -EINVAL;
		ret = FUNC1(p->blob, c, p->blob_len);
		if (ret < 0)
			return -EINVAL;
		ret = FUNC0(datablob, p, o);
		if (ret < 0)
			return ret;
		ret = Opt_load;
		break;
	case Opt_update:
		/* all arguments are options */
		ret = FUNC0(datablob, p, o);
		if (ret < 0)
			return ret;
		ret = Opt_update;
		break;
	case Opt_err:
		return -EINVAL;
		break;
	}
	return ret;
}