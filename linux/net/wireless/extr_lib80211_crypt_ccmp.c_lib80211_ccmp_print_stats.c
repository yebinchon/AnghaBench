
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct lib80211_ccmp_data {int dot11RSNAStatsCCMPDecryptErrors; int dot11RSNAStatsCCMPReplays; int dot11RSNAStatsCCMPFormatErrors; int * rx_pn; int * tx_pn; int key_set; int key_idx; } ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void lib80211_ccmp_print_stats(struct seq_file *m, void *priv)
{
 struct lib80211_ccmp_data *ccmp = priv;

 seq_printf(m,
     "key[%d] alg=CCMP key_set=%d "
     "tx_pn=%02x%02x%02x%02x%02x%02x "
     "rx_pn=%02x%02x%02x%02x%02x%02x "
     "format_errors=%d replays=%d decrypt_errors=%d\n",
     ccmp->key_idx, ccmp->key_set,
     ccmp->tx_pn[0], ccmp->tx_pn[1], ccmp->tx_pn[2],
     ccmp->tx_pn[3], ccmp->tx_pn[4], ccmp->tx_pn[5],
     ccmp->rx_pn[0], ccmp->rx_pn[1], ccmp->rx_pn[2],
     ccmp->rx_pn[3], ccmp->rx_pn[4], ccmp->rx_pn[5],
     ccmp->dot11RSNAStatsCCMPFormatErrors,
     ccmp->dot11RSNAStatsCCMPReplays,
     ccmp->dot11RSNAStatsCCMPDecryptErrors);
}
