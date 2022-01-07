
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ceph_watch_item {int dummy; } ;


 int ENOMEM ;
 int GFP_NOIO ;
 int ceph_decode_32 (void**) ;
 int ceph_start_decoding (void**,void*,int,char*,int *,int*) ;
 int decode_watcher (void**,void*,struct ceph_watch_item*) ;
 struct ceph_watch_item* kcalloc (int,int,int ) ;
 int kfree (struct ceph_watch_item*) ;

__attribute__((used)) static int decode_watchers(void **p, void *end,
      struct ceph_watch_item **watchers,
      u32 *num_watchers)
{
 u8 struct_v;
 u32 struct_len;
 int i;
 int ret;

 ret = ceph_start_decoding(p, end, 1, "obj_list_watch_response_t",
      &struct_v, &struct_len);
 if (ret)
  return ret;

 *num_watchers = ceph_decode_32(p);
 *watchers = kcalloc(*num_watchers, sizeof(**watchers), GFP_NOIO);
 if (!*watchers)
  return -ENOMEM;

 for (i = 0; i < *num_watchers; i++) {
  ret = decode_watcher(p, end, *watchers + i);
  if (ret) {
   kfree(*watchers);
   return ret;
  }
 }

 return 0;
}
