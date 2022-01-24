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
struct snd_seq_client {int /*<<< orphan*/  use_lock; } ;

/* Variables and functions */
 int SNDRV_CARDS ; 
 int SNDRV_SEQ_CLIENTS_PER_CARD ; 
 int SNDRV_SEQ_DYNAMIC_CLIENTS_BEGIN ; 
 int SNDRV_SEQ_GLOBAL_CLIENTS ; 
 int SNDRV_SEQ_MAX_CLIENTS ; 
 struct snd_seq_client* FUNC0 (int) ; 
 int /*<<< orphan*/  clients_lock ; 
 scalar_t__* clienttablock ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int* seq_client_load ; 
 int snd_ecards_limit ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

struct snd_seq_client *FUNC9(int clientid)
{
	unsigned long flags;
	struct snd_seq_client *client;

	if (clientid < 0 || clientid >= SNDRV_SEQ_MAX_CLIENTS) {
		FUNC2("ALSA: seq: oops. Trying to get pointer to client %d\n",
			   clientid);
		return NULL;
	}
	FUNC7(&clients_lock, flags);
	client = FUNC0(clientid);
	if (client)
		goto __lock;
	if (clienttablock[clientid]) {
		FUNC8(&clients_lock, flags);
		return NULL;
	}
	FUNC8(&clients_lock, flags);
#ifdef CONFIG_MODULES
	if (!in_interrupt()) {
		static char client_requested[SNDRV_SEQ_GLOBAL_CLIENTS];
		static char card_requested[SNDRV_CARDS];
		if (clientid < SNDRV_SEQ_GLOBAL_CLIENTS) {
			int idx;
			
			if (!client_requested[clientid]) {
				client_requested[clientid] = 1;
				for (idx = 0; idx < 15; idx++) {
					if (seq_client_load[idx] < 0)
						break;
					if (seq_client_load[idx] == clientid) {
						request_module("snd-seq-client-%i",
							       clientid);
						break;
					}
				}
			}
		} else if (clientid < SNDRV_SEQ_DYNAMIC_CLIENTS_BEGIN) {
			int card = (clientid - SNDRV_SEQ_GLOBAL_CLIENTS) /
				SNDRV_SEQ_CLIENTS_PER_CARD;
			if (card < snd_ecards_limit) {
				if (! card_requested[card]) {
					card_requested[card] = 1;
					snd_request_card(card);
				}
				snd_seq_device_load_drivers();
			}
		}
		spin_lock_irqsave(&clients_lock, flags);
		client = clientptr(clientid);
		if (client)
			goto __lock;
		spin_unlock_irqrestore(&clients_lock, flags);
	}
#endif
	return NULL;

      __lock:
	FUNC6(&client->use_lock);
	FUNC8(&clients_lock, flags);
	return client;
}