; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c___linger_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c___linger_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_linger_request = type { i32, %struct.TYPE_2__*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_linger_request*)* @__linger_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__linger_cancel(%struct.ceph_osd_linger_request* %0) #0 {
  %2 = alloca %struct.ceph_osd_linger_request*, align 8
  store %struct.ceph_osd_linger_request* %0, %struct.ceph_osd_linger_request** %2, align 8
  %3 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %4 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %9 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %16 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call i32 @cancel_linger_request(%struct.TYPE_2__* %17)
  br label %19

19:                                               ; preds = %14, %7, %1
  %20 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %21 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %28 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i32 @cancel_linger_request(%struct.TYPE_2__* %29)
  br label %31

31:                                               ; preds = %26, %19
  %32 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %33 = call i32 @cancel_linger_map_check(%struct.ceph_osd_linger_request* %32)
  %34 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %35 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %38 = call i32 @unlink_linger(i32 %36, %struct.ceph_osd_linger_request* %37)
  %39 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %40 = call i32 @linger_unregister(%struct.ceph_osd_linger_request* %39)
  ret void
}

declare dso_local i32 @cancel_linger_request(%struct.TYPE_2__*) #1

declare dso_local i32 @cancel_linger_map_check(%struct.ceph_osd_linger_request*) #1

declare dso_local i32 @unlink_linger(i32, %struct.ceph_osd_linger_request*) #1

declare dso_local i32 @linger_unregister(%struct.ceph_osd_linger_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
