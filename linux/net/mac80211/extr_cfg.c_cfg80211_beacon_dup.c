
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cfg80211_beacon_data {int head_len; int tail_len; int beacon_ies_len; int proberesp_ies_len; int assocresp_ies_len; int probe_resp_len; int lci_len; int civicloc_len; int * civicloc; int * lci; int ftm_responder; int * probe_resp; int * assocresp_ies; int * proberesp_ies; int * beacon_ies; int * tail; int * head; } ;


 int GFP_KERNEL ;
 struct cfg80211_beacon_data* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static struct cfg80211_beacon_data *
cfg80211_beacon_dup(struct cfg80211_beacon_data *beacon)
{
 struct cfg80211_beacon_data *new_beacon;
 u8 *pos;
 int len;

 len = beacon->head_len + beacon->tail_len + beacon->beacon_ies_len +
       beacon->proberesp_ies_len + beacon->assocresp_ies_len +
       beacon->probe_resp_len + beacon->lci_len + beacon->civicloc_len;

 new_beacon = kzalloc(sizeof(*new_beacon) + len, GFP_KERNEL);
 if (!new_beacon)
  return ((void*)0);

 pos = (u8 *)(new_beacon + 1);
 if (beacon->head_len) {
  new_beacon->head_len = beacon->head_len;
  new_beacon->head = pos;
  memcpy(pos, beacon->head, beacon->head_len);
  pos += beacon->head_len;
 }
 if (beacon->tail_len) {
  new_beacon->tail_len = beacon->tail_len;
  new_beacon->tail = pos;
  memcpy(pos, beacon->tail, beacon->tail_len);
  pos += beacon->tail_len;
 }
 if (beacon->beacon_ies_len) {
  new_beacon->beacon_ies_len = beacon->beacon_ies_len;
  new_beacon->beacon_ies = pos;
  memcpy(pos, beacon->beacon_ies, beacon->beacon_ies_len);
  pos += beacon->beacon_ies_len;
 }
 if (beacon->proberesp_ies_len) {
  new_beacon->proberesp_ies_len = beacon->proberesp_ies_len;
  new_beacon->proberesp_ies = pos;
  memcpy(pos, beacon->proberesp_ies, beacon->proberesp_ies_len);
  pos += beacon->proberesp_ies_len;
 }
 if (beacon->assocresp_ies_len) {
  new_beacon->assocresp_ies_len = beacon->assocresp_ies_len;
  new_beacon->assocresp_ies = pos;
  memcpy(pos, beacon->assocresp_ies, beacon->assocresp_ies_len);
  pos += beacon->assocresp_ies_len;
 }
 if (beacon->probe_resp_len) {
  new_beacon->probe_resp_len = beacon->probe_resp_len;
  new_beacon->probe_resp = pos;
  memcpy(pos, beacon->probe_resp, beacon->probe_resp_len);
  pos += beacon->probe_resp_len;
 }


 new_beacon->ftm_responder = beacon->ftm_responder;
 if (beacon->lci) {
  new_beacon->lci_len = beacon->lci_len;
  new_beacon->lci = pos;
  memcpy(pos, beacon->lci, beacon->lci_len);
  pos += beacon->lci_len;
 }
 if (beacon->civicloc) {
  new_beacon->civicloc_len = beacon->civicloc_len;
  new_beacon->civicloc = pos;
  memcpy(pos, beacon->civicloc, beacon->civicloc_len);
  pos += beacon->civicloc_len;
 }

 return new_beacon;
}
