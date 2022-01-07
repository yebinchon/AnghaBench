; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.fat_boot_sector = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.msdos_sb_info = type { i64 }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Volume was not properly unmounted. Some data may be corrupt. Please run fsck.\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"unable to read boot sector to mark fs as dirty\00", align 1
@FAT_STATE_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i32, i32)* @fat_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fat_set_state(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.fat_boot_sector*, align 8
  %9 = alloca %struct.msdos_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %10)
  store %struct.msdos_sb_info* %11, %struct.msdos_sb_info** %9, align 8
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = call i64 @sb_rdonly(%struct.super_block* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %94

19:                                               ; preds = %15, %3
  %20 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %21 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = load i32, i32* @KERN_WARNING, align 4
  %30 = call i32 @fat_msg(%struct.super_block* %28, i32 %29, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %24
  br label %94

32:                                               ; preds = %19
  %33 = load %struct.super_block*, %struct.super_block** %4, align 8
  %34 = call %struct.buffer_head* @sb_bread(%struct.super_block* %33, i32 0)
  store %struct.buffer_head* %34, %struct.buffer_head** %7, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %36 = icmp eq %struct.buffer_head* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.super_block*, %struct.super_block** %4, align 8
  %39 = load i32, i32* @KERN_ERR, align 4
  %40 = call i32 @fat_msg(%struct.super_block* %38, i32 %39, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %94

41:                                               ; preds = %32
  %42 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %43 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.fat_boot_sector*
  store %struct.fat_boot_sector* %45, %struct.fat_boot_sector** %8, align 8
  %46 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %47 = call i64 @is_fat32(%struct.msdos_sb_info* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %41
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* @FAT_STATE_DIRTY, align 4
  %54 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %8, align 8
  %55 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 4
  br label %67

59:                                               ; preds = %49
  %60 = load i32, i32* @FAT_STATE_DIRTY, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %8, align 8
  %63 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %61
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %59, %52
  br label %87

68:                                               ; preds = %41
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* @FAT_STATE_DIRTY, align 4
  %73 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %8, align 8
  %74 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %72
  store i32 %77, i32* %75, align 4
  br label %86

78:                                               ; preds = %68
  %79 = load i32, i32* @FAT_STATE_DIRTY, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %8, align 8
  %82 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %80
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %78, %71
  br label %87

87:                                               ; preds = %86, %67
  %88 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %89 = call i32 @mark_buffer_dirty(%struct.buffer_head* %88)
  %90 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %91 = call i32 @sync_dirty_buffer(%struct.buffer_head* %90)
  %92 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %93 = call i32 @brelse(%struct.buffer_head* %92)
  br label %94

94:                                               ; preds = %87, %37, %31, %18
  ret void
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @fat_msg(%struct.super_block*, i32, i8*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i64 @is_fat32(%struct.msdos_sb_info*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
