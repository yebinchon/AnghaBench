; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_map_id_range_down.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_map_id_range_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uid_gid_map = type { i32 }
%struct.uid_gid_extent = type { i64, i64 }

@UID_GID_MAP_MAX_BASE_EXTENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.uid_gid_map*, i64, i64)* @map_id_range_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @map_id_range_down(%struct.uid_gid_map* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.uid_gid_map*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.uid_gid_extent*, align 8
  %8 = alloca i32, align 4
  store %struct.uid_gid_map* %0, %struct.uid_gid_map** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.uid_gid_map*, %struct.uid_gid_map** %4, align 8
  %10 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = call i32 (...) @smp_rmb()
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @UID_GID_MAP_MAX_BASE_EXTENTS, align 4
  %15 = icmp ule i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.uid_gid_map*, %struct.uid_gid_map** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.uid_gid_extent* @map_id_range_down_base(i32 %17, %struct.uid_gid_map* %18, i64 %19, i64 %20)
  store %struct.uid_gid_extent* %21, %struct.uid_gid_extent** %7, align 8
  br label %28

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.uid_gid_map*, %struct.uid_gid_map** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call %struct.uid_gid_extent* @map_id_range_down_max(i32 %23, %struct.uid_gid_map* %24, i64 %25, i64 %26)
  store %struct.uid_gid_extent* %27, %struct.uid_gid_extent** %7, align 8
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %7, align 8
  %30 = icmp ne %struct.uid_gid_extent* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %7, align 8
  %34 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %7, align 8
  %38 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  store i64 %40, i64* %5, align 8
  br label %42

41:                                               ; preds = %28
  store i64 -1, i64* %5, align 8
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i64, i64* %5, align 8
  ret i64 %43
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local %struct.uid_gid_extent* @map_id_range_down_base(i32, %struct.uid_gid_map*, i64, i64) #1

declare dso_local %struct.uid_gid_extent* @map_id_range_down_max(i32, %struct.uid_gid_map*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
