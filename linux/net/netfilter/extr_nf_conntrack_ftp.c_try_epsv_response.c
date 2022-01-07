
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int port; } ;
struct TYPE_4__ {TYPE_1__ tcp; } ;
struct nf_conntrack_man {TYPE_2__ u; } ;


 int get_port (char const*,int,size_t,char,int *) ;
 scalar_t__ isdigit (char) ;

__attribute__((used)) static int try_epsv_response(const char *data, size_t dlen,
        struct nf_conntrack_man *cmd, char term,
        unsigned int *offset)
{
 char delim;


 if (dlen <= 3) return 0;
 delim = data[0];
 if (isdigit(delim) || delim < 33 || delim > 126 ||
     data[1] != delim || data[2] != delim)
  return 0;

 return get_port(data, 3, dlen, delim, &cmd->u.tcp.port);
}
