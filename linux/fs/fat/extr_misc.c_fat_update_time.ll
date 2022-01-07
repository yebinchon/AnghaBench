; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_misc.c_fat_update_time.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_misc.c_fat_update_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timespec64 = type { i32 }

@I_DIRTY_TIME = common dso_local global i32 0, align 4
@MSDOS_ROOT_INO = common dso_local global i64 0, align 8
@S_VERSION = common dso_local global i32 0, align 4
@S_ATIME = common dso_local global i32 0, align 4
@S_CTIME = common dso_local global i32 0, align 4
@S_MTIME = common dso_local global i32 0, align 4
@SB_LAZYTIME = common dso_local global i32 0, align 4
@I_DIRTY_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_update_time(%struct.inode* %0, %struct.timespec64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.timespec64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.timespec64* %1, %struct.timespec64** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @I_DIRTY_TIME, align 4
  store i32 %10, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MSDOS_ROOT_INO, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

17:                                               ; preds = %3
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = load %struct.timespec64*, %struct.timespec64** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @fat_truncate_time(%struct.inode* %18, %struct.timespec64* %19, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @S_VERSION, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call i32 @inode_maybe_inc_iversion(%struct.inode* %27, i32 0)
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %26, %17
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @S_ATIME, align 4
  %32 = load i32, i32* @S_CTIME, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @S_MTIME, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %30, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %29
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SB_LAZYTIME, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %38, %29
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* @I_DIRTY_SYNC, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @__mark_inode_dirty(%struct.inode* %56, i32 %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %16
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @fat_truncate_time(%struct.inode*, %struct.timespec64*, i32) #1

declare dso_local i32 @inode_maybe_inc_iversion(%struct.inode*, i32) #1

declare dso_local i32 @__mark_inode_dirty(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
