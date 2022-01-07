
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_llc {void* data; } ;



void *nfc_llc_get_data(struct nfc_llc *llc)
{
 return llc->data;
}
