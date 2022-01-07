; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_get_implied_cluster_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_get_implied_cluster_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_map_blocks = type { i64, i8*, i64 }
%struct.ext4_extent = type { i32 }
%struct.ext4_ext_path = type { i32 }
%struct.ext4_sb_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ext4_map_blocks*, %struct.ext4_extent*, %struct.ext4_ext_path*)* @get_implied_cluster_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_implied_cluster_alloc(%struct.super_block* %0, %struct.ext4_map_blocks* %1, %struct.ext4_extent* %2, %struct.ext4_ext_path* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ext4_map_blocks*, align 8
  %8 = alloca %struct.ext4_extent*, align 8
  %9 = alloca %struct.ext4_ext_path*, align 8
  %10 = alloca %struct.ext4_sb_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.ext4_map_blocks* %1, %struct.ext4_map_blocks** %7, align 8
  store %struct.ext4_extent* %2, %struct.ext4_extent** %8, align 8
  store %struct.ext4_ext_path* %3, %struct.ext4_ext_path** %9, align 8
  %19 = load %struct.super_block*, %struct.super_block** %6, align 8
  %20 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %19)
  store %struct.ext4_sb_info* %20, %struct.ext4_sb_info** %10, align 8
  %21 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %22 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %7, align 8
  %23 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @EXT4_LBLK_COFF(%struct.ext4_sb_info* %21, i64 %24)
  store i64 %25, i64* %11, align 8
  %26 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %27 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le32_to_cpu(i32 %28)
  store i64 %29, i64* %15, align 8
  %30 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %31 = call zeroext i16 @ext4_ext_pblock(%struct.ext4_extent* %30)
  store i16 %31, i16* %16, align 2
  %32 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %33 = call zeroext i16 @ext4_ext_get_actual_len(%struct.ext4_extent* %32)
  store i16 %33, i16* %17, align 2
  %34 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %35 = load i64, i64* %15, align 8
  %36 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %34, i64 %35)
  store i64 %36, i64* %12, align 8
  %37 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %38 = load i64, i64* %15, align 8
  %39 = load i16, i16* %17, align 2
  %40 = zext i16 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = sub nsw i64 %41, 1
  %43 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %37, i64 %42)
  store i64 %43, i64* %13, align 8
  %44 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %45 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %7, align 8
  %46 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %44, i64 %47)
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %13, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %4
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %130

56:                                               ; preds = %52, %4
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i16, i16* %17, align 2
  %62 = zext i16 %61 to i32
  %63 = sub nsw i32 %62, 1
  %64 = load i16, i16* %16, align 2
  %65 = zext i16 %64 to i32
  %66 = add nsw i32 %65, %63
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %16, align 2
  br label %68

68:                                               ; preds = %60, %56
  %69 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %70 = load i16, i16* %16, align 2
  %71 = call i64 @EXT4_PBLK_CMASK(%struct.ext4_sb_info* %69, i16 zeroext %70)
  %72 = load i64, i64* %11, align 8
  %73 = add nsw i64 %71, %72
  %74 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %7, align 8
  %75 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %7, align 8
  %77 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %80 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = zext i32 %82 to i64
  %84 = load i64, i64* %11, align 8
  %85 = sub nsw i64 %83, %84
  %86 = call i8* @min(i8* %78, i64 %85)
  %87 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %7, align 8
  %88 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %7, align 8
  %90 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %15, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %68
  %95 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %7, align 8
  %96 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load i64, i64* %15, align 8
  %99 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %7, align 8
  %100 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %98, %101
  %103 = call i8* @min(i8* %97, i64 %102)
  %104 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %7, align 8
  %105 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %94, %68
  %107 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %7, align 8
  %108 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %15, align 8
  %111 = icmp sgt i64 %109, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %106
  %113 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %114 = call i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path* %113)
  store i64 %114, i64* %18, align 8
  %115 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %7, align 8
  %116 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = load i64, i64* %18, align 8
  %119 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %7, align 8
  %120 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %118, %121
  %123 = call i8* @min(i8* %117, i64 %122)
  %124 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %7, align 8
  %125 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %112, %106
  %127 = load %struct.super_block*, %struct.super_block** %6, align 8
  %128 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %7, align 8
  %129 = call i32 @trace_ext4_get_implied_cluster_alloc_exit(%struct.super_block* %127, %struct.ext4_map_blocks* %128, i32 1)
  store i32 1, i32* %5, align 4
  br label %134

130:                                              ; preds = %52
  %131 = load %struct.super_block*, %struct.super_block** %6, align 8
  %132 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %7, align 8
  %133 = call i32 @trace_ext4_get_implied_cluster_alloc_exit(%struct.super_block* %131, %struct.ext4_map_blocks* %132, i32 0)
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %130, %126
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @EXT4_LBLK_COFF(%struct.ext4_sb_info*, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local zeroext i16 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local zeroext i16 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i64 @EXT4_B2C(%struct.ext4_sb_info*, i64) #1

declare dso_local i64 @EXT4_PBLK_CMASK(%struct.ext4_sb_info*, i16 zeroext) #1

declare dso_local i8* @min(i8*, i64) #1

declare dso_local i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path*) #1

declare dso_local i32 @trace_ext4_get_implied_cluster_alloc_exit(%struct.super_block*, %struct.ext4_map_blocks*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
