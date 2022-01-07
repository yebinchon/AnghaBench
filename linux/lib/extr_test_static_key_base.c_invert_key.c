
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct static_key {int dummy; } ;


 int static_key_disable (struct static_key*) ;
 int static_key_enable (struct static_key*) ;
 scalar_t__ static_key_enabled (struct static_key*) ;

__attribute__((used)) static void invert_key(struct static_key *key)
{
 if (static_key_enabled(key))
  static_key_disable(key);
 else
  static_key_enable(key);
}
