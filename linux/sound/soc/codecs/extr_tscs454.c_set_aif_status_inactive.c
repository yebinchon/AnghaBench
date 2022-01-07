
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct aifs_status {int streams; } ;



__attribute__((used)) static inline void set_aif_status_inactive(struct aifs_status *status,
  int aif_id, bool playback)
{
 u8 mask = ~(0x01 << (aif_id * 2 + !playback));

 status->streams &= mask;
}
