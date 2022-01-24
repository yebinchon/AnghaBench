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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  gimple_stmt_iterator ;
typedef  int /*<<< orphan*/  gimple ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int /*<<< orphan*/  GSI_NEW_STMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  latent_entropy_decl ; 
 int /*<<< orphan*/  long_unsigned_type_node ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(gimple_stmt_iterator *gsi,
					tree local_entropy)
{
	gimple assign;
	tree temp;
	enum tree_code op;

	/* 1. create temporary copy of latent_entropy */
	temp = FUNC2(long_unsigned_type_node, "temp_latent_entropy");

	/* 2. read... */
	FUNC0(latent_entropy_decl);
	FUNC7(latent_entropy_decl);
	assign = FUNC4(temp, latent_entropy_decl);
	FUNC6(gsi, assign, GSI_NEW_STMT);
	FUNC8(assign);

	/* 3. ...modify... */
	op = FUNC3(NULL);
	assign = FUNC1(op, temp, temp, local_entropy);
	FUNC5(gsi, assign, GSI_NEW_STMT);
	FUNC8(assign);

	/* 4. ...write latent_entropy */
	assign = FUNC4(latent_entropy_decl, temp);
	FUNC5(gsi, assign, GSI_NEW_STMT);
	FUNC8(assign);
}