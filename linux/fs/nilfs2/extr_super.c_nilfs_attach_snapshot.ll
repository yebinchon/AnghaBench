; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_attach_snapshot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_attach_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32, i32, i32 }
%struct.dentry = type { i32 }
%struct.nilfs_root = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"The specified checkpoint is not a snapshot (checkpoint number=%llu)\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"error %d while loading snapshot (checkpoint number=%llu)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i64, %struct.dentry**)* @nilfs_attach_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_attach_snapshot(%struct.super_block* %0, i64 %1, %struct.dentry** %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dentry**, align 8
  %7 = alloca %struct.the_nilfs*, align 8
  %8 = alloca %struct.nilfs_root*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.dentry** %2, %struct.dentry*** %6, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 0
  %12 = load %struct.the_nilfs*, %struct.the_nilfs** %11, align 8
  store %struct.the_nilfs* %12, %struct.the_nilfs** %7, align 8
  %13 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %14 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %17 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %16, i32 0, i32 1
  %18 = call i32 @down_read(i32* %17)
  %19 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %20 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @nilfs_cpfile_is_snapshot(i32 %21, i64 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %25 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %24, i32 0, i32 1
  %26 = call i32 @up_read(i32* %25)
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  br label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi i32 [ %36, %34 ], [ %38, %37 ]
  store i32 %40, i32* %9, align 4
  br label %72

41:                                               ; preds = %3
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = load %struct.super_block*, %struct.super_block** %4, align 8
  %46 = load i32, i32* @KERN_ERR, align 4
  %47 = load i64, i64* %5, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 (%struct.super_block*, i32, i8*, i32, ...) @nilfs_msg(%struct.super_block* %45, i32 %46, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %72

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.super_block*, %struct.super_block** %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @nilfs_attach_checkpoint(%struct.super_block* %54, i64 %55, i32 0, %struct.nilfs_root** %8)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.super_block*, %struct.super_block** %4, align 8
  %61 = load i32, i32* @KERN_ERR, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i64, i64* %5, align 8
  %64 = call i32 (%struct.super_block*, i32, i8*, i32, ...) @nilfs_msg(%struct.super_block* %60, i32 %61, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %62, i64 %63)
  br label %72

65:                                               ; preds = %53
  %66 = load %struct.super_block*, %struct.super_block** %4, align 8
  %67 = load %struct.nilfs_root*, %struct.nilfs_root** %8, align 8
  %68 = load %struct.dentry**, %struct.dentry*** %6, align 8
  %69 = call i32 @nilfs_get_root_dentry(%struct.super_block* %66, %struct.nilfs_root* %67, %struct.dentry** %68)
  store i32 %69, i32* %9, align 4
  %70 = load %struct.nilfs_root*, %struct.nilfs_root** %8, align 8
  %71 = call i32 @nilfs_put_root(%struct.nilfs_root* %70)
  br label %72

72:                                               ; preds = %65, %59, %44, %39
  %73 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %74 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @nilfs_cpfile_is_snapshot(i32, i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, i32, ...) #1

declare dso_local i32 @nilfs_attach_checkpoint(%struct.super_block*, i64, i32, %struct.nilfs_root**) #1

declare dso_local i32 @nilfs_get_root_dentry(%struct.super_block*, %struct.nilfs_root*, %struct.dentry**) #1

declare dso_local i32 @nilfs_put_root(%struct.nilfs_root*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
