; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_unwatch.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_unwatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_client = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ceph_options* }
%struct.ceph_options = type { i32 }
%struct.ceph_osd_linger_request = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ceph_osd_request = type { i32, i32, i32, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CEPH_OSD_FLAG_WRITE = common dso_local global i32 0, align 4
@CEPH_OSD_WATCH_OP_UNWATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_osdc_unwatch(%struct.ceph_osd_client* %0, %struct.ceph_osd_linger_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_osd_client*, align 8
  %5 = alloca %struct.ceph_osd_linger_request*, align 8
  %6 = alloca %struct.ceph_options*, align 8
  %7 = alloca %struct.ceph_osd_request*, align 8
  %8 = alloca i32, align 4
  store %struct.ceph_osd_client* %0, %struct.ceph_osd_client** %4, align 8
  store %struct.ceph_osd_linger_request* %1, %struct.ceph_osd_linger_request** %5, align 8
  %9 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %10 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  store %struct.ceph_options* %13, %struct.ceph_options** %6, align 8
  %14 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %15 = load i32, i32* @GFP_NOIO, align 4
  %16 = call %struct.ceph_osd_request* @ceph_osdc_alloc_request(%struct.ceph_osd_client* %14, i32* null, i32 1, i32 0, i32 %15)
  store %struct.ceph_osd_request* %16, %struct.ceph_osd_request** %7, align 8
  %17 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %7, align 8
  %18 = icmp ne %struct.ceph_osd_request* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %70

22:                                               ; preds = %2
  %23 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %7, align 8
  %24 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %23, i32 0, i32 3
  %25 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %5, align 8
  %26 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = call i32 @ceph_oid_copy(i32* %24, i32* %27)
  %29 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %7, align 8
  %30 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %29, i32 0, i32 2
  %31 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %5, align 8
  %32 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @ceph_oloc_copy(i32* %30, i32* %33)
  %35 = load i32, i32* @CEPH_OSD_FLAG_WRITE, align 4
  %36 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %7, align 8
  %37 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %7, align 8
  %39 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %38, i32 0, i32 0
  %40 = call i32 @ktime_get_real_ts64(i32* %39)
  %41 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %7, align 8
  %42 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %5, align 8
  %43 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CEPH_OSD_WATCH_OP_UNWATCH, align 4
  %46 = call i32 @osd_req_op_watch_init(%struct.ceph_osd_request* %41, i32 0, i32 %44, i32 %45)
  %47 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %7, align 8
  %48 = load i32, i32* @GFP_NOIO, align 4
  %49 = call i32 @ceph_osdc_alloc_messages(%struct.ceph_osd_request* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %22
  br label %66

53:                                               ; preds = %22
  %54 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %55 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %7, align 8
  %56 = call i32 @ceph_osdc_start_request(%struct.ceph_osd_client* %54, %struct.ceph_osd_request* %55, i32 0)
  %57 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %5, align 8
  %58 = call i32 @linger_cancel(%struct.ceph_osd_linger_request* %57)
  %59 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %5, align 8
  %60 = call i32 @linger_put(%struct.ceph_osd_linger_request* %59)
  %61 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %7, align 8
  %62 = load %struct.ceph_options*, %struct.ceph_options** %6, align 8
  %63 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @wait_request_timeout(%struct.ceph_osd_request* %61, i32 %64)
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %53, %52
  %67 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %7, align 8
  %68 = call i32 @ceph_osdc_put_request(%struct.ceph_osd_request* %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %19
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.ceph_osd_request* @ceph_osdc_alloc_request(%struct.ceph_osd_client*, i32*, i32, i32, i32) #1

declare dso_local i32 @ceph_oid_copy(i32*, i32*) #1

declare dso_local i32 @ceph_oloc_copy(i32*, i32*) #1

declare dso_local i32 @ktime_get_real_ts64(i32*) #1

declare dso_local i32 @osd_req_op_watch_init(%struct.ceph_osd_request*, i32, i32, i32) #1

declare dso_local i32 @ceph_osdc_alloc_messages(%struct.ceph_osd_request*, i32) #1

declare dso_local i32 @ceph_osdc_start_request(%struct.ceph_osd_client*, %struct.ceph_osd_request*, i32) #1

declare dso_local i32 @linger_cancel(%struct.ceph_osd_linger_request*) #1

declare dso_local i32 @linger_put(%struct.ceph_osd_linger_request*) #1

declare dso_local i32 @wait_request_timeout(%struct.ceph_osd_request*, i32) #1

declare dso_local i32 @ceph_osdc_put_request(%struct.ceph_osd_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
