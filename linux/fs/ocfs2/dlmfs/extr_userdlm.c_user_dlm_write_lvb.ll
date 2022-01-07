; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_userdlm.c_user_dlm_write_lvb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_userdlm.c_user_dlm_write_lvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.user_lock_res = type { i64, i32, i32 }
%struct.TYPE_2__ = type { %struct.user_lock_res }

@DLM_LVB_LEN = common dso_local global i32 0, align 4
@DLM_LOCK_EX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_dlm_write_lvb(%struct.inode* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.user_lock_res*, align 8
  %8 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.TYPE_2__* @DLMFS_I(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.user_lock_res* %11, %struct.user_lock_res** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @DLM_LVB_LEN, align 4
  %14 = icmp ugt i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.user_lock_res*, %struct.user_lock_res** %7, align 8
  %18 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.user_lock_res*, %struct.user_lock_res** %7, align 8
  %21 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DLM_LOCK_EX, align 8
  %24 = icmp slt i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.user_lock_res*, %struct.user_lock_res** %7, align 8
  %28 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %27, i32 0, i32 2
  %29 = call i8* @ocfs2_dlm_lvb(i32* %28)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @memcpy(i8* %30, i8* %31, i32 %32)
  %34 = load %struct.user_lock_res*, %struct.user_lock_res** %7, align 8
  %35 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %34, i32 0, i32 1
  %36 = call i32 @spin_unlock(i32* %35)
  ret void
}

declare dso_local %struct.TYPE_2__* @DLMFS_I(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @ocfs2_dlm_lvb(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
