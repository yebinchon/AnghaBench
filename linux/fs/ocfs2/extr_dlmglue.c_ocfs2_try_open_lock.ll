; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_try_open_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_try_open_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_2__ = type { %struct.ocfs2_lock_res, i64 }

@.str = private unnamed_addr constant [37 x i8] c"inode %llu try to take %s open lock\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"EXMODE\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"PRMODE\00", align 1
@EROFS = common dso_local global i32 0, align 4
@DLM_LOCK_EX = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@DLM_LKF_NOQUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_try_open_lock(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_lock_res*, align 8
  %8 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ocfs2_super* @OCFS2_SB(i32 %11)
  store %struct.ocfs2_super* %12, %struct.ocfs2_super** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %21 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %16, i8* %20)
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %23 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @EROFS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %25
  br label %54

32:                                               ; preds = %2
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %34 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %54

37:                                               ; preds = %32
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store %struct.ocfs2_lock_res* %40, %struct.ocfs2_lock_res** %7, align 8
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @DLM_LOCK_EX, align 4
  br label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @DLM_LOCK_PR, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %6, align 4
  %49 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %50 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %53 = call i32 @ocfs2_cluster_lock(%struct.ocfs2_super* %49, %struct.ocfs2_lock_res* %50, i32 %51, i32 %52, i32 0)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %47, %36, %31
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i8*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_cluster_lock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
