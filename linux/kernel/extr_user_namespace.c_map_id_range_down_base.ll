; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_map_id_range_down_base.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_map_id_range_down_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uid_gid_extent = type { i64, i64 }
%struct.uid_gid_map = type { %struct.uid_gid_extent* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uid_gid_extent* (i32, %struct.uid_gid_map*, i64, i64)* @map_id_range_down_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uid_gid_extent* @map_id_range_down_base(i32 %0, %struct.uid_gid_map* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.uid_gid_extent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uid_gid_map*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.uid_gid_map* %1, %struct.uid_gid_map** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = add nsw i64 %14, %15
  %17 = sub nsw i64 %16, 1
  store i64 %17, i64* %13, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %65, %4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %18
  %23 = load %struct.uid_gid_map*, %struct.uid_gid_map** %7, align 8
  %24 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %23, i32 0, i32 0
  %25 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %25, i64 %27
  %29 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load %struct.uid_gid_map*, %struct.uid_gid_map** %7, align 8
  %33 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %32, i32 0, i32 0
  %34 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %34, i64 %36
  %38 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %31, %39
  %41 = sub nsw i64 %40, 1
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %22
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp sle i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp sle i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load %struct.uid_gid_map*, %struct.uid_gid_map** %7, align 8
  %59 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %58, i32 0, i32 0
  %60 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %60, i64 %62
  store %struct.uid_gid_extent* %63, %struct.uid_gid_extent** %5, align 8
  br label %69

64:                                               ; preds = %53, %49, %45, %22
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %18

68:                                               ; preds = %18
  store %struct.uid_gid_extent* null, %struct.uid_gid_extent** %5, align 8
  br label %69

69:                                               ; preds = %68, %57
  %70 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %5, align 8
  ret %struct.uid_gid_extent* %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
