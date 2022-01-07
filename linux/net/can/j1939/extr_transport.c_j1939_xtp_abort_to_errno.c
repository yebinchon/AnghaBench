
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_priv {int ndev; } ;
typedef enum j1939_xtp_abort { ____Placeholder_j1939_xtp_abort } j1939_xtp_abort ;


 int EALREADY ;
 int EBADMSG ;
 int EHOSTUNREACH ;
 int EILSEQ ;
 int EMSGSIZE ;
 int ENOTCONN ;
 int ENOTRECOVERABLE ;
 int EPROTO ;
 int WARN_ON_ONCE (int) ;
 int netdev_warn (int ,char*,int) ;

__attribute__((used)) static int j1939_xtp_abort_to_errno(struct j1939_priv *priv,
        enum j1939_xtp_abort abort)
{
 int err;

 switch (abort) {
 case 128:
  WARN_ON_ONCE(abort == 128);
  err = 0;
  break;
 case 141:
  err = EALREADY;
  break;
 case 131:
  err = EMSGSIZE;
  break;
 case 130:
  err = EHOSTUNREACH;
  break;
 case 134:
  err = EBADMSG;
  break;
 case 135:
  err = ENOTRECOVERABLE;
  break;
 case 129:
  err = ENOTCONN;
  break;
 case 142:
  err = EILSEQ;
  break;
 case 140:
  err = EPROTO;
  break;
 case 136:
  err = EPROTO;
  break;
 case 143:
  err = EPROTO;
  break;
 case 137:
  err = EPROTO;
  break;
 case 144:
  err = EPROTO;
  break;
 case 132:
  err = EPROTO;
  break;
 case 138:
  err = EPROTO;
  break;
 case 139:
  err = EPROTO;
  break;
 case 133:
  err = EPROTO;
  break;
 default:
  netdev_warn(priv->ndev, "Unknown abort code %i", abort);
  err = EPROTO;
 }

 return err;
}
