
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key_vector {int bits; } ;
struct TYPE_2__ {scalar_t__ empty_children; } ;


 scalar_t__ IS_TRIE (struct key_vector*) ;
 unsigned long child_length (struct key_vector*) ;
 unsigned long halve_threshold ;
 unsigned long halve_threshold_root ;
 TYPE_1__* tn_info (struct key_vector*) ;

__attribute__((used)) static inline bool should_halve(struct key_vector *tp, struct key_vector *tn)
{
 unsigned long used = child_length(tn);
 unsigned long threshold = used;


 threshold *= IS_TRIE(tp) ? halve_threshold_root : halve_threshold;
 used -= tn_info(tn)->empty_children;



 return (used > 1) && (tn->bits > 1) && ((100 * used) < threshold);
}
