
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signal_struct {int dummy; } ;


 int HASH_BITS (int ) ;
 unsigned int hash32_ptr (struct signal_struct*) ;
 int hash_32 (unsigned int,int ) ;
 int posix_timers_hashtable ;

__attribute__((used)) static int hash(struct signal_struct *sig, unsigned int nr)
{
 return hash_32(hash32_ptr(sig) ^ nr, HASH_BITS(posix_timers_hashtable));
}
