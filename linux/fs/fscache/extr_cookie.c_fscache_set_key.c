
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fscache_cookie {unsigned long long key_hash; scalar_t__ type; scalar_t__ parent; scalar_t__ inline_key; scalar_t__* key; } ;


 int DIV_ROUND_UP (size_t,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__* kcalloc (int,int,int ) ;
 int memcpy (scalar_t__*,void const*,size_t) ;

__attribute__((used)) static int fscache_set_key(struct fscache_cookie *cookie,
      const void *index_key, size_t index_key_len)
{
 unsigned long long h;
 u32 *buf;
 int bufs;
 int i;

 bufs = DIV_ROUND_UP(index_key_len, sizeof(*buf));

 if (index_key_len > sizeof(cookie->inline_key)) {
  buf = kcalloc(bufs, sizeof(*buf), GFP_KERNEL);
  if (!buf)
   return -ENOMEM;
  cookie->key = buf;
 } else {
  buf = (u32 *)cookie->inline_key;
 }

 memcpy(buf, index_key, index_key_len);




 h = (unsigned long)cookie->parent;
 h += index_key_len + cookie->type;

 for (i = 0; i < bufs; i++)
  h += buf[i];

 cookie->key_hash = h ^ (h >> 32);
 return 0;
}
