; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_partition.c_udf_get_pblock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_partition.c_udf_get_pblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.udf_sb_info = type { i64, %struct.udf_part_map* }
%struct.udf_part_map = type { i32 (%struct.super_block.0*, i32, i64, i32)*, i32 }
%struct.super_block.0 = type opaque

@.str = private unnamed_addr constant [54 x i8] c"block=%u, partition=%u, offset=%u: invalid partition\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_get_pblock(%struct.super_block* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.udf_sb_info*, align 8
  %11 = alloca %struct.udf_part_map*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.super_block*, %struct.super_block** %6, align 8
  %13 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %12)
  store %struct.udf_sb_info* %13, %struct.udf_sb_info** %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.udf_sb_info*, %struct.udf_sb_info** %10, align 8
  %16 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @udf_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %21, i32 %22)
  store i32 -1, i32* %5, align 4
  br label %52

24:                                               ; preds = %4
  %25 = load %struct.udf_sb_info*, %struct.udf_sb_info** %10, align 8
  %26 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %25, i32 0, i32 1
  %27 = load %struct.udf_part_map*, %struct.udf_part_map** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %27, i64 %28
  store %struct.udf_part_map* %29, %struct.udf_part_map** %11, align 8
  %30 = load %struct.udf_part_map*, %struct.udf_part_map** %11, align 8
  %31 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %30, i32 0, i32 0
  %32 = load i32 (%struct.super_block.0*, i32, i64, i32)*, i32 (%struct.super_block.0*, i32, i64, i32)** %31, align 8
  %33 = icmp ne i32 (%struct.super_block.0*, i32, i64, i32)* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %24
  %35 = load %struct.udf_part_map*, %struct.udf_part_map** %11, align 8
  %36 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %35, i32 0, i32 0
  %37 = load i32 (%struct.super_block.0*, i32, i64, i32)*, i32 (%struct.super_block.0*, i32, i64, i32)** %36, align 8
  %38 = load %struct.super_block*, %struct.super_block** %6, align 8
  %39 = bitcast %struct.super_block* %38 to %struct.super_block.0*
  %40 = load i32, i32* %7, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 %37(%struct.super_block.0* %39, i32 %40, i64 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %52

44:                                               ; preds = %24
  %45 = load %struct.udf_part_map*, %struct.udf_part_map** %11, align 8
  %46 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %44, %34, %19
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @udf_debug(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
