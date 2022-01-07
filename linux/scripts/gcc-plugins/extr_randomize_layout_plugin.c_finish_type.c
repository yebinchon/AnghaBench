
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ NULL_TREE ;
 char* ORIG_TYPE_NAME (scalar_t__) ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TYPE_ATTRIBUTES (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 int debug_tree (scalar_t__) ;
 scalar_t__ error_mark_node ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ lookup_attribute (char*,int ) ;
 int randomize_type (scalar_t__) ;
 int stderr ;

__attribute__((used)) static void finish_type(void *event_data, void *data)
{
 tree type = (tree)event_data;

 if (type == NULL_TREE || type == error_mark_node)
  return;

 if (TREE_CODE(type) != RECORD_TYPE)
  return;

 if (TYPE_FIELDS(type) == NULL_TREE)
  return;

 if (lookup_attribute("randomize_considered", TYPE_ATTRIBUTES(type)))
  return;







 randomize_type(type);

 return;
}
