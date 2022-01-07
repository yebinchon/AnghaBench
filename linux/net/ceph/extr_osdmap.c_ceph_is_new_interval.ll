; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_ceph_is_new_interval.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_ceph_is_new_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osds = type { i32 }
%struct.ceph_pg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_is_new_interval(%struct.ceph_osds* %0, %struct.ceph_osds* %1, %struct.ceph_osds* %2, %struct.ceph_osds* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, %struct.ceph_pg* %14) #0 {
  %16 = alloca %struct.ceph_osds*, align 8
  %17 = alloca %struct.ceph_osds*, align 8
  %18 = alloca %struct.ceph_osds*, align 8
  %19 = alloca %struct.ceph_osds*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.ceph_pg*, align 8
  store %struct.ceph_osds* %0, %struct.ceph_osds** %16, align 8
  store %struct.ceph_osds* %1, %struct.ceph_osds** %17, align 8
  store %struct.ceph_osds* %2, %struct.ceph_osds** %18, align 8
  store %struct.ceph_osds* %3, %struct.ceph_osds** %19, align 8
  store i32 %4, i32* %20, align 4
  store i32 %5, i32* %21, align 4
  store i32 %6, i32* %22, align 4
  store i32 %7, i32* %23, align 4
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i32 %10, i32* %26, align 4
  store i32 %11, i32* %27, align 4
  store i32 %12, i32* %28, align 4
  store i32 %13, i32* %29, align 4
  store %struct.ceph_pg* %14, %struct.ceph_pg** %30, align 8
  %31 = load %struct.ceph_osds*, %struct.ceph_osds** %16, align 8
  %32 = load %struct.ceph_osds*, %struct.ceph_osds** %17, align 8
  %33 = call i32 @osds_equal(%struct.ceph_osds* %31, %struct.ceph_osds* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %15
  %36 = load %struct.ceph_osds*, %struct.ceph_osds** %18, align 8
  %37 = load %struct.ceph_osds*, %struct.ceph_osds** %19, align 8
  %38 = call i32 @osds_equal(%struct.ceph_osds* %36, %struct.ceph_osds* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %35
  %41 = load i32, i32* %20, align 4
  %42 = load i32, i32* %21, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %62, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %22, align 4
  %46 = load i32, i32* %23, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %62, label %48

48:                                               ; preds = %44
  %49 = load %struct.ceph_pg*, %struct.ceph_pg** %30, align 8
  %50 = load i32, i32* %24, align 4
  %51 = load i32, i32* %25, align 4
  %52 = call i64 @ceph_pg_is_split(%struct.ceph_pg* %49, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %26, align 4
  %56 = load i32, i32* %27, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %28, align 4
  %60 = load i32, i32* %29, align 4
  %61 = icmp ne i32 %59, %60
  br label %62

62:                                               ; preds = %58, %54, %48, %44, %40, %35, %15
  %63 = phi i1 [ true, %54 ], [ true, %48 ], [ true, %44 ], [ true, %40 ], [ true, %35 ], [ true, %15 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  ret i32 %64
}

declare dso_local i32 @osds_equal(%struct.ceph_osds*, %struct.ceph_osds*) #1

declare dso_local i64 @ceph_pg_is_split(%struct.ceph_pg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
