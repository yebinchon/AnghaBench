; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_map_id_up.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_map_id_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uid_gid_map = type { i32 }
%struct.uid_gid_extent = type { i64, i64 }

@UID_GID_MAP_MAX_BASE_EXTENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.uid_gid_map*, i64)* @map_id_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @map_id_up(%struct.uid_gid_map* %0, i64 %1) #0 {
  %3 = alloca %struct.uid_gid_map*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.uid_gid_extent*, align 8
  %6 = alloca i32, align 4
  store %struct.uid_gid_map* %0, %struct.uid_gid_map** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.uid_gid_map*, %struct.uid_gid_map** %3, align 8
  %8 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = call i32 (...) @smp_rmb()
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @UID_GID_MAP_MAX_BASE_EXTENTS, align 4
  %13 = icmp ule i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.uid_gid_map*, %struct.uid_gid_map** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call %struct.uid_gid_extent* @map_id_up_base(i32 %15, %struct.uid_gid_map* %16, i64 %17)
  store %struct.uid_gid_extent* %18, %struct.uid_gid_extent** %5, align 8
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.uid_gid_map*, %struct.uid_gid_map** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call %struct.uid_gid_extent* @map_id_up_max(i32 %20, %struct.uid_gid_map* %21, i64 %22)
  store %struct.uid_gid_extent* %23, %struct.uid_gid_extent** %5, align 8
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %5, align 8
  %26 = icmp ne %struct.uid_gid_extent* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %5, align 8
  %30 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %5, align 8
  %34 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  store i64 %36, i64* %4, align 8
  br label %38

37:                                               ; preds = %24
  store i64 -1, i64* %4, align 8
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i64, i64* %4, align 8
  ret i64 %39
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local %struct.uid_gid_extent* @map_id_up_base(i32, %struct.uid_gid_map*, i64) #1

declare dso_local %struct.uid_gid_extent* @map_id_up_max(i32, %struct.uid_gid_map*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
