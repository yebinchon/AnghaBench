; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_update_disksize_before_punch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_update_disksize_before_punch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i64 }

@EXT4_HT_MISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_update_disksize_before_punch(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call i64 @i_size_read(%struct.inode* %10)
  store i64 %11, i64* %9, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call i32 @inode_is_locked(%struct.inode* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* %9, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %3
  store i32 0, i32* %4, align 4
  br label %55

28:                                               ; preds = %21
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %55

36:                                               ; preds = %28
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = load i32, i32* @EXT4_HT_MISC, align 4
  %39 = call i32* @ext4_journal_start(%struct.inode* %37, i32 %38, i32 1)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i64 @IS_ERR(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @PTR_ERR(i32* %44)
  store i32 %45, i32* %4, align 4
  br label %55

46:                                               ; preds = %36
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @ext4_update_i_disksize(%struct.inode* %47, i64 %48)
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = call i32 @ext4_mark_inode_dirty(i32* %50, %struct.inode* %51)
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @ext4_journal_stop(i32* %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %46, %43, %35, %27
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @inode_is_locked(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_update_i_disksize(%struct.inode*, i64) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
