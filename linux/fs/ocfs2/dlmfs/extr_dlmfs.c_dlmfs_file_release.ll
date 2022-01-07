; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_dlmfs.c_dlmfs_file_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_dlmfs.c_dlmfs_file_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.file = type { %struct.dlmfs_filp_private* }
%struct.dlmfs_filp_private = type { i32 }
%struct.dlmfs_inode_private = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"close called on inode %lu\0A\00", align 1
@DLM_LOCK_IV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dlmfs_file_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlmfs_file_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dlmfs_inode_private*, align 8
  %7 = alloca %struct.dlmfs_filp_private*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.dlmfs_inode_private* @DLMFS_I(%struct.inode* %8)
  store %struct.dlmfs_inode_private* %9, %struct.dlmfs_inode_private** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.dlmfs_filp_private*, %struct.dlmfs_filp_private** %11, align 8
  store %struct.dlmfs_filp_private* %12, %struct.dlmfs_filp_private** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @S_ISDIR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (...) @BUG()
  br label %20

20:                                               ; preds = %18, %2
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.dlmfs_filp_private*, %struct.dlmfs_filp_private** %7, align 8
  %26 = icmp ne %struct.dlmfs_filp_private* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %20
  %28 = load %struct.dlmfs_filp_private*, %struct.dlmfs_filp_private** %7, align 8
  %29 = getelementptr inbounds %struct.dlmfs_filp_private, %struct.dlmfs_filp_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @DLM_LOCK_IV, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %6, align 8
  %36 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %35, i32 0, i32 0
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @user_dlm_cluster_unlock(i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %27
  %40 = load %struct.dlmfs_filp_private*, %struct.dlmfs_filp_private** %7, align 8
  %41 = call i32 @kfree(%struct.dlmfs_filp_private* %40)
  %42 = load %struct.file*, %struct.file** %4, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 0
  store %struct.dlmfs_filp_private* null, %struct.dlmfs_filp_private** %43, align 8
  br label %44

44:                                               ; preds = %39, %20
  ret i32 0
}

declare dso_local %struct.dlmfs_inode_private* @DLMFS_I(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @user_dlm_cluster_unlock(i32*, i32) #1

declare dso_local i32 @kfree(%struct.dlmfs_filp_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
