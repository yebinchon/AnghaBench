; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_primary_changed.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_primary_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osds = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_osds*, %struct.ceph_osds*)* @primary_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @primary_changed(%struct.ceph_osds* %0, %struct.ceph_osds* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_osds*, align 8
  %5 = alloca %struct.ceph_osds*, align 8
  store %struct.ceph_osds* %0, %struct.ceph_osds** %4, align 8
  store %struct.ceph_osds* %1, %struct.ceph_osds** %5, align 8
  %6 = load %struct.ceph_osds*, %struct.ceph_osds** %4, align 8
  %7 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.ceph_osds*, %struct.ceph_osds** %5, align 8
  %12 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %55

16:                                               ; preds = %10, %2
  %17 = load %struct.ceph_osds*, %struct.ceph_osds** %4, align 8
  %18 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load %struct.ceph_osds*, %struct.ceph_osds** %5, align 8
  %24 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = xor i32 %22, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %55

32:                                               ; preds = %16
  %33 = load %struct.ceph_osds*, %struct.ceph_osds** %4, align 8
  %34 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ceph_osds*, %struct.ceph_osds** %5, align 8
  %37 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %55

41:                                               ; preds = %32
  %42 = load %struct.ceph_osds*, %struct.ceph_osds** %4, align 8
  %43 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ceph_osds*, %struct.ceph_osds** %4, align 8
  %46 = call i64 @calc_pg_rank(i64 %44, %struct.ceph_osds* %45)
  %47 = load %struct.ceph_osds*, %struct.ceph_osds** %5, align 8
  %48 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ceph_osds*, %struct.ceph_osds** %5, align 8
  %51 = call i64 @calc_pg_rank(i64 %49, %struct.ceph_osds* %50)
  %52 = icmp ne i64 %46, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %55

54:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %53, %40, %31, %15
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @calc_pg_rank(i64, %struct.ceph_osds*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
