#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nft_trans {int msg_type; int /*<<< orphan*/  ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
#define  NFT_MSG_NEWCHAIN 134 
#define  NFT_MSG_NEWFLOWTABLE 133 
#define  NFT_MSG_NEWOBJ 132 
#define  NFT_MSG_NEWRULE 131 
#define  NFT_MSG_NEWSET 130 
#define  NFT_MSG_NEWSETELEM 129 
#define  NFT_MSG_NEWTABLE 128 
 int /*<<< orphan*/  FUNC0 (struct nft_trans*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ FUNC8 (struct nft_trans*) ; 
 int /*<<< orphan*/  FUNC9 (struct nft_trans*) ; 
 int /*<<< orphan*/  FUNC10 (struct nft_trans*) ; 
 int /*<<< orphan*/  FUNC11 (struct nft_trans*) ; 
 int /*<<< orphan*/  FUNC12 (struct nft_trans*) ; 
 int /*<<< orphan*/  FUNC13 (struct nft_trans*) ; 

__attribute__((used)) static void FUNC14(struct nft_trans *trans)
{
	switch (trans->msg_type) {
	case NFT_MSG_NEWTABLE:
		FUNC4(&trans->ctx);
		break;
	case NFT_MSG_NEWCHAIN:
		FUNC1(&trans->ctx);
		break;
	case NFT_MSG_NEWRULE:
		FUNC3(&trans->ctx, FUNC12(trans));
		break;
	case NFT_MSG_NEWSET:
		FUNC6(FUNC13(trans));
		break;
	case NFT_MSG_NEWSETELEM:
		FUNC7(FUNC9(trans),
				     FUNC8(trans).priv, true);
		break;
	case NFT_MSG_NEWOBJ:
		FUNC5(&trans->ctx, FUNC11(trans));
		break;
	case NFT_MSG_NEWFLOWTABLE:
		FUNC2(FUNC10(trans));
		break;
	}
	FUNC0(trans);
}