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
typedef  int /*<<< orphan*/  time64_t ;
struct user_key_payload {int datalen; int /*<<< orphan*/  data; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct key** data; } ;
struct key {int /*<<< orphan*/  sem; int /*<<< orphan*/  expiry; TYPE_1__ payload; int /*<<< orphan*/  perm; int /*<<< orphan*/  flags; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int /*<<< orphan*/  KEY_FLAG_ROOT_CAN_INVAL ; 
 int /*<<< orphan*/  KEY_USR_VIEW ; 
 int FUNC1 (struct key*) ; 
 size_t dns_key_error ; 
 int /*<<< orphan*/  dns_resolver_cache ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int,int,char const*,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct key*) ; 
 int /*<<< orphan*/  FUNC6 (struct key*) ; 
 int /*<<< orphan*/  key_type_dns_resolver ; 
 int FUNC7 (struct key*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 char* FUNC10 (size_t,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,size_t) ; 
 struct cred* FUNC13 (int /*<<< orphan*/ ) ; 
 struct key* FUNC14 (int /*<<< orphan*/ *,char*,struct net*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC17 (char const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 struct user_key_payload* FUNC19 (struct key*) ; 

int FUNC20(struct net *net,
	      const char *type, const char *name, size_t namelen,
	      const char *options, char **_result, time64_t *_expiry,
	      bool invalidate)
{
	struct key *rkey;
	struct user_key_payload *upayload;
	const struct cred *saved_cred;
	size_t typelen, desclen;
	char *desc, *cp;
	int ret, len;

	FUNC4("%s,%*.*s,%zu,%s",
	       type, (int)namelen, (int)namelen, name, namelen, options);

	if (!name || namelen == 0)
		return -EINVAL;

	/* construct the query key description as "[<type>:]<name>" */
	typelen = 0;
	desclen = 0;
	if (type) {
		typelen = FUNC17(type);
		if (typelen < 1)
			return -EINVAL;
		desclen += typelen + 1;
	}

	if (namelen < 3 || namelen > 255)
		return -EINVAL;
	desclen += namelen + 1;

	desc = FUNC10(desclen, GFP_KERNEL);
	if (!desc)
		return -ENOMEM;

	cp = desc;
	if (type) {
		FUNC12(cp, type, typelen);
		cp += typelen;
		*cp++ = ':';
	}
	FUNC12(cp, name, namelen);
	cp += namelen;
	*cp = '\0';

	if (!options)
		options = "";
	FUNC3("call request_key(,%s,%s)", desc, options);

	/* make the upcall, using special credentials to prevent the use of
	 * add_key() to preinstall malicious redirections
	 */
	saved_cred = FUNC13(dns_resolver_cache);
	rkey = FUNC14(&key_type_dns_resolver, desc, net, options);
	FUNC15(saved_cred);
	FUNC8(desc);
	if (FUNC0(rkey)) {
		ret = FUNC1(rkey);
		goto out;
	}

	FUNC2(&rkey->sem);
	FUNC16(KEY_FLAG_ROOT_CAN_INVAL, &rkey->flags);
	rkey->perm |= KEY_USR_VIEW;

	ret = FUNC7(rkey);
	if (ret < 0)
		goto put;

	/* If the DNS server gave an error, return that to the caller */
	ret = FUNC1(rkey->payload.data[dns_key_error]);
	if (ret)
		goto put;

	upayload = FUNC19(rkey);
	len = upayload->datalen;

	if (_result) {
		ret = -ENOMEM;
		*_result = FUNC11(upayload->data, len, GFP_KERNEL);
		if (!*_result)
			goto put;
	}

	if (_expiry)
		*_expiry = rkey->expiry;

	ret = len;
put:
	FUNC18(&rkey->sem);
	if (invalidate)
		FUNC5(rkey);
	FUNC6(rkey);
out:
	FUNC9(" = %d", ret);
	return ret;
}