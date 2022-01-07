
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_map_handle {int dummy; } ;
struct snapshot_handle {scalar_t__ sync_read; } ;
struct hib_bio_batch {int dummy; } ;
typedef int ktime_t ;


 int ENODATA ;
 int clean_pages_on_read ;
 int data_of (struct snapshot_handle) ;
 int hib_init_batch (struct hib_bio_batch*) ;
 int hib_wait_io (struct hib_bio_batch*) ;
 int ktime_get () ;
 int pr_info (char*,...) ;
 int snapshot_image_loaded (struct snapshot_handle*) ;
 int snapshot_write_finalize (struct snapshot_handle*) ;
 int snapshot_write_next (struct snapshot_handle*) ;
 int swap_read_page (struct swap_map_handle*,int ,struct hib_bio_batch*) ;
 int swsusp_show_speed (int ,int ,unsigned int,char*) ;

__attribute__((used)) static int load_image(struct swap_map_handle *handle,
                      struct snapshot_handle *snapshot,
                      unsigned int nr_to_read)
{
 unsigned int m;
 int ret = 0;
 ktime_t start;
 ktime_t stop;
 struct hib_bio_batch hb;
 int err2;
 unsigned nr_pages;

 hib_init_batch(&hb);

 clean_pages_on_read = 1;
 pr_info("Loading image data pages (%u pages)...\n", nr_to_read);
 m = nr_to_read / 10;
 if (!m)
  m = 1;
 nr_pages = 0;
 start = ktime_get();
 for ( ; ; ) {
  ret = snapshot_write_next(snapshot);
  if (ret <= 0)
   break;
  ret = swap_read_page(handle, data_of(*snapshot), &hb);
  if (ret)
   break;
  if (snapshot->sync_read)
   ret = hib_wait_io(&hb);
  if (ret)
   break;
  if (!(nr_pages % m))
   pr_info("Image loading progress: %3d%%\n",
    nr_pages / m * 10);
  nr_pages++;
 }
 err2 = hib_wait_io(&hb);
 stop = ktime_get();
 if (!ret)
  ret = err2;
 if (!ret) {
  pr_info("Image loading done\n");
  snapshot_write_finalize(snapshot);
  if (!snapshot_image_loaded(snapshot))
   ret = -ENODATA;
 }
 swsusp_show_speed(start, stop, nr_to_read, "Read");
 return ret;
}
