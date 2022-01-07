
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_map_handle {int dummy; } ;
struct snapshot_handle {int dummy; } ;
struct hib_bio_batch {int dummy; } ;
typedef int ktime_t ;


 int data_of (struct snapshot_handle) ;
 int hib_init_batch (struct hib_bio_batch*) ;
 int hib_wait_io (struct hib_bio_batch*) ;
 int ktime_get () ;
 int pr_info (char*,...) ;
 int snapshot_read_next (struct snapshot_handle*) ;
 int swap_write_page (struct swap_map_handle*,int ,struct hib_bio_batch*) ;
 int swsusp_show_speed (int ,int ,unsigned int,char*) ;

__attribute__((used)) static int save_image(struct swap_map_handle *handle,
                      struct snapshot_handle *snapshot,
                      unsigned int nr_to_write)
{
 unsigned int m;
 int ret;
 int nr_pages;
 int err2;
 struct hib_bio_batch hb;
 ktime_t start;
 ktime_t stop;

 hib_init_batch(&hb);

 pr_info("Saving image data pages (%u pages)...\n",
  nr_to_write);
 m = nr_to_write / 10;
 if (!m)
  m = 1;
 nr_pages = 0;
 start = ktime_get();
 while (1) {
  ret = snapshot_read_next(snapshot);
  if (ret <= 0)
   break;
  ret = swap_write_page(handle, data_of(*snapshot), &hb);
  if (ret)
   break;
  if (!(nr_pages % m))
   pr_info("Image saving progress: %3d%%\n",
    nr_pages / m * 10);
  nr_pages++;
 }
 err2 = hib_wait_io(&hb);
 stop = ktime_get();
 if (!ret)
  ret = err2;
 if (!ret)
  pr_info("Image saving done\n");
 swsusp_show_speed(start, stop, nr_to_write, "Wrote");
 return ret;
}
