
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int flags; int center_freq; } ;


 int IEEE80211_CHAN_DISABLED ;
 int IEEE80211_CHAN_NO_HT40MINUS ;
 int IEEE80211_CHAN_NO_HT40PLUS ;
 scalar_t__ WARN_ON (int) ;
 int scnprintf (char*,int,char*,int ,...) ;

__attribute__((used)) static int ht_print_chan(struct ieee80211_channel *chan,
    char *buf, int buf_size, int offset)
{
 if (WARN_ON(offset > buf_size))
  return 0;

 if (chan->flags & IEEE80211_CHAN_DISABLED)
  return scnprintf(buf + offset,
     buf_size - offset,
     "%d Disabled\n",
     chan->center_freq);

 return scnprintf(buf + offset,
    buf_size - offset,
    "%d HT40 %c%c\n",
    chan->center_freq,
    (chan->flags & IEEE80211_CHAN_NO_HT40MINUS) ?
    ' ' : '-',
    (chan->flags & IEEE80211_CHAN_NO_HT40PLUS) ?
    ' ' : '+');
}
