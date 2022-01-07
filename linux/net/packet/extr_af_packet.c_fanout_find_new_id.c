
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sock {int dummy; } ;


 scalar_t__ __fanout_id_is_free (struct sock*,scalar_t__) ;
 scalar_t__ fanout_next_id ;

__attribute__((used)) static bool fanout_find_new_id(struct sock *sk, u16 *new_id)
{
 u16 id = fanout_next_id;

 do {
  if (__fanout_id_is_free(sk, id)) {
   *new_id = id;
   fanout_next_id = id + 1;
   return 1;
  }

  id++;
 } while (id != fanout_next_id);

 return 0;
}
