; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_watch.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_linger_request = type { i32, i8*, i8*, i32, %struct.TYPE_2__, i32, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ceph_osd_client = type { i32 }
%struct.ceph_object_id = type { i32 }
%struct.ceph_object_locator = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@CEPH_OSD_FLAG_WRITE = common dso_local global i32 0, align 4
@CEPH_OSD_WATCH_OP_WATCH = common dso_local global i32 0, align 4
@CEPH_OSD_WATCH_OP_PING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ceph_osd_linger_request* @ceph_osdc_watch(%struct.ceph_osd_client* %0, %struct.ceph_object_id* %1, %struct.ceph_object_locator* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.ceph_osd_linger_request*, align 8
  %8 = alloca %struct.ceph_osd_client*, align 8
  %9 = alloca %struct.ceph_object_id*, align 8
  %10 = alloca %struct.ceph_object_locator*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ceph_osd_linger_request*, align 8
  %15 = alloca i32, align 4
  store %struct.ceph_osd_client* %0, %struct.ceph_osd_client** %8, align 8
  store %struct.ceph_object_id* %1, %struct.ceph_object_id** %9, align 8
  store %struct.ceph_object_locator* %2, %struct.ceph_object_locator** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %16 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %8, align 8
  %17 = call %struct.ceph_osd_linger_request* @linger_alloc(%struct.ceph_osd_client* %16)
  store %struct.ceph_osd_linger_request* %17, %struct.ceph_osd_linger_request** %14, align 8
  %18 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  %19 = icmp ne %struct.ceph_osd_linger_request* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.ceph_osd_linger_request* @ERR_PTR(i32 %22)
  store %struct.ceph_osd_linger_request* %23, %struct.ceph_osd_linger_request** %7, align 8
  br label %98

24:                                               ; preds = %6
  %25 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  %26 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  %29 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  %32 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  %35 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %34, i32 0, i32 6
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @jiffies, align 4
  %37 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  %38 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  %40 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load %struct.ceph_object_id*, %struct.ceph_object_id** %9, align 8
  %43 = call i32 @ceph_oid_copy(i32* %41, %struct.ceph_object_id* %42)
  %44 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  %45 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %10, align 8
  %48 = call i32 @ceph_oloc_copy(i32* %46, %struct.ceph_object_locator* %47)
  %49 = load i32, i32* @CEPH_OSD_FLAG_WRITE, align 4
  %50 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  %51 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  %54 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %53, i32 0, i32 3
  %55 = call i32 @ktime_get_real_ts64(i32* %54)
  %56 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  %57 = load i32, i32* @CEPH_OSD_WATCH_OP_WATCH, align 4
  %58 = call i8* @alloc_watch_request(%struct.ceph_osd_linger_request* %56, i32 %57)
  %59 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  %60 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  %62 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %24
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %15, align 4
  br label %93

68:                                               ; preds = %24
  %69 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  %70 = load i32, i32* @CEPH_OSD_WATCH_OP_PING, align 4
  %71 = call i8* @alloc_watch_request(%struct.ceph_osd_linger_request* %69, i32 %70)
  %72 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  %73 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  %75 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %68
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %15, align 4
  br label %93

81:                                               ; preds = %68
  %82 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  %83 = call i32 @linger_submit(%struct.ceph_osd_linger_request* %82)
  %84 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  %85 = call i32 @linger_reg_commit_wait(%struct.ceph_osd_linger_request* %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  %90 = call i32 @linger_cancel(%struct.ceph_osd_linger_request* %89)
  br label %93

91:                                               ; preds = %81
  %92 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  store %struct.ceph_osd_linger_request* %92, %struct.ceph_osd_linger_request** %7, align 8
  br label %98

93:                                               ; preds = %88, %78, %65
  %94 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %14, align 8
  %95 = call i32 @linger_put(%struct.ceph_osd_linger_request* %94)
  %96 = load i32, i32* %15, align 4
  %97 = call %struct.ceph_osd_linger_request* @ERR_PTR(i32 %96)
  store %struct.ceph_osd_linger_request* %97, %struct.ceph_osd_linger_request** %7, align 8
  br label %98

98:                                               ; preds = %93, %91, %20
  %99 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %7, align 8
  ret %struct.ceph_osd_linger_request* %99
}

declare dso_local %struct.ceph_osd_linger_request* @linger_alloc(%struct.ceph_osd_client*) #1

declare dso_local %struct.ceph_osd_linger_request* @ERR_PTR(i32) #1

declare dso_local i32 @ceph_oid_copy(i32*, %struct.ceph_object_id*) #1

declare dso_local i32 @ceph_oloc_copy(i32*, %struct.ceph_object_locator*) #1

declare dso_local i32 @ktime_get_real_ts64(i32*) #1

declare dso_local i8* @alloc_watch_request(%struct.ceph_osd_linger_request*, i32) #1

declare dso_local i32 @linger_submit(%struct.ceph_osd_linger_request*) #1

declare dso_local i32 @linger_reg_commit_wait(%struct.ceph_osd_linger_request*) #1

declare dso_local i32 @linger_cancel(%struct.ceph_osd_linger_request*) #1

declare dso_local i32 @linger_put(%struct.ceph_osd_linger_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
