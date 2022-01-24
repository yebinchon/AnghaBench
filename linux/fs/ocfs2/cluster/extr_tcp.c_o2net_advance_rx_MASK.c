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
struct o2net_sock_container {scalar_t__ sc_handshake_ok; int sc_page_off; int /*<<< orphan*/  sc_sock; int /*<<< orphan*/  sc_page; } ;
struct o2net_msg {int /*<<< orphan*/  data_len; } ;
struct o2net_handshake {int dummy; } ;

/* Variables and functions */
 int EOVERFLOW ; 
 int EPROTO ; 
 int O2NET_MAX_PAYLOAD_BYTES ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct o2net_msg*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct o2net_sock_container*) ; 
 int FUNC3 (struct o2net_sock_container*,struct o2net_msg*) ; 
 int FUNC4 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct o2net_sock_container*) ; 
 int /*<<< orphan*/  FUNC6 (struct o2net_sock_container*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct o2net_sock_container*,char*,...) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct o2net_sock_container *sc)
{
	struct o2net_msg *hdr;
	int ret = 0;
	void *data;
	size_t datalen;

	FUNC8(sc, "receiving\n");
	FUNC5(sc);

	if (FUNC9(sc->sc_handshake_ok == 0)) {
		if(sc->sc_page_off < sizeof(struct o2net_handshake)) {
			data = FUNC7(sc->sc_page) + sc->sc_page_off;
			datalen = sizeof(struct o2net_handshake) - sc->sc_page_off;
			ret = FUNC4(sc->sc_sock, data, datalen);
			if (ret > 0)
				sc->sc_page_off += ret;
		}

		if (sc->sc_page_off == sizeof(struct o2net_handshake)) {
			FUNC2(sc);
			if (FUNC9(sc->sc_handshake_ok == 0))
				ret = -EPROTO;
		}
		goto out;
	}

	/* do we need more header? */
	if (sc->sc_page_off < sizeof(struct o2net_msg)) {
		data = FUNC7(sc->sc_page) + sc->sc_page_off;
		datalen = sizeof(struct o2net_msg) - sc->sc_page_off;
		ret = FUNC4(sc->sc_sock, data, datalen);
		if (ret > 0) {
			sc->sc_page_off += ret;
			/* only swab incoming here.. we can
			 * only get here once as we cross from
			 * being under to over */
			if (sc->sc_page_off == sizeof(struct o2net_msg)) {
				hdr = FUNC7(sc->sc_page);
				if (FUNC0(hdr->data_len) >
				    O2NET_MAX_PAYLOAD_BYTES)
					ret = -EOVERFLOW;
			}
		}
		if (ret <= 0)
			goto out;
	}

	if (sc->sc_page_off < sizeof(struct o2net_msg)) {
		/* oof, still don't have a header */
		goto out;
	}

	/* this was swabbed above when we first read it */
	hdr = FUNC7(sc->sc_page);

	FUNC1(hdr, "at page_off %zu\n", sc->sc_page_off);

	/* do we need more payload? */
	if (sc->sc_page_off - sizeof(struct o2net_msg) < FUNC0(hdr->data_len)) {
		/* need more payload */
		data = FUNC7(sc->sc_page) + sc->sc_page_off;
		datalen = (sizeof(struct o2net_msg) + FUNC0(hdr->data_len)) -
			  sc->sc_page_off;
		ret = FUNC4(sc->sc_sock, data, datalen);
		if (ret > 0)
			sc->sc_page_off += ret;
		if (ret <= 0)
			goto out;
	}

	if (sc->sc_page_off - sizeof(struct o2net_msg) == FUNC0(hdr->data_len)) {
		/* we can only get here once, the first time we read
		 * the payload.. so set ret to progress if the handler
		 * works out. after calling this the message is toast */
		ret = FUNC3(sc, hdr);
		if (ret == 0)
			ret = 1;
		sc->sc_page_off = 0;
	}

out:
	FUNC8(sc, "ret = %d\n", ret);
	FUNC6(sc);
	return ret;
}