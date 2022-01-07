; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_call.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_client = type { i32 }
%struct.ceph_object_id = type { i32 }
%struct.ceph_object_locator = type { i32 }
%struct.page = type { i32 }
%struct.ceph_osd_request = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_osdc_call(%struct.ceph_osd_client* %0, %struct.ceph_object_id* %1, %struct.ceph_object_locator* %2, i8* %3, i8* %4, i32 %5, %struct.page* %6, i64 %7, %struct.page** %8, i64* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ceph_osd_client*, align 8
  %13 = alloca %struct.ceph_object_id*, align 8
  %14 = alloca %struct.ceph_object_locator*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.page**, align 8
  %21 = alloca i64*, align 8
  %22 = alloca %struct.ceph_osd_request*, align 8
  %23 = alloca i32, align 4
  store %struct.ceph_osd_client* %0, %struct.ceph_osd_client** %12, align 8
  store %struct.ceph_object_id* %1, %struct.ceph_object_id** %13, align 8
  store %struct.ceph_object_locator* %2, %struct.ceph_object_locator** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store %struct.page* %6, %struct.page** %18, align 8
  store i64 %7, i64* %19, align 8
  store %struct.page** %8, %struct.page*** %20, align 8
  store i64* %9, i64** %21, align 8
  %24 = load i64, i64* %19, align 8
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %10
  %28 = load i32, i32* @E2BIG, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  br label %113

30:                                               ; preds = %10
  %31 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %12, align 8
  %32 = load i32, i32* @GFP_NOIO, align 4
  %33 = call %struct.ceph_osd_request* @ceph_osdc_alloc_request(%struct.ceph_osd_client* %31, i32* null, i32 1, i32 0, i32 %32)
  store %struct.ceph_osd_request* %33, %struct.ceph_osd_request** %22, align 8
  %34 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %35 = icmp ne %struct.ceph_osd_request* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  br label %113

39:                                               ; preds = %30
  %40 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %41 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %40, i32 0, i32 3
  %42 = load %struct.ceph_object_id*, %struct.ceph_object_id** %13, align 8
  %43 = call i32 @ceph_oid_copy(i32* %41, %struct.ceph_object_id* %42)
  %44 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %45 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %44, i32 0, i32 2
  %46 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %14, align 8
  %47 = call i32 @ceph_oloc_copy(i32* %45, %struct.ceph_object_locator* %46)
  %48 = load i32, i32* %17, align 4
  %49 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %50 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = load i8*, i8** %16, align 8
  %54 = call i32 @osd_req_op_cls_init(%struct.ceph_osd_request* %51, i32 0, i8* %52, i8* %53)
  store i32 %54, i32* %23, align 4
  %55 = load i32, i32* %23, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %39
  br label %109

58:                                               ; preds = %39
  %59 = load %struct.page*, %struct.page** %18, align 8
  %60 = icmp ne %struct.page* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %63 = load i64, i64* %19, align 8
  %64 = call i32 @osd_req_op_cls_request_data_pages(%struct.ceph_osd_request* %62, i32 0, %struct.page** %18, i64 %63, i32 0, i32 0, i32 0)
  br label %65

65:                                               ; preds = %61, %58
  %66 = load %struct.page**, %struct.page*** %20, align 8
  %67 = icmp ne %struct.page** %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %70 = load %struct.page**, %struct.page*** %20, align 8
  %71 = load i64*, i64** %21, align 8
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @osd_req_op_cls_response_data_pages(%struct.ceph_osd_request* %69, i32 0, %struct.page** %70, i64 %72, i32 0, i32 0, i32 0)
  br label %74

74:                                               ; preds = %68, %65
  %75 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %76 = load i32, i32* @GFP_NOIO, align 4
  %77 = call i32 @ceph_osdc_alloc_messages(%struct.ceph_osd_request* %75, i32 %76)
  store i32 %77, i32* %23, align 4
  %78 = load i32, i32* %23, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %109

81:                                               ; preds = %74
  %82 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %12, align 8
  %83 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %84 = call i32 @ceph_osdc_start_request(%struct.ceph_osd_client* %82, %struct.ceph_osd_request* %83, i32 0)
  %85 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %12, align 8
  %86 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %87 = call i32 @ceph_osdc_wait_request(%struct.ceph_osd_client* %85, %struct.ceph_osd_request* %86)
  store i32 %87, i32* %23, align 4
  %88 = load i32, i32* %23, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %81
  %91 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %92 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %23, align 4
  %97 = load %struct.page**, %struct.page*** %20, align 8
  %98 = icmp ne %struct.page** %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %90
  %100 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %101 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %21, align 8
  store i64 %105, i64* %106, align 8
  br label %107

107:                                              ; preds = %99, %90
  br label %108

108:                                              ; preds = %107, %81
  br label %109

109:                                              ; preds = %108, %80, %57
  %110 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %111 = call i32 @ceph_osdc_put_request(%struct.ceph_osd_request* %110)
  %112 = load i32, i32* %23, align 4
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %109, %36, %27
  %114 = load i32, i32* %11, align 4
  ret i32 %114
}

declare dso_local %struct.ceph_osd_request* @ceph_osdc_alloc_request(%struct.ceph_osd_client*, i32*, i32, i32, i32) #1

declare dso_local i32 @ceph_oid_copy(i32*, %struct.ceph_object_id*) #1

declare dso_local i32 @ceph_oloc_copy(i32*, %struct.ceph_object_locator*) #1

declare dso_local i32 @osd_req_op_cls_init(%struct.ceph_osd_request*, i32, i8*, i8*) #1

declare dso_local i32 @osd_req_op_cls_request_data_pages(%struct.ceph_osd_request*, i32, %struct.page**, i64, i32, i32, i32) #1

declare dso_local i32 @osd_req_op_cls_response_data_pages(%struct.ceph_osd_request*, i32, %struct.page**, i64, i32, i32, i32) #1

declare dso_local i32 @ceph_osdc_alloc_messages(%struct.ceph_osd_request*, i32) #1

declare dso_local i32 @ceph_osdc_start_request(%struct.ceph_osd_client*, %struct.ceph_osd_request*, i32) #1

declare dso_local i32 @ceph_osdc_wait_request(%struct.ceph_osd_client*, %struct.ceph_osd_request*) #1

declare dso_local i32 @ceph_osdc_put_request(%struct.ceph_osd_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
