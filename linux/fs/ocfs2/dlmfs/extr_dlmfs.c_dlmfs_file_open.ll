; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_dlmfs.c_dlmfs_file_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_dlmfs.c_dlmfs_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.file = type { %struct.dlmfs_filp_private*, i32 }
%struct.dlmfs_filp_private = type { i32 }
%struct.dlmfs_inode_private = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"open called on inode %lu, flags 0x%x\0A\00", align 1
@O_APPEND = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DLM_LKF_NOQUEUE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ETXTBSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dlmfs_file_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlmfs_file_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dlmfs_filp_private*, align 8
  %9 = alloca %struct.dlmfs_inode_private*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store %struct.dlmfs_filp_private* null, %struct.dlmfs_filp_private** %8, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @S_ISDIR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (...) @BUG()
  br label %17

17:                                               ; preds = %15, %2
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dlmfs_decode_open_flags(i32 %27, i32* %6, i32* %7)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %79

32:                                               ; preds = %17
  %33 = load i32, i32* @O_APPEND, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.file*, %struct.file** %4, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* @GFP_NOFS, align 4
  %40 = call %struct.dlmfs_filp_private* @kmalloc(i32 4, i32 %39)
  store %struct.dlmfs_filp_private* %40, %struct.dlmfs_filp_private** %8, align 8
  %41 = load %struct.dlmfs_filp_private*, %struct.dlmfs_filp_private** %8, align 8
  %42 = icmp ne %struct.dlmfs_filp_private* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %79

46:                                               ; preds = %32
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.dlmfs_filp_private*, %struct.dlmfs_filp_private** %8, align 8
  %49 = getelementptr inbounds %struct.dlmfs_filp_private, %struct.dlmfs_filp_private* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = call %struct.dlmfs_inode_private* @DLMFS_I(%struct.inode* %50)
  store %struct.dlmfs_inode_private* %51, %struct.dlmfs_inode_private** %9, align 8
  %52 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %9, align 8
  %53 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %52, i32 0, i32 0
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @user_dlm_cluster_lock(i32* %53, i32 %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %46
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @EAGAIN, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @ETXTBSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %69, %64, %59
  %73 = load %struct.dlmfs_filp_private*, %struct.dlmfs_filp_private** %8, align 8
  %74 = call i32 @kfree(%struct.dlmfs_filp_private* %73)
  br label %79

75:                                               ; preds = %46
  %76 = load %struct.dlmfs_filp_private*, %struct.dlmfs_filp_private** %8, align 8
  %77 = load %struct.file*, %struct.file** %4, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 0
  store %struct.dlmfs_filp_private* %76, %struct.dlmfs_filp_private** %78, align 8
  br label %79

79:                                               ; preds = %75, %72, %43, %31
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i32 @dlmfs_decode_open_flags(i32, i32*, i32*) #1

declare dso_local %struct.dlmfs_filp_private* @kmalloc(i32, i32) #1

declare dso_local %struct.dlmfs_inode_private* @DLMFS_I(%struct.inode*) #1

declare dso_local i32 @user_dlm_cluster_lock(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.dlmfs_filp_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
