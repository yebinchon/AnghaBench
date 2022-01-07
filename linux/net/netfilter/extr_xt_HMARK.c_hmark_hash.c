
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xt_hmark_info {scalar_t__ proto_mask; scalar_t__ hoffset; int hmodulus; int hashrnd; } ;
struct TYPE_2__ {int v32; } ;
struct hmark_tuple {scalar_t__ proto; TYPE_1__ uports; int dst; int src; } ;


 scalar_t__ jhash_3words (scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ reciprocal_scale (scalar_t__,int ) ;
 int swap (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline u32
hmark_hash(struct hmark_tuple *t, const struct xt_hmark_info *info)
{
 u32 hash;
 u32 src = ntohl(t->src);
 u32 dst = ntohl(t->dst);

 if (dst < src)
  swap(src, dst);

 hash = jhash_3words(src, dst, t->uports.v32, info->hashrnd);
 hash = hash ^ (t->proto & info->proto_mask);

 return reciprocal_scale(hash, info->hmodulus) + info->hoffset;
}
