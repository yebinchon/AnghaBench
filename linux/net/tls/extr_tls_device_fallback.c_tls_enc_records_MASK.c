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
typedef  int /*<<< orphan*/  u64 ;
struct scatterlist {int dummy; } ;
struct scatter_walk {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scatter_walk*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scatter_walk*,struct scatterlist*) ; 
 int FUNC3 (struct aead_request*,struct crypto_aead*,char*,char*,int /*<<< orphan*/ ,struct scatter_walk*,struct scatter_walk*,int*) ; 

__attribute__((used)) static int FUNC4(struct aead_request *aead_req,
			   struct crypto_aead *aead, struct scatterlist *sg_in,
			   struct scatterlist *sg_out, char *aad, char *iv,
			   u64 rcd_sn, int len)
{
	struct scatter_walk out, in;
	int rc;

	FUNC2(&in, sg_in);
	FUNC2(&out, sg_out);

	do {
		rc = FUNC3(aead_req, aead, aad, iv,
				    FUNC0(rcd_sn), &in, &out, &len);
		rcd_sn++;

	} while (rc == 0 && len);

	FUNC1(&in, 0, 0);
	FUNC1(&out, 1, 0);

	return rc;
}