; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_request_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_request_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_request*)* @request_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @request_init(%struct.ceph_osd_request* %0) #0 {
  %2 = alloca %struct.ceph_osd_request*, align 8
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %2, align 8
  %3 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %4 = call i32 @memset(%struct.ceph_osd_request* %3, i32 0, i32 24)
  %5 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %6 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %5, i32 0, i32 5
  %7 = call i32 @kref_init(i32* %6)
  %8 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %9 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %8, i32 0, i32 4
  %10 = call i32 @init_completion(i32* %9)
  %11 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %12 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %11, i32 0, i32 3
  %13 = call i32 @RB_CLEAR_NODE(i32* %12)
  %14 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %15 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %14, i32 0, i32 2
  %16 = call i32 @RB_CLEAR_NODE(i32* %15)
  %17 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %18 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %17, i32 0, i32 1
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %21 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %20, i32 0, i32 0
  %22 = call i32 @target_init(i32* %21)
  ret void
}

declare dso_local i32 @memset(%struct.ceph_osd_request*, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @target_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
