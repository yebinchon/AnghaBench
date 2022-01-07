
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct batadv_tp_vars {size_t cwnd; size_t last_sent; int last_acked; } ;


 size_t atomic_read (int *) ;

__attribute__((used)) static bool batadv_tp_avail(struct batadv_tp_vars *tp_vars,
       size_t payload_len)
{
 u32 win_left, win_limit;

 win_limit = atomic_read(&tp_vars->last_acked) + tp_vars->cwnd;
 win_left = win_limit - tp_vars->last_sent;

 return win_left >= payload_len;
}
