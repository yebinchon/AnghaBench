
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_test {int aux; } ;


 int FLAG_NO_DATA ;
 int kfree_skb (void*) ;

__attribute__((used)) static void release_test_data(const struct bpf_test *test, void *data)
{
 if (test->aux & FLAG_NO_DATA)
  return;

 kfree_skb(data);
}
