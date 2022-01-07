; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_part_tbl.c_hfs_parse_old_pmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_part_tbl.c_hfs_parse_old_pmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.old_pmap = type { %struct.old_pmap_entry* }
%struct.old_pmap_entry = type { i64, i64, i64 }
%struct.hfsplus_sb_info = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.old_pmap*, i64*, i64*)* @hfs_parse_old_pmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfs_parse_old_pmap(%struct.super_block* %0, %struct.old_pmap* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.old_pmap*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.hfsplus_sb_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.old_pmap_entry*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.old_pmap* %1, %struct.old_pmap** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = call %struct.hfsplus_sb_info* @HFSPLUS_SB(%struct.super_block* %13)
  store %struct.hfsplus_sb_info* %14, %struct.hfsplus_sb_info** %10, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %65, %4
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 42
  br i1 %17, label %18, label %68

18:                                               ; preds = %15
  %19 = load %struct.old_pmap*, %struct.old_pmap** %7, align 8
  %20 = getelementptr inbounds %struct.old_pmap, %struct.old_pmap* %19, i32 0, i32 0
  %21 = load %struct.old_pmap_entry*, %struct.old_pmap_entry** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.old_pmap_entry, %struct.old_pmap_entry* %21, i64 %23
  store %struct.old_pmap_entry* %24, %struct.old_pmap_entry** %12, align 8
  %25 = load %struct.old_pmap_entry*, %struct.old_pmap_entry** %12, align 8
  %26 = getelementptr inbounds %struct.old_pmap_entry, %struct.old_pmap_entry* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %18
  %30 = load %struct.old_pmap_entry*, %struct.old_pmap_entry** %12, align 8
  %31 = getelementptr inbounds %struct.old_pmap_entry, %struct.old_pmap_entry* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %29
  %35 = load %struct.old_pmap_entry*, %struct.old_pmap_entry** %12, align 8
  %36 = getelementptr inbounds %struct.old_pmap_entry, %struct.old_pmap_entry* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @cpu_to_be32(i32 1413894961)
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %34
  %41 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %10, align 8
  %42 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %10, align 8
  %47 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %45, %40
  %52 = load %struct.old_pmap_entry*, %struct.old_pmap_entry** %12, align 8
  %53 = getelementptr inbounds %struct.old_pmap_entry, %struct.old_pmap_entry* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @be32_to_cpu(i64 %54)
  %56 = load i64*, i64** %8, align 8
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %55
  store i64 %58, i64* %56, align 8
  %59 = load %struct.old_pmap_entry*, %struct.old_pmap_entry** %12, align 8
  %60 = getelementptr inbounds %struct.old_pmap_entry, %struct.old_pmap_entry* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @be32_to_cpu(i64 %61)
  %63 = load i64*, i64** %9, align 8
  store i64 %62, i64* %63, align 8
  store i32 0, i32* %5, align 4
  br label %71

64:                                               ; preds = %45, %34, %29, %18
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %15

68:                                               ; preds = %15
  %69 = load i32, i32* @ENOENT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %68, %51
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.hfsplus_sb_info* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i64 @be32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
