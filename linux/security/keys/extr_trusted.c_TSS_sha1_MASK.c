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
struct sdesc {int /*<<< orphan*/  shash; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sdesc*) ; 
 int FUNC1 (struct sdesc*) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char const*,unsigned int,unsigned char*) ; 
 int /*<<< orphan*/  hash_alg ; 
 int /*<<< orphan*/  hashalg ; 
 struct sdesc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdesc*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const unsigned char *data, unsigned int datalen,
		    unsigned char *digest)
{
	struct sdesc *sdesc;
	int ret;

	sdesc = FUNC3(hashalg);
	if (FUNC0(sdesc)) {
		FUNC5("trusted_key: can't alloc %s\n", hash_alg);
		return FUNC1(sdesc);
	}

	ret = FUNC2(&sdesc->shash, data, datalen, digest);
	FUNC4(sdesc);
	return ret;
}