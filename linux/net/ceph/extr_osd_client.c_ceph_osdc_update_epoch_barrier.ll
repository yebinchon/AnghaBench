; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_update_epoch_barrier.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_update_epoch_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_client = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_osdc_update_epoch_barrier(%struct.ceph_osd_client* %0, i64 %1) #0 {
  %3 = alloca %struct.ceph_osd_client*, align 8
  %4 = alloca i64, align 8
  store %struct.ceph_osd_client* %0, %struct.ceph_osd_client** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %6 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %5, i32 0, i32 1
  %7 = call i32 @down_read(i32* %6)
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %10 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %18 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %17, i32 0, i32 1
  %19 = call i32 @up_read(i32* %18)
  %20 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %21 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %20, i32 0, i32 1
  %22 = call i32 @down_write(i32* %21)
  %23 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @update_epoch_barrier(%struct.ceph_osd_client* %23, i64 %24)
  %26 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %27 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %26, i32 0, i32 1
  %28 = call i32 @up_write(i32* %27)
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %31 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %30, i32 0, i32 1
  %32 = call i32 @up_read(i32* %31)
  br label %33

33:                                               ; preds = %29, %16
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @update_epoch_barrier(%struct.ceph_osd_client*, i64) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
