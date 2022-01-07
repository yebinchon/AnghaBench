
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nfc_digital_dev {int dummy; } ;
typedef int nfc_digital_cmd_complete_t ;


 int DIGITAL_CMD_TG_LISTEN ;
 int digital_send_cmd (struct nfc_digital_dev*,int ,int *,int *,int ,int ,void*) ;

__attribute__((used)) static inline int digital_tg_listen(struct nfc_digital_dev *ddev, u16 timeout,
        nfc_digital_cmd_complete_t cb, void *arg)
{
 return digital_send_cmd(ddev, DIGITAL_CMD_TG_LISTEN, ((void*)0), ((void*)0),
    timeout, cb, arg);
}
