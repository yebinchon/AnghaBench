; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ext4_jbd2.h_ext4_inode_journal_mode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ext4_jbd2.h_ext4_inode_journal_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }

@EXT4_INODE_WRITEBACK_DATA_MODE = common dso_local global i32 0, align 4
@DATA_FLAGS = common dso_local global i32 0, align 4
@EXT4_MOUNT_JOURNAL_DATA = common dso_local global i64 0, align 8
@EXT4_INODE_JOURNAL_DATA = common dso_local global i32 0, align 4
@DELALLOC = common dso_local global i32 0, align 4
@EXT4_INODE_ORDERED_DATA_MODE = common dso_local global i32 0, align 4
@EXT4_INODE_JOURNAL_DATA_MODE = common dso_local global i32 0, align 4
@EXT4_MOUNT_ORDERED_DATA = common dso_local global i64 0, align 8
@EXT4_MOUNT_WRITEBACK_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @ext4_inode_journal_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_inode_journal_mode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %4 = load %struct.inode*, %struct.inode** %3, align 8
  %5 = call i32* @EXT4_JOURNAL(%struct.inode* %4)
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @EXT4_INODE_WRITEBACK_DATA_MODE, align 4
  store i32 %8, i32* %2, align 4
  br label %71

9:                                                ; preds = %1
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @S_ISREG(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %9
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DATA_FLAGS, align 4
  %20 = call i64 @test_opt(i32 %18, i32 %19)
  %21 = load i64, i64* @EXT4_MOUNT_JOURNAL_DATA, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %15
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = load i32, i32* @EXT4_INODE_JOURNAL_DATA, align 4
  %26 = call i64 @ext4_test_inode_flag(%struct.inode* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DELALLOC, align 4
  %33 = call i64 @test_opt(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %28, %15, %9
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @S_ISREG(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = call i64 @IS_ENCRYPTED(%struct.inode* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @EXT4_INODE_ORDERED_DATA_MODE, align 4
  store i32 %46, i32* %2, align 4
  br label %71

47:                                               ; preds = %41, %35
  %48 = load i32, i32* @EXT4_INODE_JOURNAL_DATA_MODE, align 4
  store i32 %48, i32* %2, align 4
  br label %71

49:                                               ; preds = %28, %23
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DATA_FLAGS, align 4
  %54 = call i64 @test_opt(i32 %52, i32 %53)
  %55 = load i64, i64* @EXT4_MOUNT_ORDERED_DATA, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @EXT4_INODE_ORDERED_DATA_MODE, align 4
  store i32 %58, i32* %2, align 4
  br label %71

59:                                               ; preds = %49
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DATA_FLAGS, align 4
  %64 = call i64 @test_opt(i32 %62, i32 %63)
  %65 = load i64, i64* @EXT4_MOUNT_WRITEBACK_DATA, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @EXT4_INODE_WRITEBACK_DATA_MODE, align 4
  store i32 %68, i32* %2, align 4
  br label %71

69:                                               ; preds = %59
  %70 = call i32 (...) @BUG()
  br label %71

71:                                               ; preds = %69, %67, %57, %47, %45, %7
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32* @EXT4_JOURNAL(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @test_opt(i32, i32) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
