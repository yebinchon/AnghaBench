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
struct cfpkt {int dummy; } ;
struct cfmuxl {int dummy; } ;
struct cflayer {int (* receive ) (struct cflayer*,struct cfpkt*) ;} ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  FUNC0 (struct cfpkt*) ; 
 scalar_t__ FUNC1 (struct cfpkt*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cflayer*) ; 
 int /*<<< orphan*/  FUNC3 (struct cflayer*) ; 
 struct cfmuxl* FUNC4 (struct cflayer*) ; 
 struct cflayer* FUNC5 (struct cfmuxl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (struct cflayer*,struct cfpkt*) ; 

__attribute__((used)) static int FUNC11(struct cflayer *layr, struct cfpkt *pkt)
{
	int ret;
	struct cfmuxl *muxl = FUNC4(layr);
	u8 id;
	struct cflayer *up;
	if (FUNC1(pkt, &id, 1) < 0) {
		FUNC7("erroneous Caif Packet\n");
		FUNC0(pkt);
		return -EPROTO;
	}
	FUNC8();
	up = FUNC5(muxl, id);

	if (up == NULL) {
		FUNC6("Received data on unknown link ID = %d (0x%x)"
			" up == NULL", id, id);
		FUNC0(pkt);
		/*
		 * Don't return ERROR, since modem misbehaves and sends out
		 * flow on before linksetup response.
		 */

		FUNC9();
		return /* CFGLU_EPROT; */ 0;
	}

	/* We can't hold rcu_lock during receive, so take a ref count instead */
	FUNC2(up);
	FUNC9();

	ret = up->receive(up, pkt);

	FUNC3(up);
	return ret;
}