; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_ialloc.c_ufs2_init_inodes_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_ialloc.c_ufs2_init_inodes_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.ufs_cg_private_info = type { i32 }
%struct.ufs_cylinder_group = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ufs_sb_private_info = type { i64, i32, i64, i32 }
%struct.TYPE_6__ = type { %struct.ufs_sb_private_info* }

@.str = private unnamed_addr constant [15 x i8] c"ENTER cgno %d\0A\00", align 1
@SB_SYNCHRONOUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.ufs_cg_private_info*, %struct.ufs_cylinder_group*)* @ufs2_init_inodes_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs2_init_inodes_chunk(%struct.super_block* %0, %struct.ufs_cg_private_info* %1, %struct.ufs_cylinder_group* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ufs_cg_private_info*, align 8
  %6 = alloca %struct.ufs_cylinder_group*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ufs_sb_private_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ufs_cg_private_info* %1, %struct.ufs_cg_private_info** %5, align 8
  store %struct.ufs_cylinder_group* %2, %struct.ufs_cylinder_group** %6, align 8
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = call %struct.TYPE_6__* @UFS_SB(%struct.super_block* %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %13, align 8
  store %struct.ufs_sb_private_info* %14, %struct.ufs_sb_private_info** %8, align 8
  %15 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %16 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %5, align 8
  %19 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %22 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %20, %23
  %25 = sext i32 %24 to i64
  %26 = load %struct.super_block*, %struct.super_block** %4, align 8
  %27 = load %struct.ufs_cylinder_group*, %struct.ufs_cylinder_group** %6, align 8
  %28 = getelementptr inbounds %struct.ufs_cylinder_group, %struct.ufs_cylinder_group* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @fs32_to_cpu(%struct.super_block* %26, i32 %31)
  %33 = add nsw i64 %25, %32
  %34 = call i64 @ufs_inotofsba(i64 %33)
  %35 = add nsw i64 %17, %34
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %38 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  store i64 %40, i64* %10, align 8
  %41 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %5, align 8
  %42 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %80, %3
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %45
  %50 = load %struct.super_block*, %struct.super_block** %4, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %50, i64 %51)
  store %struct.buffer_head* %52, %struct.buffer_head** %7, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %54 = call i32 @lock_buffer(%struct.buffer_head* %53)
  %55 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.super_block*, %struct.super_block** %4, align 8
  %59 = getelementptr inbounds %struct.super_block, %struct.super_block* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memset(i32 %57, i32 0, i32 %60)
  %62 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %63 = call i32 @set_buffer_uptodate(%struct.buffer_head* %62)
  %64 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %65 = call i32 @mark_buffer_dirty(%struct.buffer_head* %64)
  %66 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %67 = call i32 @unlock_buffer(%struct.buffer_head* %66)
  %68 = load %struct.super_block*, %struct.super_block** %4, align 8
  %69 = getelementptr inbounds %struct.super_block, %struct.super_block* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SB_SYNCHRONOUS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %49
  %75 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %76 = call i32 @sync_dirty_buffer(%struct.buffer_head* %75)
  br label %77

77:                                               ; preds = %74, %49
  %78 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %79 = call i32 @brelse(%struct.buffer_head* %78)
  br label %80

80:                                               ; preds = %77
  %81 = load i64, i64* %9, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %9, align 8
  br label %45

83:                                               ; preds = %45
  %84 = load %struct.super_block*, %struct.super_block** %4, align 8
  %85 = load %struct.ufs_cylinder_group*, %struct.ufs_cylinder_group** %6, align 8
  %86 = getelementptr inbounds %struct.ufs_cylinder_group, %struct.ufs_cylinder_group* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %90 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @fs32_add(%struct.super_block* %84, i32* %88, i32 %91)
  %93 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %5, align 8
  %94 = call i32 @UCPI_UBH(%struct.ufs_cg_private_info* %93)
  %95 = call i32 @ubh_mark_buffer_dirty(i32 %94)
  %96 = load %struct.super_block*, %struct.super_block** %4, align 8
  %97 = getelementptr inbounds %struct.super_block, %struct.super_block* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @SB_SYNCHRONOUS, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %83
  %103 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %5, align 8
  %104 = call i32 @UCPI_UBH(%struct.ufs_cg_private_info* %103)
  %105 = call i32 @ubh_sync_block(i32 %104)
  br label %106

106:                                              ; preds = %102, %83
  %107 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_6__* @UFS_SB(%struct.super_block*) #1

declare dso_local i64 @ufs_inotofsba(i64) #1

declare dso_local i64 @fs32_to_cpu(%struct.super_block*, i32) #1

declare dso_local i32 @UFSD(i8*, ...) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i64) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @fs32_add(%struct.super_block*, i32*, i32) #1

declare dso_local i32 @ubh_mark_buffer_dirty(i32) #1

declare dso_local i32 @UCPI_UBH(%struct.ufs_cg_private_info*) #1

declare dso_local i32 @ubh_sync_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
