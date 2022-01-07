; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_update_epoch_barrier.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_update_epoch_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_client = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"updating epoch_barrier from %u to %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_client*, i64)* @update_epoch_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_epoch_barrier(%struct.ceph_osd_client* %0, i64 %1) #0 {
  %3 = alloca %struct.ceph_osd_client*, align 8
  %4 = alloca i64, align 8
  store %struct.ceph_osd_client* %0, %struct.ceph_osd_client** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %7 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %5, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %15 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @dout(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %17)
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %21 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %24 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %22, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %13
  %30 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %31 = call i32 @maybe_request_map(%struct.ceph_osd_client* %30)
  br label %32

32:                                               ; preds = %29, %13
  br label %33

33:                                               ; preds = %32, %2
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dout(i8*, i64, i64) #1

declare dso_local i32 @maybe_request_map(%struct.ceph_osd_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
