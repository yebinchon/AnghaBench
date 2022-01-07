
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 unsigned int READ_ONCE (int ) ;
 int rcu_torture_writer_state ;
 char const** rcu_torture_writer_state_names ;

__attribute__((used)) static const char *rcu_torture_writer_state_getname(void)
{
 unsigned int i = READ_ONCE(rcu_torture_writer_state);

 if (i >= ARRAY_SIZE(rcu_torture_writer_state_names))
  return "???";
 return rcu_torture_writer_state_names[i];
}
