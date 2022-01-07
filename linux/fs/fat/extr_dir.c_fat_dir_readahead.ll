; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_dir_readahead.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_dir_readahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.msdos_sb_info = type { i32 }
%struct.buffer_head = type { i32 }

@MSDOS_ROOT_INO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, i32)* @fat_dir_readahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fat_dir_readahead(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.msdos_sb_info*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %7, align 8
  %14 = load %struct.super_block*, %struct.super_block** %7, align 8
  %15 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %14)
  store %struct.msdos_sb_info* %15, %struct.msdos_sb_info** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %8, align 8
  %18 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %16, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %8, align 8
  %25 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %3
  br label %70

29:                                               ; preds = %23
  %30 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %8, align 8
  %31 = call i32 @is_fat32(%struct.msdos_sb_info* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MSDOS_ROOT_INO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %70

40:                                               ; preds = %33, %29
  %41 = load %struct.super_block*, %struct.super_block** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call %struct.buffer_head* @sb_find_get_block(%struct.super_block* %41, i32 %42)
  store %struct.buffer_head* %43, %struct.buffer_head** %9, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %45 = icmp eq %struct.buffer_head* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %48 = call i32 @buffer_uptodate(%struct.buffer_head* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %46, %40
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %63, %50
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %8, align 8
  %54 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load %struct.super_block*, %struct.super_block** %7, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %59, %60
  %62 = call i32 @sb_breadahead(%struct.super_block* %58, i32 %61)
  br label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %51

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66, %46
  %68 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %69 = call i32 @brelse(%struct.buffer_head* %68)
  br label %70

70:                                               ; preds = %67, %39, %28
  ret void
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @is_fat32(%struct.msdos_sb_info*) #1

declare dso_local %struct.buffer_head* @sb_find_get_block(%struct.super_block*, i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @sb_breadahead(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
