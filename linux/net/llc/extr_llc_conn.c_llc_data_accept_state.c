
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ LLC_CONN_STATE_BUSY ;
 scalar_t__ LLC_CONN_STATE_NORMAL ;
 scalar_t__ LLC_CONN_STATE_REJ ;

u8 llc_data_accept_state(u8 state)
{
 return state != LLC_CONN_STATE_NORMAL && state != LLC_CONN_STATE_BUSY &&
        state != LLC_CONN_STATE_REJ;
}
