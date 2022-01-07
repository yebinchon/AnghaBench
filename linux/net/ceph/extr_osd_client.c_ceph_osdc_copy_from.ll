; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_copy_from.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_copy_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_client = type { i32 }
%struct.ceph_object_id = type { i32 }
%struct.ceph_object_locator = type { i32 }
%struct.ceph_osd_request = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CEPH_OSD_FLAG_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_osdc_copy_from(%struct.ceph_osd_client* %0, i32 %1, i32 %2, %struct.ceph_object_id* %3, %struct.ceph_object_locator* %4, i32 %5, %struct.ceph_object_id* %6, %struct.ceph_object_locator* %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ceph_osd_client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ceph_object_id*, align 8
  %16 = alloca %struct.ceph_object_locator*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ceph_object_id*, align 8
  %19 = alloca %struct.ceph_object_locator*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.ceph_osd_request*, align 8
  %23 = alloca i32, align 4
  store %struct.ceph_osd_client* %0, %struct.ceph_osd_client** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store %struct.ceph_object_id* %3, %struct.ceph_object_id** %15, align 8
  store %struct.ceph_object_locator* %4, %struct.ceph_object_locator** %16, align 8
  store i32 %5, i32* %17, align 4
  store %struct.ceph_object_id* %6, %struct.ceph_object_id** %18, align 8
  store %struct.ceph_object_locator* %7, %struct.ceph_object_locator** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %24 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %12, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.ceph_osd_request* @ceph_osdc_alloc_request(%struct.ceph_osd_client* %24, i32* null, i32 1, i32 0, i32 %25)
  store %struct.ceph_osd_request* %26, %struct.ceph_osd_request** %22, align 8
  %27 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %28 = icmp ne %struct.ceph_osd_request* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %10
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  br label %76

32:                                               ; preds = %10
  %33 = load i32, i32* @CEPH_OSD_FLAG_WRITE, align 4
  %34 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %35 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %37 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %19, align 8
  %40 = call i32 @ceph_oloc_copy(i32* %38, %struct.ceph_object_locator* %39)
  %41 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %42 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.ceph_object_id*, %struct.ceph_object_id** %18, align 8
  %45 = call i32 @ceph_oid_copy(i32* %43, %struct.ceph_object_id* %44)
  %46 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.ceph_object_id*, %struct.ceph_object_id** %15, align 8
  %50 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %16, align 8
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* %21, align 4
  %54 = call i32 @osd_req_op_copy_from_init(%struct.ceph_osd_request* %46, i32 %47, i32 %48, %struct.ceph_object_id* %49, %struct.ceph_object_locator* %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %23, align 4
  %55 = load i32, i32* %23, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %32
  br label %72

58:                                               ; preds = %32
  %59 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32 @ceph_osdc_alloc_messages(%struct.ceph_osd_request* %59, i32 %60)
  store i32 %61, i32* %23, align 4
  %62 = load i32, i32* %23, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %72

65:                                               ; preds = %58
  %66 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %12, align 8
  %67 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %68 = call i32 @ceph_osdc_start_request(%struct.ceph_osd_client* %66, %struct.ceph_osd_request* %67, i32 0)
  %69 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %12, align 8
  %70 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %71 = call i32 @ceph_osdc_wait_request(%struct.ceph_osd_client* %69, %struct.ceph_osd_request* %70)
  store i32 %71, i32* %23, align 4
  br label %72

72:                                               ; preds = %65, %64, %57
  %73 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %74 = call i32 @ceph_osdc_put_request(%struct.ceph_osd_request* %73)
  %75 = load i32, i32* %23, align 4
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %72, %29
  %77 = load i32, i32* %11, align 4
  ret i32 %77
}

declare dso_local %struct.ceph_osd_request* @ceph_osdc_alloc_request(%struct.ceph_osd_client*, i32*, i32, i32, i32) #1

declare dso_local i32 @ceph_oloc_copy(i32*, %struct.ceph_object_locator*) #1

declare dso_local i32 @ceph_oid_copy(i32*, %struct.ceph_object_id*) #1

declare dso_local i32 @osd_req_op_copy_from_init(%struct.ceph_osd_request*, i32, i32, %struct.ceph_object_id*, %struct.ceph_object_locator*, i32, i32, i32) #1

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
