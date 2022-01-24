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
struct xdr_stream {int dummy; } ;
struct user_namespace {int dummy; } ;
struct nfs3_mknodargs {int type; int /*<<< orphan*/  sattr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  NF3BLK 133 
#define  NF3CHR 132 
#define  NF3DIR 131 
#define  NF3FIFO 130 
#define  NF3REG 129 
#define  NF3SOCK 128 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,struct nfs3_mknodargs const*,struct user_namespace*) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int /*<<< orphan*/ ,struct user_namespace*) ; 

__attribute__((used)) static void FUNC4(struct xdr_stream *xdr,
			      const struct nfs3_mknodargs *args,
			      struct user_namespace *userns)
{
	FUNC2(xdr, args->type);
	switch (args->type) {
	case NF3CHR:
	case NF3BLK:
		FUNC1(xdr, args, userns);
		break;
	case NF3SOCK:
	case NF3FIFO:
		FUNC3(xdr, args->sattr, userns);
		break;
	case NF3REG:
	case NF3DIR:
		break;
	default:
		FUNC0();
	}
}