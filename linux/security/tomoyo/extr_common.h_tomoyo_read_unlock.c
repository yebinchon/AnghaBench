
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int srcu_read_unlock (int *,int) ;
 int tomoyo_ss ;

__attribute__((used)) static inline void tomoyo_read_unlock(int idx)
{
 srcu_read_unlock(&tomoyo_ss, idx);
}
