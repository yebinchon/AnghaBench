; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_map_id_up_base.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_map_id_up_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uid_gid_extent = type { i64, i64 }
%struct.uid_gid_map = type { %struct.uid_gid_extent* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uid_gid_extent* (i32, %struct.uid_gid_map*, i64)* @map_id_up_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uid_gid_extent* @map_id_up_base(i32 %0, %struct.uid_gid_map* %1, i64 %2) #0 {
  %4 = alloca %struct.uid_gid_extent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uid_gid_map*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.uid_gid_map* %1, %struct.uid_gid_map** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %50, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %11
  %16 = load %struct.uid_gid_map*, %struct.uid_gid_map** %6, align 8
  %17 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %16, i32 0, i32 0
  %18 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %18, i64 %20
  %22 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.uid_gid_map*, %struct.uid_gid_map** %6, align 8
  %26 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %25, i32 0, i32 0
  %27 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %27, i64 %29
  %31 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %24, %32
  %34 = sub nsw i64 %33, 1
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %15
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.uid_gid_map*, %struct.uid_gid_map** %6, align 8
  %44 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %43, i32 0, i32 0
  %45 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %45, i64 %47
  store %struct.uid_gid_extent* %48, %struct.uid_gid_extent** %4, align 8
  br label %54

49:                                               ; preds = %38, %15
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %11

53:                                               ; preds = %11
  store %struct.uid_gid_extent* null, %struct.uid_gid_extent** %4, align 8
  br label %54

54:                                               ; preds = %53, %42
  %55 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %4, align 8
  ret %struct.uid_gid_extent* %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
