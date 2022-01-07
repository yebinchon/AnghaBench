
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u16 ;
struct a2mp_cmd {int data; int len; void* ident; void* code; } ;


 int GFP_KERNEL ;
 int cpu_to_le16 (int) ;
 struct a2mp_cmd* kzalloc (int,int ) ;
 int memcpy (int ,void*,int) ;

__attribute__((used)) static struct a2mp_cmd *__a2mp_build(u8 code, u8 ident, u16 len, void *data)
{
 struct a2mp_cmd *cmd;
 int plen;

 plen = sizeof(*cmd) + len;
 cmd = kzalloc(plen, GFP_KERNEL);
 if (!cmd)
  return ((void*)0);

 cmd->code = code;
 cmd->ident = ident;
 cmd->len = cpu_to_le16(len);

 memcpy(cmd->data, data, len);

 return cmd;
}
