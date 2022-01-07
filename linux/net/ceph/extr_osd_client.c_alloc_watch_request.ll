; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_alloc_watch_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_alloc_watch_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32 }
%struct.ceph_osd_linger_request = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_osd_request* (%struct.ceph_osd_linger_request*, i32)* @alloc_watch_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_osd_request* @alloc_watch_request(%struct.ceph_osd_linger_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ceph_osd_request*, align 8
  %4 = alloca %struct.ceph_osd_linger_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ceph_osd_request*, align 8
  store %struct.ceph_osd_linger_request* %0, %struct.ceph_osd_linger_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %4, align 8
  %8 = call %struct.ceph_osd_request* @alloc_linger_request(%struct.ceph_osd_linger_request* %7)
  store %struct.ceph_osd_request* %8, %struct.ceph_osd_request** %6, align 8
  %9 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %10 = icmp ne %struct.ceph_osd_request* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.ceph_osd_request* null, %struct.ceph_osd_request** %3, align 8
  br label %25

12:                                               ; preds = %2
  %13 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @osd_req_op_watch_init(%struct.ceph_osd_request* %13, i32 0, i32 0, i32 %14)
  %16 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %17 = load i32, i32* @GFP_NOIO, align 4
  %18 = call i64 @ceph_osdc_alloc_messages(%struct.ceph_osd_request* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %22 = call i32 @ceph_osdc_put_request(%struct.ceph_osd_request* %21)
  store %struct.ceph_osd_request* null, %struct.ceph_osd_request** %3, align 8
  br label %25

23:                                               ; preds = %12
  %24 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  store %struct.ceph_osd_request* %24, %struct.ceph_osd_request** %3, align 8
  br label %25

25:                                               ; preds = %23, %20, %11
  %26 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  ret %struct.ceph_osd_request* %26
}

declare dso_local %struct.ceph_osd_request* @alloc_linger_request(%struct.ceph_osd_linger_request*) #1

declare dso_local i32 @osd_req_op_watch_init(%struct.ceph_osd_request*, i32, i32, i32) #1

declare dso_local i64 @ceph_osdc_alloc_messages(%struct.ceph_osd_request*, i32) #1

declare dso_local i32 @ceph_osdc_put_request(%struct.ceph_osd_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
