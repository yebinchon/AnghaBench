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
typedef  int u32 ;
struct user_namespace {int dummy; } ;
struct nfsd4_compoundargs {int /*<<< orphan*/  rqstp; } ;
struct nfsd4_cb_sec {int flavor; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  DECODE_HEAD ; 
 int /*<<< orphan*/  DECODE_TAIL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  RPC_AUTH_GSS 130 
#define  RPC_AUTH_NULL 129 
#define  RPC_AUTH_UNIX 128 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct user_namespace*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct user_namespace*,int) ; 
 struct user_namespace* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfserr_inval ; 
 scalar_t__ p ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 FUNC10(struct nfsd4_compoundargs *argp, struct nfsd4_cb_sec *cbs)
{
	DECODE_HEAD;
	struct user_namespace *userns = FUNC8(argp->rqstp);
	u32 dummy, uid, gid;
	char *machine_name;
	int i;
	int nr_secflavs;

	/* callback_sec_params4 */
	FUNC0(4);
	nr_secflavs = FUNC3(p++);
	if (nr_secflavs)
		cbs->flavor = (u32)(-1);
	else
		/* Is this legal? Be generous, take it to mean AUTH_NONE: */
		cbs->flavor = 0;
	for (i = 0; i < nr_secflavs; ++i) {
		FUNC0(4);
		dummy = FUNC3(p++);
		switch (dummy) {
		case RPC_AUTH_NULL:
			/* Nothing to read */
			if (cbs->flavor == (u32)(-1))
				cbs->flavor = RPC_AUTH_NULL;
			break;
		case RPC_AUTH_UNIX:
			FUNC0(8);
			/* stamp */
			dummy = FUNC3(p++);

			/* machine name */
			dummy = FUNC3(p++);
			FUNC0(dummy);
			FUNC1(machine_name, dummy);

			/* uid, gid */
			FUNC0(8);
			uid = FUNC3(p++);
			gid = FUNC3(p++);

			/* more gids */
			FUNC0(4);
			dummy = FUNC3(p++);
			FUNC0(dummy * 4);
			if (cbs->flavor == (u32)(-1)) {
				kuid_t kuid = FUNC7(userns, uid);
				kgid_t kgid = FUNC6(userns, gid);
				if (FUNC9(kuid) && FUNC5(kgid)) {
					cbs->uid = kuid;
					cbs->gid = kgid;
					cbs->flavor = RPC_AUTH_UNIX;
				} else {
					FUNC4("RPC_AUTH_UNIX with invalid"
						"uid or gid ignoring!\n");
				}
			}
			break;
		case RPC_AUTH_GSS:
			FUNC4("RPC_AUTH_GSS callback secflavor "
				"not supported!\n");
			FUNC0(8);
			/* gcbp_service */
			dummy = FUNC3(p++);
			/* gcbp_handle_from_server */
			dummy = FUNC3(p++);
			FUNC0(dummy);
			p += FUNC2(dummy);
			/* gcbp_handle_from_client */
			FUNC0(4);
			dummy = FUNC3(p++);
			FUNC0(dummy);
			break;
		default:
			FUNC4("Illegal callback secflavor\n");
			return nfserr_inval;
		}
	}
	DECODE_TAIL;
}