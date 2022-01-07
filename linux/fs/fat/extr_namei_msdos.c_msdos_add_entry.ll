; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_namei_msdos.c_msdos_add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_namei_msdos.c_msdos_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.timespec64 = type { i32 }
%struct.fat_slot_info = type { i32 }
%struct.msdos_sb_info = type { i32 }
%struct.msdos_dir_entry = type { i64, i8*, i8*, i64, i64, i64, i64, i64, i32, i32 }

@MSDOS_NAME = common dso_local global i32 0, align 4
@ATTR_DIR = common dso_local global i32 0, align 4
@ATTR_ARCH = common dso_local global i32 0, align 4
@ATTR_HIDDEN = common dso_local global i32 0, align 4
@S_CTIME = common dso_local global i32 0, align 4
@S_MTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i32, i32, i32, %struct.timespec64*, %struct.fat_slot_info*)* @msdos_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdos_add_entry(%struct.inode* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.timespec64* %5, %struct.fat_slot_info* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.timespec64*, align 8
  %15 = alloca %struct.fat_slot_info*, align 8
  %16 = alloca %struct.msdos_sb_info*, align 8
  %17 = alloca %struct.msdos_dir_entry, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.timespec64* %5, %struct.timespec64** %14, align 8
  store %struct.fat_slot_info* %6, %struct.fat_slot_info** %15, align 8
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.msdos_sb_info* @MSDOS_SB(i32 %23)
  store %struct.msdos_sb_info* %24, %struct.msdos_sb_info** %16, align 8
  %25 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* @MSDOS_NAME, align 4
  %29 = call i32 @memcpy(i32 %26, i8* %27, i32 %28)
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %7
  %33 = load i32, i32* @ATTR_DIR, align 4
  br label %36

34:                                               ; preds = %7
  %35 = load i32, i32* @ATTR_ARCH, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 8
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* @ATTR_HIDDEN, align 4
  %43 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %41, %36
  %47 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 7
  store i64 0, i64* %47, align 8
  %48 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %16, align 8
  %49 = load %struct.timespec64*, %struct.timespec64** %14, align 8
  %50 = call i32 @fat_time_unix2fat(%struct.msdos_sb_info* %48, %struct.timespec64* %49, i8** %18, i8** %19, i32* null)
  %51 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 6
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load i8*, i8** %18, align 8
  %56 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  %57 = load i8*, i8** %19, align 8
  %58 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 1
  store i8* %57, i8** %58, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @fat_set_start(%struct.msdos_dir_entry* %17, i32 %59)
  %61 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.inode*, %struct.inode** %9, align 8
  %63 = load %struct.fat_slot_info*, %struct.fat_slot_info** %15, align 8
  %64 = call i32 @fat_add_entries(%struct.inode* %62, %struct.msdos_dir_entry* %17, i32 1, %struct.fat_slot_info* %63)
  store i32 %64, i32* %20, align 4
  %65 = load i32, i32* %20, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %46
  %68 = load i32, i32* %20, align 4
  store i32 %68, i32* %8, align 4
  br label %86

69:                                               ; preds = %46
  %70 = load %struct.inode*, %struct.inode** %9, align 8
  %71 = load %struct.timespec64*, %struct.timespec64** %14, align 8
  %72 = load i32, i32* @S_CTIME, align 4
  %73 = load i32, i32* @S_MTIME, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @fat_truncate_time(%struct.inode* %70, %struct.timespec64* %71, i32 %74)
  %76 = load %struct.inode*, %struct.inode** %9, align 8
  %77 = call i64 @IS_DIRSYNC(%struct.inode* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load %struct.inode*, %struct.inode** %9, align 8
  %81 = call i32 @fat_sync_inode(%struct.inode* %80)
  br label %85

82:                                               ; preds = %69
  %83 = load %struct.inode*, %struct.inode** %9, align 8
  %84 = call i32 @mark_inode_dirty(%struct.inode* %83)
  br label %85

85:                                               ; preds = %82, %79
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %85, %67
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @fat_time_unix2fat(%struct.msdos_sb_info*, %struct.timespec64*, i8**, i8**, i32*) #1

declare dso_local i32 @fat_set_start(%struct.msdos_dir_entry*, i32) #1

declare dso_local i32 @fat_add_entries(%struct.inode*, %struct.msdos_dir_entry*, i32, %struct.fat_slot_info*) #1

declare dso_local i32 @fat_truncate_time(%struct.inode*, %struct.timespec64*, i32) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @fat_sync_inode(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
