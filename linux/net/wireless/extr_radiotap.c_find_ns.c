
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct ieee80211_radiotap_iterator {TYPE_2__* _vns; TYPE_1__* current_namespace; } ;
struct TYPE_4__ {int n_ns; TYPE_1__* ns; } ;
struct TYPE_3__ {scalar_t__ oui; scalar_t__ subns; } ;



__attribute__((used)) static void find_ns(struct ieee80211_radiotap_iterator *iterator,
      uint32_t oui, uint8_t subns)
{
 int i;

 iterator->current_namespace = ((void*)0);

 if (!iterator->_vns)
  return;

 for (i = 0; i < iterator->_vns->n_ns; i++) {
  if (iterator->_vns->ns[i].oui != oui)
   continue;
  if (iterator->_vns->ns[i].subns != subns)
   continue;

  iterator->current_namespace = &iterator->_vns->ns[i];
  break;
 }
}
