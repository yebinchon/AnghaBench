
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct idtentry {int next; int namlen; int * name; } ;
struct dtslot {int next; int * name; } ;
struct component_name {int namlen; int * name; } ;
struct TYPE_3__ {int * slot; } ;
typedef TYPE_1__ dtpage_t ;
typedef int __le16 ;


 int DTIHDRDATALEN ;
 int DTSLOTDATALEN ;
 int UniStrncmp_le (int *,int *,int) ;
 int min (int,int) ;

__attribute__((used)) static int dtCompare(struct component_name * key,
       dtpage_t * p,
       int si)
{
 wchar_t *kname;
 __le16 *name;
 int klen, namlen, len, rc;
 struct idtentry *ih;
 struct dtslot *t;
 kname = key->name;
 klen = key->namlen;

 ih = (struct idtentry *) & p->slot[si];
 si = ih->next;
 name = ih->name;
 namlen = ih->namlen;
 len = min(namlen, DTIHDRDATALEN);


 len = min(klen, len);
 if ((rc = UniStrncmp_le(kname, name, len)))
  return rc;

 klen -= len;
 namlen -= len;


 kname += len;
 while (klen > 0 && namlen > 0) {

  t = (struct dtslot *) & p->slot[si];
  len = min(namlen, DTSLOTDATALEN);
  len = min(klen, len);
  name = t->name;
  if ((rc = UniStrncmp_le(kname, name, len)))
   return rc;

  klen -= len;
  namlen -= len;
  kname += len;
  si = t->next;
 }

 return (klen - namlen);
}
