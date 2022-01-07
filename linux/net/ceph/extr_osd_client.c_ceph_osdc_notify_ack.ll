; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_notify_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_notify_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_client = type { i32 }
%struct.ceph_object_id = type { i32 }
%struct.ceph_object_locator = type { i32 }
%struct.ceph_osd_request = type { i32, i32, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CEPH_OSD_FLAG_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_osdc_notify_ack(%struct.ceph_osd_client* %0, %struct.ceph_object_id* %1, %struct.ceph_object_locator* %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ceph_osd_client*, align 8
  %10 = alloca %struct.ceph_object_id*, align 8
  %11 = alloca %struct.ceph_object_locator*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ceph_osd_request*, align 8
  %17 = alloca i32, align 4
  store %struct.ceph_osd_client* %0, %struct.ceph_osd_client** %9, align 8
  store %struct.ceph_object_id* %1, %struct.ceph_object_id** %10, align 8
  store %struct.ceph_object_locator* %2, %struct.ceph_object_locator** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %9, align 8
  %19 = load i32, i32* @GFP_NOIO, align 4
  %20 = call %struct.ceph_osd_request* @ceph_osdc_alloc_request(%struct.ceph_osd_client* %18, i32* null, i32 1, i32 0, i32 %19)
  store %struct.ceph_osd_request* %20, %struct.ceph_osd_request** %16, align 8
  %21 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %16, align 8
  %22 = icmp ne %struct.ceph_osd_request* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %65

26:                                               ; preds = %7
  %27 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %16, align 8
  %28 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %27, i32 0, i32 2
  %29 = load %struct.ceph_object_id*, %struct.ceph_object_id** %10, align 8
  %30 = call i32 @ceph_oid_copy(i32* %28, %struct.ceph_object_id* %29)
  %31 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %16, align 8
  %32 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %31, i32 0, i32 1
  %33 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %11, align 8
  %34 = call i32 @ceph_oloc_copy(i32* %32, %struct.ceph_object_locator* %33)
  %35 = load i32, i32* @CEPH_OSD_FLAG_READ, align 4
  %36 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %16, align 8
  %37 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %16, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i8*, i8** %14, align 8
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @osd_req_op_notify_ack_init(%struct.ceph_osd_request* %38, i32 0, i32 %39, i32 %40, i8* %41, i32 %42)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %26
  br label %61

47:                                               ; preds = %26
  %48 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %16, align 8
  %49 = load i32, i32* @GFP_NOIO, align 4
  %50 = call i32 @ceph_osdc_alloc_messages(%struct.ceph_osd_request* %48, i32 %49)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %61

54:                                               ; preds = %47
  %55 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %9, align 8
  %56 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %16, align 8
  %57 = call i32 @ceph_osdc_start_request(%struct.ceph_osd_client* %55, %struct.ceph_osd_request* %56, i32 0)
  %58 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %9, align 8
  %59 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %16, align 8
  %60 = call i32 @ceph_osdc_wait_request(%struct.ceph_osd_client* %58, %struct.ceph_osd_request* %59)
  store i32 %60, i32* %17, align 4
  br label %61

61:                                               ; preds = %54, %53, %46
  %62 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %16, align 8
  %63 = call i32 @ceph_osdc_put_request(%struct.ceph_osd_request* %62)
  %64 = load i32, i32* %17, align 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %61, %23
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local %struct.ceph_osd_request* @ceph_osdc_alloc_request(%struct.ceph_osd_client*, i32*, i32, i32, i32) #1

declare dso_local i32 @ceph_oid_copy(i32*, %struct.ceph_object_id*) #1

declare dso_local i32 @ceph_oloc_copy(i32*, %struct.ceph_object_locator*) #1

declare dso_local i32 @osd_req_op_notify_ack_init(%struct.ceph_osd_request*, i32, i32, i32, i8*, i32) #1

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
