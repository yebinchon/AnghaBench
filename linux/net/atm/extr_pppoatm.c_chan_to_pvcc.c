
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppoatm_vcc {int dummy; } ;
struct ppp_channel {scalar_t__ private; } ;



__attribute__((used)) static inline struct pppoatm_vcc *chan_to_pvcc(const struct ppp_channel *chan)
{
 return (struct pppoatm_vcc *) (chan->private);
}
