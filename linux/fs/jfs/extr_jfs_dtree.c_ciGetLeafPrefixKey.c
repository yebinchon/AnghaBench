
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
struct component_name {size_t namlen; scalar_t__* name; } ;
typedef int dtpage_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ JFS_NAME_MAX ;
 int JFS_OS2 ;
 int ciToUpper (struct component_name*) ;
 int dtGetKey (int *,int,struct component_name*,int) ;
 int kfree (scalar_t__*) ;
 void* kmalloc_array (scalar_t__,int,int ) ;
 int min (size_t,size_t) ;

__attribute__((used)) static int ciGetLeafPrefixKey(dtpage_t * lp, int li, dtpage_t * rp,
          int ri, struct component_name * key, int flag)
{
 int klen, namlen;
 wchar_t *pl, *pr, *kname;
 struct component_name lkey;
 struct component_name rkey;

 lkey.name = kmalloc_array(JFS_NAME_MAX + 1, sizeof(wchar_t),
     GFP_KERNEL);
 if (lkey.name == ((void*)0))
  return -ENOMEM;

 rkey.name = kmalloc_array(JFS_NAME_MAX + 1, sizeof(wchar_t),
     GFP_KERNEL);
 if (rkey.name == ((void*)0)) {
  kfree(lkey.name);
  return -ENOMEM;
 }


 dtGetKey(lp, li, &lkey, flag);
 lkey.name[lkey.namlen] = 0;

 if ((flag & JFS_OS2) == JFS_OS2)
  ciToUpper(&lkey);

 dtGetKey(rp, ri, &rkey, flag);
 rkey.name[rkey.namlen] = 0;


 if ((flag & JFS_OS2) == JFS_OS2)
  ciToUpper(&rkey);


 klen = 0;
 kname = key->name;
 namlen = min(lkey.namlen, rkey.namlen);
 for (pl = lkey.name, pr = rkey.name;
      namlen; pl++, pr++, namlen--, klen++, kname++) {
  *kname = *pr;
  if (*pl != *pr) {
   key->namlen = klen + 1;
   goto free_names;
  }
 }


 if (lkey.namlen < rkey.namlen) {
  *kname = *pr;
  key->namlen = klen + 1;
 } else
  key->namlen = klen;

free_names:
 kfree(lkey.name);
 kfree(rkey.name);
 return 0;
}
