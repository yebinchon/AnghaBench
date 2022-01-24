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
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int FUNC0 (struct crypto_aead*) ; 
 struct aead_request* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,struct crypto_aead*) ; 

__attribute__((used)) static struct aead_request *FUNC3(struct crypto_aead *aead,
						   gfp_t flags)
{
	unsigned int req_size = sizeof(struct aead_request) +
		FUNC0(aead);
	struct aead_request *aead_req;

	aead_req = FUNC1(req_size, flags);
	if (aead_req)
		FUNC2(aead_req, aead);
	return aead_req;
}