
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct l2tp_session {scalar_t__ nr; scalar_t__ nr_max; scalar_t__ nr_window_size; } ;



__attribute__((used)) static int l2tp_seq_check_rx_window(struct l2tp_session *session, u32 nr)
{
 u32 nws;

 if (nr >= session->nr)
  nws = nr - session->nr;
 else
  nws = (session->nr_max + 1) - (session->nr - nr);

 return nws < session->nr_window_size;
}
