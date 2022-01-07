
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_lpm_trie_key {int prefixlen; int* data; } ;


 struct bpf_lpm_trie_key* alloca (int) ;
 int assert (int) ;
 int bpf_map_update_elem (int ,struct bpf_lpm_trie_key*,unsigned long*,int ) ;
 int * map_fd ;
 int rand () ;

__attribute__((used)) static void fill_lpm_trie(void)
{
 struct bpf_lpm_trie_key *key;
 unsigned long value = 0;
 unsigned int i;
 int r;

 key = alloca(sizeof(*key) + 4);
 key->prefixlen = 32;

 for (i = 0; i < 512; ++i) {
  key->prefixlen = rand() % 33;
  key->data[0] = rand() & 0xff;
  key->data[1] = rand() & 0xff;
  key->data[2] = rand() & 0xff;
  key->data[3] = rand() & 0xff;
  r = bpf_map_update_elem(map_fd[6], key, &value, 0);
  assert(!r);
 }

 key->prefixlen = 32;
 key->data[0] = 192;
 key->data[1] = 168;
 key->data[2] = 0;
 key->data[3] = 1;
 value = 128;

 r = bpf_map_update_elem(map_fd[6], key, &value, 0);
 assert(!r);
}
