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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {unsigned char* ogm_buff; int /*<<< orphan*/  ogm_buff_mutex; int /*<<< orphan*/  ogm_wq; int /*<<< orphan*/  ogm_seqno; int /*<<< orphan*/  ogm_buff_len; } ;
struct batadv_priv {TYPE_1__ bat_v; } ;
struct batadv_ogm2_packet {int /*<<< orphan*/  throughput; int /*<<< orphan*/  flags; int /*<<< orphan*/  ttl; int /*<<< orphan*/  version; int /*<<< orphan*/  packet_type; } ;
typedef  int /*<<< orphan*/  random_seqno ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_COMPAT_VERSION ; 
 int /*<<< orphan*/  BATADV_NO_FLAGS ; 
 int /*<<< orphan*/  BATADV_OGM2 ; 
 int /*<<< orphan*/  BATADV_OGM2_HLEN ; 
 int /*<<< orphan*/  BATADV_THROUGHPUT_MAX_VALUE ; 
 int /*<<< orphan*/  BATADV_TTL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  batadv_v_ogm_send ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct batadv_priv *bat_priv)
{
	struct batadv_ogm2_packet *ogm_packet;
	unsigned char *ogm_buff;
	u32 random_seqno;

	bat_priv->bat_v.ogm_buff_len = BATADV_OGM2_HLEN;
	ogm_buff = FUNC4(bat_priv->bat_v.ogm_buff_len, GFP_ATOMIC);
	if (!ogm_buff)
		return -ENOMEM;

	bat_priv->bat_v.ogm_buff = ogm_buff;
	ogm_packet = (struct batadv_ogm2_packet *)ogm_buff;
	ogm_packet->packet_type = BATADV_OGM2;
	ogm_packet->version = BATADV_COMPAT_VERSION;
	ogm_packet->ttl = BATADV_TTL;
	ogm_packet->flags = BATADV_NO_FLAGS;
	ogm_packet->throughput = FUNC3(BATADV_THROUGHPUT_MAX_VALUE);

	/* randomize initial seqno to avoid collision */
	FUNC2(&random_seqno, sizeof(random_seqno));
	FUNC1(&bat_priv->bat_v.ogm_seqno, random_seqno);
	FUNC0(&bat_priv->bat_v.ogm_wq, batadv_v_ogm_send);

	FUNC5(&bat_priv->bat_v.ogm_buff_mutex);

	return 0;
}