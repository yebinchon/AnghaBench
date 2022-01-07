; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_dlmfs.c_dlmfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_dlmfs.c_dlmfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.qstr }
%struct.qstr = type { i64, i32 }
%struct.dlmfs_inode_private = type { %struct.ocfs2_cluster_connection* }
%struct.ocfs2_cluster_connection = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"mkdir %.*s\0A\00", align 1
@GROUP_NAME_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"invalid domain name for directory.\0A\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Error %d could not register domain \22%.*s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @dlmfs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlmfs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca %struct.dlmfs_inode_private*, align 8
  %11 = alloca %struct.ocfs2_cluster_connection*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.inode* null, %struct.inode** %8, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  store %struct.qstr* %13, %struct.qstr** %9, align 8
  %14 = load %struct.qstr*, %struct.qstr** %9, align 8
  %15 = getelementptr inbounds %struct.qstr, %struct.qstr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.qstr*, %struct.qstr** %9, align 8
  %18 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %16, i32 %19)
  %21 = load %struct.qstr*, %struct.qstr** %9, align 8
  %22 = getelementptr inbounds %struct.qstr, %struct.qstr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @GROUP_NAME_MAX, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @ML_ERROR, align 4
  %30 = call i32 (i32, i8*, ...) @mlog(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %76

31:                                               ; preds = %3
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = load %struct.dentry*, %struct.dentry** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @S_IFDIR, align 4
  %36 = or i32 %34, %35
  %37 = call %struct.inode* @dlmfs_get_inode(%struct.inode* %32, %struct.dentry* %33, i32 %36)
  store %struct.inode* %37, %struct.inode** %8, align 8
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = icmp ne %struct.inode* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @mlog_errno(i32 %43)
  br label %76

45:                                               ; preds = %31
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = call %struct.dlmfs_inode_private* @DLMFS_I(%struct.inode* %46)
  store %struct.dlmfs_inode_private* %47, %struct.dlmfs_inode_private** %10, align 8
  %48 = load %struct.qstr*, %struct.qstr** %9, align 8
  %49 = call %struct.ocfs2_cluster_connection* @user_dlm_register(%struct.qstr* %48)
  store %struct.ocfs2_cluster_connection* %49, %struct.ocfs2_cluster_connection** %11, align 8
  %50 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %11, align 8
  %51 = call i64 @IS_ERR(%struct.ocfs2_cluster_connection* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %45
  %54 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %11, align 8
  %55 = call i32 @PTR_ERR(%struct.ocfs2_cluster_connection* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @ML_ERROR, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.qstr*, %struct.qstr** %9, align 8
  %59 = getelementptr inbounds %struct.qstr, %struct.qstr* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.qstr*, %struct.qstr** %9, align 8
  %62 = getelementptr inbounds %struct.qstr, %struct.qstr* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, ...) @mlog(i32 %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %57, i64 %60, i32 %63)
  br label %76

65:                                               ; preds = %45
  %66 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %11, align 8
  %67 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %10, align 8
  %68 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %67, i32 0, i32 0
  store %struct.ocfs2_cluster_connection* %66, %struct.ocfs2_cluster_connection** %68, align 8
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = call i32 @inc_nlink(%struct.inode* %69)
  %71 = load %struct.dentry*, %struct.dentry** %5, align 8
  %72 = load %struct.inode*, %struct.inode** %8, align 8
  %73 = call i32 @d_instantiate(%struct.dentry* %71, %struct.inode* %72)
  %74 = load %struct.dentry*, %struct.dentry** %5, align 8
  %75 = call i32 @dget(%struct.dentry* %74)
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %65, %53, %40, %26
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.inode*, %struct.inode** %8, align 8
  %81 = call i32 @iput(%struct.inode* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local %struct.inode* @dlmfs_get_inode(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.dlmfs_inode_private* @DLMFS_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_cluster_connection* @user_dlm_register(%struct.qstr*) #1

declare dso_local i64 @IS_ERR(%struct.ocfs2_cluster_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.ocfs2_cluster_connection*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
