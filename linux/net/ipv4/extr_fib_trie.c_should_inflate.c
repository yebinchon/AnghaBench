
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key_vector {scalar_t__ pos; } ;
struct TYPE_2__ {scalar_t__ full_children; scalar_t__ empty_children; } ;


 scalar_t__ IS_TRIE (struct key_vector*) ;
 unsigned long child_length (struct key_vector*) ;
 unsigned long inflate_threshold ;
 unsigned long inflate_threshold_root ;
 TYPE_1__* tn_info (struct key_vector*) ;

__attribute__((used)) static inline bool should_inflate(struct key_vector *tp, struct key_vector *tn)
{
 unsigned long used = child_length(tn);
 unsigned long threshold = used;


 threshold *= IS_TRIE(tp) ? inflate_threshold_root : inflate_threshold;
 used -= tn_info(tn)->empty_children;
 used += tn_info(tn)->full_children;



 return (used > 1) && tn->pos && ((50 * used) >= threshold);
}
