; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_osds_equal.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_osds_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osds = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_osds*, %struct.ceph_osds*)* @osds_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osds_equal(%struct.ceph_osds* %0, %struct.ceph_osds* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_osds*, align 8
  %5 = alloca %struct.ceph_osds*, align 8
  store %struct.ceph_osds* %0, %struct.ceph_osds** %4, align 8
  store %struct.ceph_osds* %1, %struct.ceph_osds** %5, align 8
  %6 = load %struct.ceph_osds*, %struct.ceph_osds** %4, align 8
  %7 = load %struct.ceph_osds*, %struct.ceph_osds** %5, align 8
  %8 = call i64 @__osds_equal(%struct.ceph_osds* %6, %struct.ceph_osds* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.ceph_osds*, %struct.ceph_osds** %4, align 8
  %12 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ceph_osds*, %struct.ceph_osds** %5, align 8
  %15 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %20

19:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i64 @__osds_equal(%struct.ceph_osds*, %struct.ceph_osds*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
