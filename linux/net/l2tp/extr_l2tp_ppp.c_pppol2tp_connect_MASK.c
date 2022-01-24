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
struct socket {struct sock* sk; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_state; struct l2tp_tunnel* sk_user_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  mtu; int /*<<< orphan*/ * ops; struct sock* private; int /*<<< orphan*/  hdrlen; } ;
struct pppox_sock {TYPE_1__ chan; } ;
struct pppol2tp_session {int /*<<< orphan*/  sk_lock; int /*<<< orphan*/  sk; scalar_t__ __sk; } ;
struct l2tp_tunnel_cfg {int /*<<< orphan*/  debug; int /*<<< orphan*/  encap; } ;
struct l2tp_tunnel {scalar_t__ peer_tunnel_id; scalar_t__ pwtype; scalar_t__ session_id; scalar_t__ peer_session_id; int /*<<< orphan*/  name; int /*<<< orphan*/ * sock; } ;
struct l2tp_session_cfg {scalar_t__ pw_type; int /*<<< orphan*/  member_0; } ;
struct l2tp_session {scalar_t__ peer_tunnel_id; scalar_t__ pwtype; scalar_t__ session_id; scalar_t__ peer_session_id; int /*<<< orphan*/  name; int /*<<< orphan*/ * sock; } ;
struct l2tp_connect_info {scalar_t__ fd; scalar_t__ peer_tunnel_id; int /*<<< orphan*/  peer_session_id; int /*<<< orphan*/  session_id; int /*<<< orphan*/  tunnel_id; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int EALREADY ; 
 int EBADF ; 
 int EBUSY ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int EPROTOTYPE ; 
 scalar_t__ FUNC0 (struct l2tp_tunnel*) ; 
 int /*<<< orphan*/  L2TP_ENCAPTYPE_UDP ; 
 int /*<<< orphan*/  L2TP_MSG_CONTROL ; 
 scalar_t__ L2TP_PWTYPE_PPP ; 
 int /*<<< orphan*/  PPPOL2TP_L2TP_HDR_SIZE_NOSEQ ; 
 int PPPOX_CONNECTED ; 
 int FUNC1 (struct l2tp_tunnel*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2tp_tunnel*) ; 
 int /*<<< orphan*/  FUNC3 (struct l2tp_tunnel*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct l2tp_tunnel* FUNC4 (int,struct l2tp_tunnel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct l2tp_session_cfg*) ; 
 int /*<<< orphan*/  FUNC5 (struct l2tp_tunnel*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2tp_tunnel*) ; 
 int /*<<< orphan*/  FUNC7 (struct l2tp_tunnel*) ; 
 struct pppol2tp_session* FUNC8 (struct l2tp_tunnel*) ; 
 int FUNC9 (struct l2tp_tunnel*,struct l2tp_tunnel*) ; 
 int FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct l2tp_tunnel_cfg*,struct l2tp_tunnel**) ; 
 int /*<<< orphan*/  FUNC11 (struct l2tp_tunnel*) ; 
 int /*<<< orphan*/  FUNC12 (struct l2tp_tunnel*) ; 
 struct l2tp_tunnel* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct l2tp_tunnel* FUNC14 (struct l2tp_tunnel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct l2tp_tunnel*) ; 
 int FUNC16 (struct l2tp_tunnel*,int /*<<< orphan*/ ,struct l2tp_tunnel_cfg*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  pppol2tp_chan_ops ; 
 int /*<<< orphan*/  FUNC22 (struct l2tp_tunnel*) ; 
 int FUNC23 (struct sockaddr*,int,struct l2tp_connect_info*) ; 
 int /*<<< orphan*/  FUNC24 (struct l2tp_tunnel*) ; 
 struct pppox_sock* FUNC25 (struct sock*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,struct sock*) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct sock*) ; 
 int /*<<< orphan*/  FUNC29 (struct sock*) ; 

__attribute__((used)) static int FUNC30(struct socket *sock, struct sockaddr *uservaddr,
			    int sockaddr_len, int flags)
{
	struct sock *sk = sock->sk;
	struct pppox_sock *po = FUNC25(sk);
	struct l2tp_session *session = NULL;
	struct l2tp_connect_info info;
	struct l2tp_tunnel *tunnel;
	struct pppol2tp_session *ps;
	struct l2tp_session_cfg cfg = { 0, };
	bool drop_refcnt = false;
	bool drop_tunnel = false;
	bool new_session = false;
	bool new_tunnel = false;
	int error;

	error = FUNC23(uservaddr, sockaddr_len, &info);
	if (error < 0)
		return error;

	FUNC17(sk);

	/* Check for already bound sockets */
	error = -EBUSY;
	if (sk->sk_state & PPPOX_CONNECTED)
		goto end;

	/* We don't supporting rebinding anyway */
	error = -EALREADY;
	if (sk->sk_user_data)
		goto end; /* socket is already attached */

	/* Don't bind if tunnel_id is 0 */
	error = -EINVAL;
	if (!info.tunnel_id)
		goto end;

	tunnel = FUNC13(FUNC29(sk), info.tunnel_id);
	if (tunnel)
		drop_tunnel = true;

	/* Special case: create tunnel context if session_id and
	 * peer_session_id is 0. Otherwise look up tunnel using supplied
	 * tunnel id.
	 */
	if (!info.session_id && !info.peer_session_id) {
		if (tunnel == NULL) {
			struct l2tp_tunnel_cfg tcfg = {
				.encap = L2TP_ENCAPTYPE_UDP,
				.debug = 0,
			};

			/* Prevent l2tp_tunnel_register() from trying to set up
			 * a kernel socket.
			 */
			if (info.fd < 0) {
				error = -EBADF;
				goto end;
			}

			error = FUNC10(FUNC29(sk), info.fd,
						   info.version,
						   info.tunnel_id,
						   info.peer_tunnel_id, &tcfg,
						   &tunnel);
			if (error < 0)
				goto end;

			FUNC15(tunnel);
			error = FUNC16(tunnel, FUNC29(sk),
						     &tcfg);
			if (error < 0) {
				FUNC2(tunnel);
				goto end;
			}
			drop_tunnel = true;
			new_tunnel = true;
		}
	} else {
		/* Error if we can't find the tunnel */
		error = -ENOENT;
		if (tunnel == NULL)
			goto end;

		/* Error if socket is not prepped */
		if (tunnel->sock == NULL)
			goto end;
	}

	if (tunnel->peer_tunnel_id == 0)
		tunnel->peer_tunnel_id = info.peer_tunnel_id;

	session = FUNC14(tunnel, info.session_id);
	if (session) {
		drop_refcnt = true;

		if (session->pwtype != L2TP_PWTYPE_PPP) {
			error = -EPROTOTYPE;
			goto end;
		}

		ps = FUNC8(session);

		/* Using a pre-existing session is fine as long as it hasn't
		 * been connected yet.
		 */
		FUNC19(&ps->sk_lock);
		if (FUNC27(ps->sk,
					      FUNC18(&ps->sk_lock)) ||
		    ps->__sk) {
			FUNC20(&ps->sk_lock);
			error = -EEXIST;
			goto end;
		}
	} else {
		cfg.pw_type = L2TP_PWTYPE_PPP;

		session = FUNC4(sizeof(struct pppol2tp_session),
					      tunnel, info.session_id,
					      info.peer_session_id, &cfg);
		if (FUNC0(session)) {
			error = FUNC1(session);
			goto end;
		}

		FUNC22(session);
		ps = FUNC8(session);
		FUNC7(session);

		FUNC19(&ps->sk_lock);
		error = FUNC9(session, tunnel);
		if (error < 0) {
			FUNC20(&ps->sk_lock);
			FUNC2(session);
			goto end;
		}
		drop_refcnt = true;
		new_session = true;
	}

	/* Special case: if source & dest session_id == 0x0000, this
	 * socket is being created to manage the tunnel. Just set up
	 * the internal context for use by ioctl() and sockopt()
	 * handlers.
	 */
	if ((session->session_id == 0) &&
	    (session->peer_session_id == 0)) {
		error = 0;
		goto out_no_ppp;
	}

	/* The only header we need to worry about is the L2TP
	 * header. This size is different depending on whether
	 * sequence numbers are enabled for the data channel.
	 */
	po->chan.hdrlen = PPPOL2TP_L2TP_HDR_SIZE_NOSEQ;

	po->chan.private = sk;
	po->chan.ops	 = &pppol2tp_chan_ops;
	po->chan.mtu	 = FUNC24(tunnel);

	error = FUNC21(FUNC29(sk), &po->chan);
	if (error) {
		FUNC20(&ps->sk_lock);
		goto end;
	}

out_no_ppp:
	/* This is how we get the session context from the socket. */
	sk->sk_user_data = session;
	FUNC26(ps->sk, sk);
	FUNC20(&ps->sk_lock);

	/* Keep the reference we've grabbed on the session: sk doesn't expect
	 * the session to disappear. pppol2tp_session_destruct() is responsible
	 * for dropping it.
	 */
	drop_refcnt = false;

	sk->sk_state = PPPOX_CONNECTED;
	FUNC3(session, L2TP_MSG_CONTROL, "%s: created\n",
		  session->name);

end:
	if (error) {
		if (new_session)
			FUNC6(session);
		if (new_tunnel)
			FUNC12(tunnel);
	}
	if (drop_refcnt)
		FUNC5(session);
	if (drop_tunnel)
		FUNC11(tunnel);
	FUNC28(sk);

	return error;
}