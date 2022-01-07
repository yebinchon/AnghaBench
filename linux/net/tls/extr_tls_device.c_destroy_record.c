
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_record_info {int num_frags; int * frags; } ;


 int __skb_frag_unref (int *) ;
 int kfree (struct tls_record_info*) ;

__attribute__((used)) static void destroy_record(struct tls_record_info *record)
{
 int i;

 for (i = 0; i < record->num_frags; i++)
  __skb_frag_unref(&record->frags[i]);
 kfree(record);
}
