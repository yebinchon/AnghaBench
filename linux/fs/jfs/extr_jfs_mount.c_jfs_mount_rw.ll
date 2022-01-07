; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_mount.c_jfs_mount_rw.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_mount.c_jfs_mount_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.jfs_sb_info = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@FM_CLEAN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"jfs_mount_rw: diMount failed!\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"jfs_mount_rw: dbMount failed!\00", align 1
@FM_MOUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"jfs_mount: updateSuper failed w/rc = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jfs_mount_rw(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.jfs_sb_info*, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = call %struct.jfs_sb_info* @JFS_SBI(%struct.super_block* %8)
  store %struct.jfs_sb_info* %9, %struct.jfs_sb_info** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %64

12:                                               ; preds = %2
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = call i64 @chkSuper(%struct.super_block* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %18 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FM_CLEAN, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %12
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %85

25:                                               ; preds = %16
  %26 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %27 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @truncate_inode_pages(i32 %30, i32 0)
  %32 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %33 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @truncate_inode_pages(i32 %36, i32 0)
  %38 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %39 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 @diUnmount(%struct.TYPE_5__* %40, i32 1)
  %42 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %43 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = call i32 @diMount(%struct.TYPE_5__* %44)
  store i32 %45, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %25
  %48 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %85

50:                                               ; preds = %25
  %51 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %52 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = call i32 @dbUnmount(%struct.TYPE_6__* %53, i32 1)
  %55 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %56 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = call i32 @dbMount(%struct.TYPE_6__* %57)
  store i32 %58, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %85

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %2
  %65 = load %struct.super_block*, %struct.super_block** %4, align 8
  %66 = call i32 @lmLogOpen(%struct.super_block* %65)
  store i32 %66, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %85

70:                                               ; preds = %64
  %71 = load %struct.super_block*, %struct.super_block** %4, align 8
  %72 = load i32, i32* @FM_MOUNT, align 4
  %73 = call i32 @updateSuper(%struct.super_block* %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  %77 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load %struct.super_block*, %struct.super_block** %4, align 8
  %79 = call i32 @lmLogClose(%struct.super_block* %78)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %85

81:                                               ; preds = %70
  %82 = load %struct.super_block*, %struct.super_block** %4, align 8
  %83 = call i32 @logMOUNT(%struct.super_block* %82)
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %75, %68, %60, %47, %22
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(%struct.super_block*) #1

declare dso_local i64 @chkSuper(%struct.super_block*) #1

declare dso_local i32 @truncate_inode_pages(i32, i32) #1

declare dso_local i32 @diUnmount(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @diMount(%struct.TYPE_5__*) #1

declare dso_local i32 @jfs_err(i8*, ...) #1

declare dso_local i32 @dbUnmount(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dbMount(%struct.TYPE_6__*) #1

declare dso_local i32 @lmLogOpen(%struct.super_block*) #1

declare dso_local i32 @updateSuper(%struct.super_block*, i32) #1

declare dso_local i32 @lmLogClose(%struct.super_block*) #1

declare dso_local i32 @logMOUNT(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
