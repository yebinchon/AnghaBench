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

/* Variables and functions */
 int EINVAL ; 
 int MAX_OPT_ARGS ; 
#define  Opt_default 135 
#define  Opt_ecryptfs 134 
#define  Opt_enc32 133 
#define  Opt_err 132 
#define  Opt_error 131 
#define  Opt_load 130 
#define  Opt_new 129 
#define  Opt_update 128 
 int /*<<< orphan*/  key_format_tokens ; 
 int /*<<< orphan*/  key_tokens ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* FUNC3 (char**,char*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(char *datablob, const char **format,
			  char **master_desc, char **decrypted_datalen,
			  char **hex_encoded_iv)
{
	substring_t args[MAX_OPT_ARGS];
	int ret = -EINVAL;
	int key_cmd;
	int key_format;
	char *p, *keyword;

	keyword = FUNC3(&datablob, " \t");
	if (!keyword) {
		FUNC2("encrypted_key: insufficient parameters specified\n");
		return ret;
	}
	key_cmd = FUNC0(keyword, key_tokens, args);

	/* Get optional format: default | ecryptfs */
	p = FUNC3(&datablob, " \t");
	if (!p) {
		FUNC1("encrypted_key: insufficient parameters specified\n");
		return ret;
	}

	key_format = FUNC0(p, key_format_tokens, args);
	switch (key_format) {
	case Opt_ecryptfs:
	case Opt_enc32:
	case Opt_default:
		*format = p;
		*master_desc = FUNC3(&datablob, " \t");
		break;
	case Opt_error:
		*master_desc = p;
		break;
	}

	if (!*master_desc) {
		FUNC2("encrypted_key: master key parameter is missing\n");
		goto out;
	}

	if (FUNC4(*master_desc, NULL) < 0) {
		FUNC2("encrypted_key: master key parameter \'%s\' "
			"is invalid\n", *master_desc);
		goto out;
	}

	if (decrypted_datalen) {
		*decrypted_datalen = FUNC3(&datablob, " \t");
		if (!*decrypted_datalen) {
			FUNC2("encrypted_key: keylen parameter is missing\n");
			goto out;
		}
	}

	switch (key_cmd) {
	case Opt_new:
		if (!decrypted_datalen) {
			FUNC2("encrypted_key: keyword \'%s\' not allowed "
				"when called from .update method\n", keyword);
			break;
		}
		ret = 0;
		break;
	case Opt_load:
		if (!decrypted_datalen) {
			FUNC2("encrypted_key: keyword \'%s\' not allowed "
				"when called from .update method\n", keyword);
			break;
		}
		*hex_encoded_iv = FUNC3(&datablob, " \t");
		if (!*hex_encoded_iv) {
			FUNC2("encrypted_key: hex blob is missing\n");
			break;
		}
		ret = 0;
		break;
	case Opt_update:
		if (decrypted_datalen) {
			FUNC2("encrypted_key: keyword \'%s\' not allowed "
				"when called from .instantiate method\n",
				keyword);
			break;
		}
		ret = 0;
		break;
	case Opt_err:
		FUNC2("encrypted_key: keyword \'%s\' not recognized\n",
			keyword);
		break;
	}
out:
	return ret;
}