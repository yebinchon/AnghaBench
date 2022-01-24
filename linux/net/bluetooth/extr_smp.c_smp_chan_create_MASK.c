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
struct smp_chan {int /*<<< orphan*/  tfm_cmac; int /*<<< orphan*/  security_timer; struct l2cap_conn* conn; int /*<<< orphan*/  tfm_ecdh; } ;
struct l2cap_conn {int /*<<< orphan*/  hcon; struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CRYPTO_ALG_INTERNAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct smp_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMP_CMD_PAIRING_FAIL ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct smp_chan* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct smp_chan*) ; 
 int /*<<< orphan*/  smp_timeout ; 

__attribute__((used)) static struct smp_chan *FUNC10(struct l2cap_conn *conn)
{
	struct l2cap_chan *chan = conn->smp;
	struct smp_chan *smp;

	smp = FUNC8(sizeof(*smp), GFP_ATOMIC);
	if (!smp)
		return NULL;

	smp->tfm_cmac = FUNC5("cmac(aes)", 0, 0);
	if (FUNC2(smp->tfm_cmac)) {
		FUNC0("Unable to create CMAC crypto context");
		goto zfree_smp;
	}

	smp->tfm_ecdh = FUNC4("ecdh", CRYPTO_ALG_INTERNAL, 0);
	if (FUNC2(smp->tfm_ecdh)) {
		FUNC0("Unable to create ECDH crypto context");
		goto free_shash;
	}

	smp->conn = conn;
	chan->data = smp;

	FUNC3(smp, SMP_CMD_PAIRING_FAIL);

	FUNC1(&smp->security_timer, smp_timeout);

	FUNC7(conn->hcon);

	return smp;

free_shash:
	FUNC6(smp->tfm_cmac);
zfree_smp:
	FUNC9(smp);
	return NULL;
}