; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_inode.c_jfs_commit_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_inode.c_jfs_commit_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@jfs_commit_inode.noisy = internal global i32 5, align 4
@.str = private unnamed_addr constant [34 x i8] c"In jfs_commit_inode, inode = 0x%p\00", align 1
@COMMIT_Dirty = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"jfs_commit_inode(0x%p) called on read-only volume\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Is remount racy?\00", align 1
@COMMIT_INODE = common dso_local global i32 0, align 4
@COMMIT_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jfs_commit_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i32 @jfs_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.inode* %8)
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @COMMIT_Dirty, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call i64 @test_cflag(i32 %15, %struct.inode* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %77

20:                                               ; preds = %14
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call i64 @isReadOnly(%struct.inode* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @special_file(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @jfs_commit_inode.noisy, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %34)
  %36 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @jfs_commit_inode.noisy, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* @jfs_commit_inode.noisy, align 4
  br label %39

39:                                               ; preds = %33, %30, %24
  store i32 0, i32* %3, align 4
  br label %77

40:                                               ; preds = %20
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @COMMIT_INODE, align 4
  %45 = call i32 @txBegin(i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %40
  %55 = load i32, i32* @COMMIT_Dirty, align 4
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = call i64 @test_cflag(i32 %55, %struct.inode* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @COMMIT_SYNC, align 4
  br label %66

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = call i32 @txCommit(i32 %60, i32 1, %struct.inode** %4, i32 %67)
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %66, %54, %40
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @txEnd(i32 %70)
  %72 = load %struct.inode*, %struct.inode** %4, align 8
  %73 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %69, %39, %19
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @jfs_info(i8*, %struct.inode*) #1

declare dso_local i64 @test_cflag(i32, %struct.inode*) #1

declare dso_local i64 @isReadOnly(%struct.inode*) #1

declare dso_local i32 @special_file(i32) #1

declare dso_local i32 @jfs_err(i8*, ...) #1

declare dso_local i32 @txBegin(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @txCommit(i32, i32, %struct.inode**, i32) #1

declare dso_local i32 @txEnd(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
