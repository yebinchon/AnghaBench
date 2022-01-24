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
struct net_device_stats {void* rx_bytes; void* rx_packets; void* tx_dropped; void* tx_bytes; void* tx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct batadv_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_CNT_RX ; 
 int /*<<< orphan*/  BATADV_CNT_RX_BYTES ; 
 int /*<<< orphan*/  BATADV_CNT_TX ; 
 int /*<<< orphan*/  BATADV_CNT_TX_BYTES ; 
 int /*<<< orphan*/  BATADV_CNT_TX_DROPPED ; 
 void* FUNC0 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 struct batadv_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static struct net_device_stats *FUNC2(struct net_device *dev)
{
	struct batadv_priv *bat_priv = FUNC1(dev);
	struct net_device_stats *stats = &dev->stats;

	stats->tx_packets = FUNC0(bat_priv, BATADV_CNT_TX);
	stats->tx_bytes = FUNC0(bat_priv, BATADV_CNT_TX_BYTES);
	stats->tx_dropped = FUNC0(bat_priv, BATADV_CNT_TX_DROPPED);
	stats->rx_packets = FUNC0(bat_priv, BATADV_CNT_RX);
	stats->rx_bytes = FUNC0(bat_priv, BATADV_CNT_RX_BYTES);
	return stats;
}