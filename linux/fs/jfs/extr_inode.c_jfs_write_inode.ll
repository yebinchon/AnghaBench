; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_inode.c_jfs_write_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_inode.c_jfs_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.writeback_control = type { i64 }
%struct.TYPE_2__ = type { i32 }

@WB_SYNC_ALL = common dso_local global i64 0, align 8
@COMMIT_Dirty = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"jfs_write_inode: jfs_commit_inode failed!\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jfs_write_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %7 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %8 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @WB_SYNC_ALL, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load i32, i32* @COMMIT_Dirty, align 4
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call i32 @test_cflag(i32 %19, %struct.inode* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %18
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.TYPE_2__* @JFS_SBI(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @jfs_flush_journal(i32 %29, i32 %30)
  store i32 0, i32* %3, align 4
  br label %42

32:                                               ; preds = %18
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @jfs_commit_inode(%struct.inode* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = call i32 @jfs_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %37, %23, %17
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @test_cflag(i32, %struct.inode*) #1

declare dso_local i32 @jfs_flush_journal(i32, i32) #1

declare dso_local %struct.TYPE_2__* @JFS_SBI(i32) #1

declare dso_local i64 @jfs_commit_inode(%struct.inode*, i32) #1

declare dso_local i32 @jfs_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
