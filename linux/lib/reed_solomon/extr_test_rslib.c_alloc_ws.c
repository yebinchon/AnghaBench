
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct wspace {void* errlocs; void* derrlocs; void* s; void* corr; void* r; void* c; } ;
struct rs_codec {int nroots; int nn; } ;


 int GFP_KERNEL ;
 int free_ws (struct wspace*) ;
 void* kmalloc_array (int,int,int ) ;
 struct wspace* kzalloc (int,int ) ;

__attribute__((used)) static struct wspace *alloc_ws(struct rs_codec *rs)
{
 int nroots = rs->nroots;
 struct wspace *ws;
 int nn = rs->nn;

 ws = kzalloc(sizeof(*ws), GFP_KERNEL);
 if (!ws)
  return ((void*)0);

 ws->c = kmalloc_array(2 * (nn + nroots),
    sizeof(uint16_t), GFP_KERNEL);
 if (!ws->c)
  goto err;

 ws->r = ws->c + nn;
 ws->s = ws->r + nn;
 ws->corr = ws->s + nroots;

 ws->errlocs = kmalloc_array(nn + nroots, sizeof(int), GFP_KERNEL);
 if (!ws->errlocs)
  goto err;

 ws->derrlocs = ws->errlocs + nn;
 return ws;

err:
 free_ws(ws);
 return ((void*)0);
}
