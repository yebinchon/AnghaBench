
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union map_priv {int color; int ptr; } ;
struct thread {int dummy; } ;


 int thread__priv (struct thread*) ;

__attribute__((used)) static bool thread__has_color(struct thread *thread)
{
 union map_priv priv = {
  .ptr = thread__priv(thread),
 };

 return priv.color;
}
