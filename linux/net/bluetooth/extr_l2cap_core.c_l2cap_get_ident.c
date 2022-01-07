
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l2cap_conn {int tx_ident; int ident_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static u8 l2cap_get_ident(struct l2cap_conn *conn)
{
 u8 id;







 mutex_lock(&conn->ident_lock);

 if (++conn->tx_ident > 128)
  conn->tx_ident = 1;

 id = conn->tx_ident;

 mutex_unlock(&conn->ident_lock);

 return id;
}
