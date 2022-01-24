#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  net; } ;
struct nft_trans {int msg_type; TYPE_2__ ctx; scalar_t__ put_net; } ;
struct TYPE_7__ {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
#define  NFT_MSG_DELCHAIN 135 
#define  NFT_MSG_DELFLOWTABLE 134 
#define  NFT_MSG_DELOBJ 133 
#define  NFT_MSG_DELRULE 132 
#define  NFT_MSG_DELSET 131 
#define  NFT_MSG_DELSETELEM 130 
#define  NFT_MSG_DELTABLE 129 
#define  NFT_MSG_NEWCHAIN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nft_trans*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct nft_trans* FUNC9 (struct nft_trans*) ; 
 int /*<<< orphan*/  FUNC10 (struct nft_trans*) ; 
 TYPE_1__ FUNC11 (struct nft_trans*) ; 
 int /*<<< orphan*/  FUNC12 (struct nft_trans*) ; 
 int /*<<< orphan*/  FUNC13 (struct nft_trans*) ; 
 int /*<<< orphan*/  FUNC14 (struct nft_trans*) ; 
 int /*<<< orphan*/  FUNC15 (struct nft_trans*) ; 
 int /*<<< orphan*/  FUNC16 (struct nft_trans*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct nft_trans *trans)
{
	switch (trans->msg_type) {
	case NFT_MSG_DELTABLE:
		FUNC6(&trans->ctx);
		break;
	case NFT_MSG_NEWCHAIN:
		FUNC0(FUNC10(trans));
		FUNC1(FUNC9(trans));
		break;
	case NFT_MSG_DELCHAIN:
		FUNC2(&trans->ctx);
		break;
	case NFT_MSG_DELRULE:
		FUNC4(&trans->ctx, FUNC15(trans));
		break;
	case NFT_MSG_DELSET:
		FUNC8(FUNC16(trans));
		break;
	case NFT_MSG_DELSETELEM:
		FUNC5(&trans->ctx,
					   FUNC12(trans),
					   FUNC11(trans).priv);
		break;
	case NFT_MSG_DELOBJ:
		FUNC7(&trans->ctx, FUNC14(trans));
		break;
	case NFT_MSG_DELFLOWTABLE:
		FUNC3(FUNC13(trans));
		break;
	}

	if (trans->put_net)
		FUNC17(trans->ctx.net);

	FUNC1(trans);
}