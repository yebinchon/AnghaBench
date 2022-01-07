; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_copy_from_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_copy_from_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32 }
%struct.ceph_object_id = type { i32, i32 }
%struct.ceph_object_locator = type { i32 }
%struct.ceph_osd_req_op = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i8* }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CEPH_OSD_OP_COPY_FROM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_osd_request*, i8*, i8*, %struct.ceph_object_id*, %struct.ceph_object_locator*, i32, i32, i32)* @osd_req_op_copy_from_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osd_req_op_copy_from_init(%struct.ceph_osd_request* %0, i8* %1, i8* %2, %struct.ceph_object_id* %3, %struct.ceph_object_locator* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ceph_osd_request*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ceph_object_id*, align 8
  %14 = alloca %struct.ceph_object_locator*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ceph_osd_req_op*, align 8
  %19 = alloca %struct.page**, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store %struct.ceph_object_id* %3, %struct.ceph_object_id** %13, align 8
  store %struct.ceph_object_locator* %4, %struct.ceph_object_locator** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.page** @ceph_alloc_page_vector(i32 1, i32 %22)
  store %struct.page** %23, %struct.page*** %19, align 8
  %24 = load %struct.page**, %struct.page*** %19, align 8
  %25 = call i64 @IS_ERR(%struct.page** %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %8
  %28 = load %struct.page**, %struct.page*** %19, align 8
  %29 = call i32 @PTR_ERR(%struct.page** %28)
  store i32 %29, i32* %9, align 4
  br label %89

30:                                               ; preds = %8
  %31 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %10, align 8
  %32 = load i32, i32* @CEPH_OSD_OP_COPY_FROM, align 4
  %33 = load i32, i32* %16, align 4
  %34 = call %struct.ceph_osd_req_op* @_osd_req_op_init(%struct.ceph_osd_request* %31, i32 0, i32 %32, i32 %33)
  store %struct.ceph_osd_req_op* %34, %struct.ceph_osd_req_op** %18, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %18, align 8
  %37 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  store i8* %35, i8** %38, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %18, align 8
  %41 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  store i8* %39, i8** %42, align 8
  %43 = load i32, i32* %17, align 4
  %44 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %18, align 8
  %45 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %18, align 8
  %49 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.page**, %struct.page*** %19, align 8
  %52 = getelementptr inbounds %struct.page*, %struct.page** %51, i64 0
  %53 = load %struct.page*, %struct.page** %52, align 8
  %54 = call i8* @page_address(%struct.page* %53)
  store i8* %54, i8** %20, align 8
  %55 = load i8*, i8** %20, align 8
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr i8, i8* %55, i64 %57
  store i8* %58, i8** %21, align 8
  %59 = load i8*, i8** %21, align 8
  %60 = load %struct.ceph_object_id*, %struct.ceph_object_id** %13, align 8
  %61 = getelementptr inbounds %struct.ceph_object_id, %struct.ceph_object_id* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ceph_object_id*, %struct.ceph_object_id** %13, align 8
  %64 = getelementptr inbounds %struct.ceph_object_id, %struct.ceph_object_id* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ceph_encode_string(i8** %20, i8* %59, i32 %62, i32 %65)
  %67 = load i8*, i8** %21, align 8
  %68 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %14, align 8
  %69 = call i32 @encode_oloc(i8** %20, i8* %67, %struct.ceph_object_locator* %68)
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = sext i32 %70 to i64
  %72 = load i8*, i8** %21, align 8
  %73 = load i8*, i8** %20, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sub nsw i64 %71, %76
  %78 = trunc i64 %77 to i32
  %79 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %18, align 8
  %80 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %18, align 8
  %82 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load %struct.page**, %struct.page*** %19, align 8
  %85 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %18, align 8
  %86 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ceph_osd_data_pages_init(i32* %83, %struct.page** %84, i32 %87, i32 0, i32 0, i32 1)
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %30, %27
  %90 = load i32, i32* %9, align 4
  ret i32 %90
}

declare dso_local %struct.page** @ceph_alloc_page_vector(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.page**) #1

declare dso_local i32 @PTR_ERR(%struct.page**) #1

declare dso_local %struct.ceph_osd_req_op* @_osd_req_op_init(%struct.ceph_osd_request*, i32, i32, i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @ceph_encode_string(i8**, i8*, i32, i32) #1

declare dso_local i32 @encode_oloc(i8**, i8*, %struct.ceph_object_locator*) #1

declare dso_local i32 @ceph_osd_data_pages_init(i32*, %struct.page**, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
