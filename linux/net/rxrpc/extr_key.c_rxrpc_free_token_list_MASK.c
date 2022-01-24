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
struct rxrpc_key_token {int security_index; int /*<<< orphan*/  k5; struct rxrpc_key_token* kad; struct rxrpc_key_token* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  RXRPC_SECURITY_RXK5 129 
#define  RXRPC_SECURITY_RXKAD 128 
 int /*<<< orphan*/  FUNC1 (struct rxrpc_key_token*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct rxrpc_key_token *token)
{
	struct rxrpc_key_token *next;

	for (; token; token = next) {
		next = token->next;
		switch (token->security_index) {
		case RXRPC_SECURITY_RXKAD:
			FUNC1(token->kad);
			break;
		case RXRPC_SECURITY_RXK5:
			if (token->k5)
				FUNC3(token->k5);
			break;
		default:
			FUNC2("Unknown token type %x on rxrpc key\n",
			       token->security_index);
			FUNC0();
		}

		FUNC1(token);
	}
}