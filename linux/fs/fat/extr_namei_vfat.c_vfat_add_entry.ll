; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_vfat_add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_vfat_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.timespec64 = type { i32 }
%struct.fat_slot_info = type { i32 }
%struct.msdos_dir_slot = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@MSDOS_SLOTS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S_CTIME = common dso_local global i32 0, align 4
@S_MTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*, i32, i32, %struct.timespec64*, %struct.fat_slot_info*)* @vfat_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfat_add_entry(%struct.inode* %0, %struct.qstr* %1, i32 %2, i32 %3, %struct.timespec64* %4, %struct.fat_slot_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.timespec64*, align 8
  %13 = alloca %struct.fat_slot_info*, align 8
  %14 = alloca %struct.msdos_dir_slot*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.qstr* %1, %struct.qstr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.timespec64* %4, %struct.timespec64** %12, align 8
  store %struct.fat_slot_info* %5, %struct.fat_slot_info** %13, align 8
  %18 = load %struct.qstr*, %struct.qstr** %9, align 8
  %19 = call i32 @vfat_striptail_len(%struct.qstr* %18)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %78

25:                                               ; preds = %6
  %26 = load i32, i32* @MSDOS_SLOTS, align 4
  %27 = load i32, i32* @GFP_NOFS, align 4
  %28 = call %struct.msdos_dir_slot* @kmalloc_array(i32 %26, i32 4, i32 %27)
  store %struct.msdos_dir_slot* %28, %struct.msdos_dir_slot** %14, align 8
  %29 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %14, align 8
  %30 = icmp eq %struct.msdos_dir_slot* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %78

34:                                               ; preds = %25
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = load %struct.qstr*, %struct.qstr** %9, align 8
  %37 = getelementptr inbounds %struct.qstr, %struct.qstr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.timespec64*, %struct.timespec64** %12, align 8
  %43 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %14, align 8
  %44 = call i32 @vfat_build_slots(%struct.inode* %35, i32 %38, i32 %39, i32 %40, i32 %41, %struct.timespec64* %42, %struct.msdos_dir_slot* %43, i32* %17)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %74

48:                                               ; preds = %34
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %14, align 8
  %51 = load i32, i32* %17, align 4
  %52 = load %struct.fat_slot_info*, %struct.fat_slot_info** %13, align 8
  %53 = call i32 @fat_add_entries(%struct.inode* %49, %struct.msdos_dir_slot* %50, i32 %51, %struct.fat_slot_info* %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %74

57:                                               ; preds = %48
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = load %struct.timespec64*, %struct.timespec64** %12, align 8
  %60 = load i32, i32* @S_CTIME, align 4
  %61 = load i32, i32* @S_MTIME, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @fat_truncate_time(%struct.inode* %58, %struct.timespec64* %59, i32 %62)
  %64 = load %struct.inode*, %struct.inode** %8, align 8
  %65 = call i64 @IS_DIRSYNC(%struct.inode* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = call i32 @fat_sync_inode(%struct.inode* %68)
  br label %73

70:                                               ; preds = %57
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = call i32 @mark_inode_dirty(%struct.inode* %71)
  br label %73

73:                                               ; preds = %70, %67
  br label %74

74:                                               ; preds = %73, %56, %47
  %75 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %14, align 8
  %76 = call i32 @kfree(%struct.msdos_dir_slot* %75)
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %74, %31, %22
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @vfat_striptail_len(%struct.qstr*) #1

declare dso_local %struct.msdos_dir_slot* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @vfat_build_slots(%struct.inode*, i32, i32, i32, i32, %struct.timespec64*, %struct.msdos_dir_slot*, i32*) #1

declare dso_local i32 @fat_add_entries(%struct.inode*, %struct.msdos_dir_slot*, i32, %struct.fat_slot_info*) #1

declare dso_local i32 @fat_truncate_time(%struct.inode*, %struct.timespec64*, i32) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @fat_sync_inode(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.msdos_dir_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
