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
typedef  int /*<<< orphan*/  u8 ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*,struct crypto_aead*) ; 
 int FUNC2 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline struct aead_request *FUNC4(struct crypto_aead *aead, u8 *iv)
{
	struct aead_request *req;

	req = (void *)FUNC0(iv + FUNC2(aead),
				FUNC3());
	FUNC1(req, aead);
	return req;
}