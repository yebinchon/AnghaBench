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
struct key {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int FUNC1 (struct key*) ; 
 int FUNC2 (struct key*,char const*,int,char const*,int) ; 
 int FUNC3 (struct key*,char const*,int,char const*,int) ; 
 struct key* FUNC4 (unsigned int const) ; 

int FUNC5(const unsigned int id, const char *sig, int siglen,
			    const char *digest, int digestlen)
{
	struct key *keyring;

	if (siglen < 2)
		return -EINVAL;

	keyring = FUNC4(id);
	if (FUNC0(keyring))
		return FUNC1(keyring);

	switch (sig[1]) {
	case 1:
		/* v1 API expect signature without xattr type */
		return FUNC3(keyring, sig + 1, siglen - 1, digest,
				     digestlen);
	case 2:
		return FUNC2(keyring, sig, siglen, digest,
					 digestlen);
	}

	return -EOPNOTSUPP;
}