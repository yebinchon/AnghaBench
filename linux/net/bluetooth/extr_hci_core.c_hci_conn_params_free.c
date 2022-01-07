
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_conn_params {int list; int action; scalar_t__ conn; } ;


 int hci_conn_drop (scalar_t__) ;
 int hci_conn_put (scalar_t__) ;
 int kfree (struct hci_conn_params*) ;
 int list_del (int *) ;

__attribute__((used)) static void hci_conn_params_free(struct hci_conn_params *params)
{
 if (params->conn) {
  hci_conn_drop(params->conn);
  hci_conn_put(params->conn);
 }

 list_del(&params->action);
 list_del(&params->list);
 kfree(params);
}
