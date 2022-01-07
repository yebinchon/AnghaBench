; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_list_watchers.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_list_watchers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_client = type { i32 }
%struct.ceph_object_id = type { i32 }
%struct.ceph_object_locator = type { i32 }
%struct.ceph_watch_item = type { i32 }
%struct.ceph_osd_request = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CEPH_OSD_FLAG_READ = common dso_local global i32 0, align 4
@CEPH_OSD_OP_LIST_WATCHERS = common dso_local global i32 0, align 4
@list_watchers = common dso_local global i32 0, align 4
@response_data = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_osdc_list_watchers(%struct.ceph_osd_client* %0, %struct.ceph_object_id* %1, %struct.ceph_object_locator* %2, %struct.ceph_watch_item** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ceph_osd_client*, align 8
  %8 = alloca %struct.ceph_object_id*, align 8
  %9 = alloca %struct.ceph_object_locator*, align 8
  %10 = alloca %struct.ceph_watch_item**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ceph_osd_request*, align 8
  %13 = alloca %struct.page**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.ceph_osd_client* %0, %struct.ceph_osd_client** %7, align 8
  store %struct.ceph_object_id* %1, %struct.ceph_object_id** %8, align 8
  store %struct.ceph_object_locator* %2, %struct.ceph_object_locator** %9, align 8
  store %struct.ceph_watch_item** %3, %struct.ceph_watch_item*** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %7, align 8
  %18 = load i32, i32* @GFP_NOIO, align 4
  %19 = call %struct.ceph_osd_request* @ceph_osdc_alloc_request(%struct.ceph_osd_client* %17, i32* null, i32 1, i32 0, i32 %18)
  store %struct.ceph_osd_request* %19, %struct.ceph_osd_request** %12, align 8
  %20 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %21 = icmp ne %struct.ceph_osd_request* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %94

25:                                               ; preds = %5
  %26 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %27 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %26, i32 0, i32 3
  %28 = load %struct.ceph_object_id*, %struct.ceph_object_id** %8, align 8
  %29 = call i32 @ceph_oid_copy(i32* %27, %struct.ceph_object_id* %28)
  %30 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %31 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %30, i32 0, i32 2
  %32 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %9, align 8
  %33 = call i32 @ceph_oloc_copy(i32* %31, %struct.ceph_object_locator* %32)
  %34 = load i32, i32* @CEPH_OSD_FLAG_READ, align 4
  %35 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %36 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @GFP_NOIO, align 4
  %38 = call %struct.page** @ceph_alloc_page_vector(i32 1, i32 %37)
  store %struct.page** %38, %struct.page*** %13, align 8
  %39 = load %struct.page**, %struct.page*** %13, align 8
  %40 = call i64 @IS_ERR(%struct.page** %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %25
  %43 = load %struct.page**, %struct.page*** %13, align 8
  %44 = call i32 @PTR_ERR(%struct.page** %43)
  store i32 %44, i32* %14, align 4
  br label %90

45:                                               ; preds = %25
  %46 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %47 = load i32, i32* @CEPH_OSD_OP_LIST_WATCHERS, align 4
  %48 = call i32 @osd_req_op_init(%struct.ceph_osd_request* %46, i32 0, i32 %47, i32 0)
  %49 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %50 = load i32, i32* @list_watchers, align 4
  %51 = load i32, i32* @response_data, align 4
  %52 = call i32 @osd_req_op_data(%struct.ceph_osd_request* %49, i32 0, i32 %50, i32 %51)
  %53 = load %struct.page**, %struct.page*** %13, align 8
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = call i32 @ceph_osd_data_pages_init(i32 %52, %struct.page** %53, i32 %54, i32 0, i32 0, i32 1)
  %56 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %57 = load i32, i32* @GFP_NOIO, align 4
  %58 = call i32 @ceph_osdc_alloc_messages(%struct.ceph_osd_request* %56, i32 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  br label %90

62:                                               ; preds = %45
  %63 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %7, align 8
  %64 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %65 = call i32 @ceph_osdc_start_request(%struct.ceph_osd_client* %63, %struct.ceph_osd_request* %64, i32 0)
  %66 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %7, align 8
  %67 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %68 = call i32 @ceph_osdc_wait_request(%struct.ceph_osd_client* %66, %struct.ceph_osd_request* %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %62
  %72 = load %struct.page**, %struct.page*** %13, align 8
  %73 = getelementptr inbounds %struct.page*, %struct.page** %72, i64 0
  %74 = load %struct.page*, %struct.page** %73, align 8
  %75 = call i8* @page_address(%struct.page* %74)
  store i8* %75, i8** %15, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %78 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr i8, i8* %76, i64 %83
  store i8* %84, i8** %16, align 8
  %85 = load i8*, i8** %16, align 8
  %86 = load %struct.ceph_watch_item**, %struct.ceph_watch_item*** %10, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @decode_watchers(i8** %15, i8* %85, %struct.ceph_watch_item** %86, i32* %87)
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %71, %62
  br label %90

90:                                               ; preds = %89, %61, %42
  %91 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %92 = call i32 @ceph_osdc_put_request(%struct.ceph_osd_request* %91)
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %90, %22
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local %struct.ceph_osd_request* @ceph_osdc_alloc_request(%struct.ceph_osd_client*, i32*, i32, i32, i32) #1

declare dso_local i32 @ceph_oid_copy(i32*, %struct.ceph_object_id*) #1

declare dso_local i32 @ceph_oloc_copy(i32*, %struct.ceph_object_locator*) #1

declare dso_local %struct.page** @ceph_alloc_page_vector(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.page**) #1

declare dso_local i32 @PTR_ERR(%struct.page**) #1

declare dso_local i32 @osd_req_op_init(%struct.ceph_osd_request*, i32, i32, i32) #1

declare dso_local i32 @ceph_osd_data_pages_init(i32, %struct.page**, i32, i32, i32, i32) #1

declare dso_local i32 @osd_req_op_data(%struct.ceph_osd_request*, i32, i32, i32) #1

declare dso_local i32 @ceph_osdc_alloc_messages(%struct.ceph_osd_request*, i32) #1

declare dso_local i32 @ceph_osdc_start_request(%struct.ceph_osd_client*, %struct.ceph_osd_request*, i32) #1

declare dso_local i32 @ceph_osdc_wait_request(%struct.ceph_osd_client*, %struct.ceph_osd_request*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @decode_watchers(i8**, i8*, %struct.ceph_watch_item**, i32*) #1

declare dso_local i32 @ceph_osdc_put_request(%struct.ceph_osd_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
