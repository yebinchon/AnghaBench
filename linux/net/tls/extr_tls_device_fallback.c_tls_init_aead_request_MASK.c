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

/* Variables and functions */
 int /*<<< orphan*/  TLS_AAD_SPACE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*,struct crypto_aead*) ; 

__attribute__((used)) static void FUNC2(struct aead_request *aead_req,
				  struct crypto_aead *aead)
{
	FUNC1(aead_req, aead);
	FUNC0(aead_req, TLS_AAD_SPACE_SIZE);
}