; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_dlmfs.c_dlmfs_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_dlmfs.c_dlmfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.qstr }
%struct.qstr = type { i64, i8* }

@.str = private unnamed_addr constant [13 x i8] c"create %.*s\0A\00", align 1
@USER_DLM_LOCK_ID_MAX_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid lock name, %.*s\0A\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @dlmfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlmfs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.qstr*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  store %struct.qstr* %13, %struct.qstr** %11, align 8
  %14 = load %struct.qstr*, %struct.qstr** %11, align 8
  %15 = getelementptr inbounds %struct.qstr, %struct.qstr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.qstr*, %struct.qstr** %11, align 8
  %18 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %16, i8* %19)
  %21 = load %struct.qstr*, %struct.qstr** %11, align 8
  %22 = getelementptr inbounds %struct.qstr, %struct.qstr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @USER_DLM_LOCK_ID_MAX_LEN, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %4
  %27 = load %struct.qstr*, %struct.qstr** %11, align 8
  %28 = getelementptr inbounds %struct.qstr, %struct.qstr* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 36
  br i1 %33, label %34, label %45

34:                                               ; preds = %26, %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @ML_ERROR, align 4
  %38 = load %struct.qstr*, %struct.qstr** %11, align 8
  %39 = getelementptr inbounds %struct.qstr, %struct.qstr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.qstr*, %struct.qstr** %11, align 8
  %42 = getelementptr inbounds %struct.qstr, %struct.qstr* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @mlog(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %40, i8* %43)
  br label %65

45:                                               ; preds = %26
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = load %struct.dentry*, %struct.dentry** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @S_IFREG, align 4
  %50 = or i32 %48, %49
  %51 = call %struct.inode* @dlmfs_get_inode(%struct.inode* %46, %struct.dentry* %47, i32 %50)
  store %struct.inode* %51, %struct.inode** %10, align 8
  %52 = load %struct.inode*, %struct.inode** %10, align 8
  %53 = icmp ne %struct.inode* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @mlog_errno(i32 %57)
  br label %65

59:                                               ; preds = %45
  %60 = load %struct.dentry*, %struct.dentry** %6, align 8
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = call i32 @d_instantiate(%struct.dentry* %60, %struct.inode* %61)
  %63 = load %struct.dentry*, %struct.dentry** %6, align 8
  %64 = call i32 @dget(%struct.dentry* %63)
  br label %65

65:                                               ; preds = %59, %54, %34
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local i32 @mlog(i32, i8*, i64, i8*) #1

declare dso_local %struct.inode* @dlmfs_get_inode(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
