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
typedef  int /*<<< orphan*/  u32 ;
struct tcpvegas_info {int dummy; } ;
struct tcp_info {int dummy; } ;
struct sock {int dummy; } ;
struct inet_diag_req_v2 {size_t sdiag_protocol; } ;
struct inet_diag_msg {int dummy; } ;
struct inet_diag_meminfo {int dummy; } ;
struct inet_diag_handler {size_t (* idiag_get_aux_size ) (struct sock*,int) ;} ;

/* Variables and functions */
 int SK_MEMINFO_VARS ; 
 int TCP_CA_NAME_MAX ; 
 struct inet_diag_handler** inet_diag_table ; 
 size_t FUNC0 (int) ; 
 size_t FUNC1 (struct sock*,int) ; 

__attribute__((used)) static size_t FUNC2(struct sock *sk,
				const struct inet_diag_req_v2 *req,
				bool net_admin)
{
	const struct inet_diag_handler *handler;
	size_t aux = 0;

	handler = inet_diag_table[req->sdiag_protocol];
	if (handler && handler->idiag_get_aux_size)
		aux = handler->idiag_get_aux_size(sk, net_admin);

	return	  FUNC0(sizeof(struct tcp_info))
		+ FUNC0(1) /* INET_DIAG_SHUTDOWN */
		+ FUNC0(1) /* INET_DIAG_TOS */
		+ FUNC0(1) /* INET_DIAG_TCLASS */
		+ FUNC0(4) /* INET_DIAG_MARK */
		+ FUNC0(4) /* INET_DIAG_CLASS_ID */
		+ FUNC0(sizeof(struct inet_diag_meminfo))
		+ FUNC0(sizeof(struct inet_diag_msg))
		+ FUNC0(SK_MEMINFO_VARS * sizeof(u32))
		+ FUNC0(TCP_CA_NAME_MAX)
		+ FUNC0(sizeof(struct tcpvegas_info))
		+ aux
		+ 64;
}