
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_tags {unsigned int nr_reserved_tags; } ;



__attribute__((used)) static inline bool blk_mq_tag_is_reserved(struct blk_mq_tags *tags,
       unsigned int tag)
{
 return tag < tags->nr_reserved_tags;
}
