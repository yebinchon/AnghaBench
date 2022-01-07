; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_fatent.c_fat_ent_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_fatent.c_fat_ent_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.fat_entry = type { i32 }
%struct.msdos_sb_info = type { %struct.fatent_operations* }
%struct.fatent_operations = type { i32 (%struct.super_block*, %struct.fat_entry.0*, i32, i32)*, i32 (%struct.fat_entry.1*)*, i32 (%struct.super_block*, i32, i32*, i32*)* }
%struct.fat_entry.0 = type opaque
%struct.fat_entry.1 = type opaque

@.str = private unnamed_addr constant [37 x i8] c"invalid access to FAT (entry 0x%08x)\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_ent_read(%struct.inode* %0, %struct.fat_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.fat_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.msdos_sb_info*, align 8
  %10 = alloca %struct.fatent_operations*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.fat_entry* %1, %struct.fat_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  %20 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %19)
  store %struct.msdos_sb_info* %20, %struct.msdos_sb_info** %9, align 8
  %21 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %22 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %21, i32 0, i32 0
  %23 = load %struct.fatent_operations*, %struct.fatent_operations** %22, align 8
  store %struct.fatent_operations* %23, %struct.fatent_operations** %10, align 8
  %24 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @fat_valid_entry(%struct.msdos_sb_info* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %3
  %29 = load %struct.fat_entry*, %struct.fat_entry** %6, align 8
  %30 = call i32 @fatent_brelse(%struct.fat_entry* %29)
  %31 = load %struct.super_block*, %struct.super_block** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @fat_fs_error(%struct.super_block* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %76

36:                                               ; preds = %3
  %37 = load %struct.fat_entry*, %struct.fat_entry** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @fatent_set_entry(%struct.fat_entry* %37, i32 %38)
  %40 = load %struct.fatent_operations*, %struct.fatent_operations** %10, align 8
  %41 = getelementptr inbounds %struct.fatent_operations, %struct.fatent_operations* %40, i32 0, i32 2
  %42 = load i32 (%struct.super_block*, i32, i32*, i32*)*, i32 (%struct.super_block*, i32, i32*, i32*)** %41, align 8
  %43 = load %struct.super_block*, %struct.super_block** %8, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 %42(%struct.super_block* %43, i32 %44, i32* %12, i32* %13)
  %46 = load %struct.super_block*, %struct.super_block** %8, align 8
  %47 = load %struct.fat_entry*, %struct.fat_entry** %6, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @fat_ent_update_ptr(%struct.super_block* %46, %struct.fat_entry* %47, i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %36
  %53 = load %struct.fat_entry*, %struct.fat_entry** %6, align 8
  %54 = call i32 @fatent_brelse(%struct.fat_entry* %53)
  %55 = load %struct.fatent_operations*, %struct.fatent_operations** %10, align 8
  %56 = getelementptr inbounds %struct.fatent_operations, %struct.fatent_operations* %55, i32 0, i32 0
  %57 = load i32 (%struct.super_block*, %struct.fat_entry.0*, i32, i32)*, i32 (%struct.super_block*, %struct.fat_entry.0*, i32, i32)** %56, align 8
  %58 = load %struct.super_block*, %struct.super_block** %8, align 8
  %59 = load %struct.fat_entry*, %struct.fat_entry** %6, align 8
  %60 = bitcast %struct.fat_entry* %59 to %struct.fat_entry.0*
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 %57(%struct.super_block* %58, %struct.fat_entry.0* %60, i32 %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %4, align 4
  br label %76

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68, %36
  %70 = load %struct.fatent_operations*, %struct.fatent_operations** %10, align 8
  %71 = getelementptr inbounds %struct.fatent_operations, %struct.fatent_operations* %70, i32 0, i32 1
  %72 = load i32 (%struct.fat_entry.1*)*, i32 (%struct.fat_entry.1*)** %71, align 8
  %73 = load %struct.fat_entry*, %struct.fat_entry** %6, align 8
  %74 = bitcast %struct.fat_entry* %73 to %struct.fat_entry.1*
  %75 = call i32 %72(%struct.fat_entry.1* %74)
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %69, %66, %28
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @fat_valid_entry(%struct.msdos_sb_info*, i32) #1

declare dso_local i32 @fatent_brelse(%struct.fat_entry*) #1

declare dso_local i32 @fat_fs_error(%struct.super_block*, i8*, i32) #1

declare dso_local i32 @fatent_set_entry(%struct.fat_entry*, i32) #1

declare dso_local i32 @fat_ent_update_ptr(%struct.super_block*, %struct.fat_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
