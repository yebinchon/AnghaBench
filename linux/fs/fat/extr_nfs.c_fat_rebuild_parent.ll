; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_nfs.c_fat_rebuild_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_nfs.c_fat_rebuild_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.msdos_dir_entry = type { i32 }
%struct.fat_slot_info = type { i32, i32 }
%struct.msdos_sb_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_2__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"unable to read cluster of parent directory\00", align 1
@MSDOS_ROOT_INO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i32)* @fat_rebuild_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @fat_rebuild_parent(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msdos_dir_entry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.fat_slot_info, align 4
  %12 = alloca %struct.msdos_sb_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.inode* null, %struct.inode** %9, align 8
  store %struct.inode* null, %struct.inode** %10, align 8
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %15)
  store %struct.msdos_sb_info* %16, %struct.msdos_sb_info** %12, align 8
  %17 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %12, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @fat_clus_to_blknr(%struct.msdos_sb_info* %17, i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = load i32, i32* %13, align 4
  %22 = call %struct.buffer_head* @sb_bread(%struct.super_block* %20, i32 %21)
  store %struct.buffer_head* %22, %struct.buffer_head** %14, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %24 = icmp ne %struct.buffer_head* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load %struct.super_block*, %struct.super_block** %4, align 8
  %27 = load i32, i32* @KERN_ERR, align 4
  %28 = call i32 @fat_msg(%struct.super_block* %26, i32 %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store %struct.inode* null, %struct.inode** %3, align 8
  br label %87

29:                                               ; preds = %2
  %30 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %31 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.msdos_dir_entry*
  store %struct.msdos_dir_entry* %33, %struct.msdos_dir_entry** %8, align 8
  %34 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %12, align 8
  %35 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %8, align 8
  %36 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %35, i64 0
  %37 = call i32 @fat_get_start(%struct.msdos_sb_info* %34, %struct.msdos_dir_entry* %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %12, align 8
  %39 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %8, align 8
  %40 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %39, i64 1
  %41 = call i32 @fat_get_start(%struct.msdos_sb_info* %38, %struct.msdos_dir_entry* %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call %struct.inode* @fat_dget(%struct.super_block* %42, i32 %43)
  store %struct.inode* %44, %struct.inode** %10, align 8
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = icmp ne %struct.inode* %45, null
  br i1 %46, label %69, label %47

47:                                               ; preds = %29
  %48 = load %struct.super_block*, %struct.super_block** %4, align 8
  %49 = call %struct.inode* @new_inode(%struct.super_block* %48)
  store %struct.inode* %49, %struct.inode** %10, align 8
  %50 = load %struct.inode*, %struct.inode** %10, align 8
  %51 = icmp ne %struct.inode* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %54 = call i32 @brelse(%struct.buffer_head* %53)
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %55, %struct.inode** %3, align 8
  br label %87

56:                                               ; preds = %47
  %57 = load %struct.super_block*, %struct.super_block** %4, align 8
  %58 = load i32, i32* @MSDOS_ROOT_INO, align 4
  %59 = call i32 @iunique(%struct.super_block* %57, i32 %58)
  %60 = load %struct.inode*, %struct.inode** %10, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.inode*, %struct.inode** %10, align 8
  %63 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %8, align 8
  %64 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %63, i64 1
  %65 = call i32 @fat_fill_inode(%struct.inode* %62, %struct.msdos_dir_entry* %64)
  %66 = load %struct.inode*, %struct.inode** %10, align 8
  %67 = call %struct.TYPE_2__* @MSDOS_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 -1, i32* %68, align 4
  br label %69

69:                                               ; preds = %56, %29
  %70 = load %struct.inode*, %struct.inode** %10, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @fat_scan_logstart(%struct.inode* %70, i32 %71, %struct.fat_slot_info* %11)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %69
  %75 = load %struct.super_block*, %struct.super_block** %4, align 8
  %76 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %11, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %11, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.inode* @fat_build_inode(%struct.super_block* %75, i32 %77, i32 %79)
  store %struct.inode* %80, %struct.inode** %9, align 8
  br label %81

81:                                               ; preds = %74, %69
  %82 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %83 = call i32 @brelse(%struct.buffer_head* %82)
  %84 = load %struct.inode*, %struct.inode** %10, align 8
  %85 = call i32 @iput(%struct.inode* %84)
  %86 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %86, %struct.inode** %3, align 8
  br label %87

87:                                               ; preds = %81, %52, %25
  %88 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %88
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @fat_clus_to_blknr(%struct.msdos_sb_info*, i32) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @fat_msg(%struct.super_block*, i32, i8*) #1

declare dso_local i32 @fat_get_start(%struct.msdos_sb_info*, %struct.msdos_dir_entry*) #1

declare dso_local %struct.inode* @fat_dget(%struct.super_block*, i32) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @iunique(%struct.super_block*, i32) #1

declare dso_local i32 @fat_fill_inode(%struct.inode*, %struct.msdos_dir_entry*) #1

declare dso_local %struct.TYPE_2__* @MSDOS_I(%struct.inode*) #1

declare dso_local i32 @fat_scan_logstart(%struct.inode*, i32, %struct.fat_slot_info*) #1

declare dso_local %struct.inode* @fat_build_inode(%struct.super_block*, i32, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
