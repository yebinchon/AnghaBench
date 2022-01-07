; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_check_if_ancestor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_check_if_ancestor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.inode = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@ML_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [102 x i8] c"max lookup times reached, filesystem may have nested directories, src inode: %llu, dest inode: %llu.\0A\00", align 1
@MAX_LOOKUP_TIMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i64, i64)* @ocfs2_check_if_ancestor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_check_if_ancestor(%struct.ocfs2_super* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.inode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %10, align 8
  br label %13

13:                                               ; preds = %3, %75
  %14 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %15 = load i64, i64* %10, align 8
  %16 = call %struct.inode* @ocfs2_iget(%struct.ocfs2_super* %14, i64 %15, i32 0, i32 0)
  store %struct.inode* %16, %struct.inode** %11, align 8
  %17 = load %struct.inode*, %struct.inode** %11, align 8
  %18 = call i64 @IS_ERR(%struct.inode* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.inode*, %struct.inode** %11, align 8
  %22 = call i32 @PTR_ERR(%struct.inode* %21)
  store i32 %22, i32* %7, align 4
  br label %76

23:                                               ; preds = %13
  %24 = load %struct.inode*, %struct.inode** %11, align 8
  %25 = call i32 @ocfs2_inode_lock(%struct.inode* %24, i32* null, i32 0)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.inode*, %struct.inode** %11, align 8
  %30 = call i32 @iput(%struct.inode* %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @mlog_errno(i32 %36)
  br label %38

38:                                               ; preds = %35, %28
  br label %76

39:                                               ; preds = %23
  %40 = load %struct.inode*, %struct.inode** %11, align 8
  %41 = call i32 @ocfs2_lookup_ino_from_name(%struct.inode* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i64* %9)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.inode*, %struct.inode** %11, align 8
  %43 = call i32 @ocfs2_inode_unlock(%struct.inode* %42, i32 0)
  %44 = load %struct.inode*, %struct.inode** %11, align 8
  %45 = call i32 @iput(%struct.inode* %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @ENOENT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %76

51:                                               ; preds = %39
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 1, i32* %7, align 4
  br label %76

56:                                               ; preds = %51
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %59 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %57, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %76

65:                                               ; preds = %56
  %66 = load i64, i64* %9, align 8
  store i64 %66, i64* %10, align 8
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  %69 = icmp sge i32 %68, 32
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i32, i32* @ML_NOTICE, align 4
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @mlog(i32 %71, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0), i64 %72, i64 %73)
  store i32 0, i32* %7, align 4
  br label %76

75:                                               ; preds = %65
  br label %13

76:                                               ; preds = %70, %64, %55, %48, %38, %20
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local %struct.inode* @ocfs2_iget(%struct.ocfs2_super*, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, i32*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_lookup_ino_from_name(%struct.inode*, i8*, i32, i64*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
