
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_state {int dummy; } ;
struct file_lock {int dummy; } ;


 int nfs4_retry_setlk_simple (struct nfs4_state*,int,struct file_lock*) ;

__attribute__((used)) static inline int
nfs4_retry_setlk(struct nfs4_state *state, int cmd, struct file_lock *request)
{
 return nfs4_retry_setlk_simple(state, cmd, request);
}
