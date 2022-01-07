
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dst_entry {int output; int input; } ;
struct metadata_dst {int type; struct dst_entry dst; } ;
typedef enum metadata_type { ____Placeholder_metadata_type } metadata_type ;


 int DST_METADATA ;
 int DST_NOCOUNT ;
 int DST_OBSOLETE_NONE ;
 int dst_init (struct dst_entry*,int *,int *,int,int ,int) ;
 int dst_md_discard ;
 int dst_md_discard_out ;
 int md_dst_ops ;
 int memset (struct dst_entry*,int ,scalar_t__) ;

__attribute__((used)) static void __metadata_dst_init(struct metadata_dst *md_dst,
    enum metadata_type type, u8 optslen)

{
 struct dst_entry *dst;

 dst = &md_dst->dst;
 dst_init(dst, &md_dst_ops, ((void*)0), 1, DST_OBSOLETE_NONE,
   DST_METADATA | DST_NOCOUNT);

 dst->input = dst_md_discard;
 dst->output = dst_md_discard_out;

 memset(dst + 1, 0, sizeof(*md_dst) + optslen - sizeof(*dst));
 md_dst->type = type;
}
