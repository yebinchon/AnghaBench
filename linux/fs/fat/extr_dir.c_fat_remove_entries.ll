; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_remove_entries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_remove_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.fat_slot_info = type { i32, i32, %struct.buffer_head*, %struct.msdos_dir_entry* }
%struct.buffer_head = type { i64 }
%struct.msdos_dir_entry = type { i32* }

@DELETED_FLAG = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Couldn't remove the long name slots\00", align 1
@S_ATIME = common dso_local global i32 0, align 4
@S_MTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_remove_entries(%struct.inode* %0, %struct.fat_slot_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.fat_slot_info*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.msdos_dir_entry*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.fat_slot_info* %1, %struct.fat_slot_info** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.fat_slot_info*, %struct.fat_slot_info** %5, align 8
  %15 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load %struct.fat_slot_info*, %struct.fat_slot_info** %5, align 8
  %18 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %17, i32 0, i32 3
  %19 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %18, align 8
  store %struct.msdos_dir_entry* %19, %struct.msdos_dir_entry** %7, align 8
  %20 = load %struct.fat_slot_info*, %struct.fat_slot_info** %5, align 8
  %21 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %20, i32 0, i32 3
  store %struct.msdos_dir_entry* null, %struct.msdos_dir_entry** %21, align 8
  %22 = load %struct.fat_slot_info*, %struct.fat_slot_info** %5, align 8
  %23 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %22, i32 0, i32 2
  %24 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  store %struct.buffer_head* %24, %struct.buffer_head** %8, align 8
  %25 = load %struct.fat_slot_info*, %struct.fat_slot_info** %5, align 8
  %26 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %25, i32 0, i32 2
  store %struct.buffer_head* null, %struct.buffer_head** %26, align 8
  br label %27

27:                                               ; preds = %39, %2
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %7, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.msdos_dir_entry*
  %36 = icmp uge %struct.msdos_dir_entry* %31, %35
  br label %37

37:                                               ; preds = %30, %27
  %38 = phi i1 [ false, %27 ], [ %36, %30 ]
  br i1 %38, label %39, label %49

39:                                               ; preds = %37
  %40 = load i32, i32* @DELETED_FLAG, align 4
  %41 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %7, align 8
  %42 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %40, i32* %44, align 4
  %45 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %7, align 8
  %46 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %45, i32 -1
  store %struct.msdos_dir_entry* %46, %struct.msdos_dir_entry** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %10, align 4
  br label %27

49:                                               ; preds = %37
  %50 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %50, %struct.inode* %51)
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = call i64 @IS_DIRSYNC(%struct.inode* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %58 = call i32 @sync_dirty_buffer(%struct.buffer_head* %57)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %56, %49
  %60 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %61 = call i32 @brelse(%struct.buffer_head* %60)
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %101

66:                                               ; preds = %59
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = call i32 @inode_inc_iversion(%struct.inode* %67)
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load %struct.inode*, %struct.inode** %4, align 8
  %73 = load %struct.fat_slot_info*, %struct.fat_slot_info** %5, align 8
  %74 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @__fat_remove_entries(%struct.inode* %72, i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load %struct.super_block*, %struct.super_block** %6, align 8
  %82 = load i32, i32* @KERN_WARNING, align 4
  %83 = call i32 @fat_msg(%struct.super_block* %81, i32 %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %80, %71
  br label %85

85:                                               ; preds = %84, %66
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = load i32, i32* @S_ATIME, align 4
  %88 = load i32, i32* @S_MTIME, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @fat_truncate_time(%struct.inode* %86, i32* null, i32 %89)
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = call i64 @IS_DIRSYNC(%struct.inode* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load %struct.inode*, %struct.inode** %4, align 8
  %96 = call i32 @fat_sync_inode(%struct.inode* %95)
  br label %100

97:                                               ; preds = %85
  %98 = load %struct.inode*, %struct.inode** %4, align 8
  %99 = call i32 @mark_inode_dirty(%struct.inode* %98)
  br label %100

100:                                              ; preds = %97, %94
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %64
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local i32 @__fat_remove_entries(%struct.inode*, i32, i32) #1

declare dso_local i32 @fat_msg(%struct.super_block*, i32, i8*) #1

declare dso_local i32 @fat_truncate_time(%struct.inode*, i32*, i32) #1

declare dso_local i32 @fat_sync_inode(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
