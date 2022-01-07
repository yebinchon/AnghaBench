
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct page {int dummy; } ;
struct ceph_osd_request {int dummy; } ;
typedef int __le32 ;


 int CEPH_ENCODING_START_BLK_LEN ;
 int E2BIG ;
 int GFP_NOIO ;
 scalar_t__ IS_ERR (struct page**) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct page**) ;
 int WARN_ON (int) ;
 struct page** ceph_alloc_page_vector (int,int ) ;
 int ceph_encode_8 (void**,int ) ;
 int ceph_encode_string (void**,void*,char*,int) ;
 int ceph_start_encoding (void**,int,int,int) ;
 int osd_req_op_cls_init (struct ceph_osd_request*,int,char*,char*) ;
 int osd_req_op_cls_request_data_pages (struct ceph_osd_request*,int,struct page**,int,int ,int,int) ;
 void* page_address (struct page*) ;
 int strlen (char*) ;

int ceph_cls_assert_locked(struct ceph_osd_request *req, int which,
      char *lock_name, u8 type, char *cookie, char *tag)
{
 int assert_op_buf_size;
 int name_len = strlen(lock_name);
 int cookie_len = strlen(cookie);
 int tag_len = strlen(tag);
 struct page **pages;
 void *p, *end;
 int ret;

 assert_op_buf_size = name_len + sizeof(__le32) +
        cookie_len + sizeof(__le32) +
        tag_len + sizeof(__le32) +
        sizeof(u8) + CEPH_ENCODING_START_BLK_LEN;
 if (assert_op_buf_size > PAGE_SIZE)
  return -E2BIG;

 ret = osd_req_op_cls_init(req, which, "lock", "assert_locked");
 if (ret)
  return ret;

 pages = ceph_alloc_page_vector(1, GFP_NOIO);
 if (IS_ERR(pages))
  return PTR_ERR(pages);

 p = page_address(pages[0]);
 end = p + assert_op_buf_size;


 ceph_start_encoding(&p, 1, 1,
       assert_op_buf_size - CEPH_ENCODING_START_BLK_LEN);
 ceph_encode_string(&p, end, lock_name, name_len);
 ceph_encode_8(&p, type);
 ceph_encode_string(&p, end, cookie, cookie_len);
 ceph_encode_string(&p, end, tag, tag_len);
 WARN_ON(p != end);

 osd_req_op_cls_request_data_pages(req, which, pages, assert_op_buf_size,
       0, 0, 1);
 return 0;
}
