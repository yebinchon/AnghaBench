
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_state {int dummy; } ;
struct fscache_object {int debug_id; } ;


 int WAIT_FOR_CMD ;
 int _enter (char*,int ,int) ;
 int _leave (char*) ;
 int fscache_update_aux_data (struct fscache_object*) ;
 struct fscache_state const* transit_to (int ) ;

__attribute__((used)) static const struct fscache_state *fscache_update_object(struct fscache_object *object,
        int event)
{
 _enter("{OBJ%x},%d", object->debug_id, event);

 fscache_update_aux_data(object);

 _leave("");
 return transit_to(WAIT_FOR_CMD);
}
