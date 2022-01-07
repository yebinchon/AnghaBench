; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_userdlm.c_user_dlm_read_lvb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_userdlm.c_user_dlm_read_lvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.user_lock_res = type { i64, i32, i32 }
%struct.TYPE_2__ = type { %struct.user_lock_res }

@DLM_LVB_LEN = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_dlm_read_lvb(%struct.inode* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.user_lock_res*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.TYPE_2__* @DLMFS_I(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.user_lock_res* %12, %struct.user_lock_res** %7, align 8
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @DLM_LVB_LEN, align 4
  %16 = icmp ugt i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.user_lock_res*, %struct.user_lock_res** %7, align 8
  %20 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %19, i32 0, i32 1
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.user_lock_res*, %struct.user_lock_res** %7, align 8
  %23 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DLM_LOCK_PR, align 8
  %26 = icmp slt i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.user_lock_res*, %struct.user_lock_res** %7, align 8
  %30 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %29, i32 0, i32 2
  %31 = call i64 @ocfs2_dlm_lvb_valid(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = load %struct.user_lock_res*, %struct.user_lock_res** %7, align 8
  %35 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %34, i32 0, i32 2
  %36 = call i8* @ocfs2_dlm_lvb(i32* %35)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @memcpy(i8* %37, i8* %38, i32 %39)
  br label %42

41:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %41, %33
  %43 = load %struct.user_lock_res*, %struct.user_lock_res** %7, align 8
  %44 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_2__* @DLMFS_I(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ocfs2_dlm_lvb_valid(i32*) #1

declare dso_local i8* @ocfs2_dlm_lvb(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
