; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_abort_on_full.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_abort_on_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_client = type { i32 }

@ABORT_ON_FULL = common dso_local global i32 0, align 4
@CEPH_OSDMAP_FULL = common dso_local global i32 0, align 4
@abort_on_full_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_client*)* @ceph_osdc_abort_on_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_osdc_abort_on_full(%struct.ceph_osd_client* %0) #0 {
  %2 = alloca %struct.ceph_osd_client*, align 8
  %3 = alloca i32, align 4
  store %struct.ceph_osd_client* %0, %struct.ceph_osd_client** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ABORT_ON_FULL, align 4
  %8 = call i64 @ceph_test_opt(i32 %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %2, align 8
  %12 = load i32, i32* @CEPH_OSDMAP_FULL, align 4
  %13 = call i64 @ceph_osdmap_flag(%struct.ceph_osd_client* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %2, align 8
  %17 = call i64 @have_pool_full(%struct.ceph_osd_client* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15, %10
  %20 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %2, align 8
  %21 = load i32, i32* @abort_on_full_fn, align 4
  %22 = call i32 @for_each_request(%struct.ceph_osd_client* %20, i32 %21, i32* %3)
  br label %23

23:                                               ; preds = %19, %15, %1
  ret void
}

declare dso_local i64 @ceph_test_opt(i32, i32) #1

declare dso_local i64 @ceph_osdmap_flag(%struct.ceph_osd_client*, i32) #1

declare dso_local i64 @have_pool_full(%struct.ceph_osd_client*) #1

declare dso_local i32 @for_each_request(%struct.ceph_osd_client*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
