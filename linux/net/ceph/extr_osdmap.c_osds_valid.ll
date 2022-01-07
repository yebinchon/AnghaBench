; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_osds_valid.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_osds_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osds = type { i64, i32, i64* }

@CRUSH_ITEM_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_osds*)* @osds_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osds_valid(%struct.ceph_osds* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_osds*, align 8
  %4 = alloca i32, align 4
  store %struct.ceph_osds* %0, %struct.ceph_osds** %3, align 8
  %5 = load %struct.ceph_osds*, %struct.ceph_osds** %3, align 8
  %6 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.ceph_osds*, %struct.ceph_osds** %3, align 8
  %11 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %69

15:                                               ; preds = %9, %1
  %16 = load %struct.ceph_osds*, %struct.ceph_osds** %3, align 8
  %17 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.ceph_osds*, %struct.ceph_osds** %3, align 8
  %22 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %69

26:                                               ; preds = %20, %15
  %27 = load %struct.ceph_osds*, %struct.ceph_osds** %3, align 8
  %28 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %68

31:                                               ; preds = %26
  %32 = load %struct.ceph_osds*, %struct.ceph_osds** %3, align 8
  %33 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %68

36:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %56, %36
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.ceph_osds*, %struct.ceph_osds** %3, align 8
  %41 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %37
  %45 = load %struct.ceph_osds*, %struct.ceph_osds** %3, align 8
  %46 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CRUSH_ITEM_NONE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %59

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %37

59:                                               ; preds = %54, %37
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.ceph_osds*, %struct.ceph_osds** %3, align 8
  %63 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 1, i32* %2, align 4
  br label %69

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %31, %26
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %66, %25, %14
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
