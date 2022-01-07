
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_node {int dummy; } ;
struct hlist_head {int dummy; } ;
typedef scalar_t__ loff_t ;


 struct hlist_node* SEQ_START_TOKEN ;
 struct hlist_node* seq_hlist_start (struct hlist_head*,scalar_t__) ;

struct hlist_node *seq_hlist_start_head(struct hlist_head *head, loff_t pos)
{
 if (!pos)
  return SEQ_START_TOKEN;

 return seq_hlist_start(head, pos - 1);
}
