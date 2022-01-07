; ModuleID = '/home/carl/AnghaBench/linux/fs/tracefs/extr_inode.c_start_creating.c'
source_filename = "/home/carl/AnghaBench/linux/fs/tracefs/extr_inode.c_start_creating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.dentry* }
%struct.dentry = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"tracefs: creating file '%s'\0A\00", align 1
@trace_fs_type = common dso_local global i32 0, align 4
@tracefs_mount = common dso_local global %struct.TYPE_4__* null, align 8
@tracefs_mount_count = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (i8*, %struct.dentry*)* @start_creating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @start_creating(i8* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = call i32 @simple_pin_fs(i32* @trace_fs_type, %struct.TYPE_4__** @tracefs_mount, i32* @tracefs_mount_count)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.dentry* @ERR_PTR(i32 %14)
  store %struct.dentry* %15, %struct.dentry** %3, align 8
  br label %59

16:                                               ; preds = %2
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = icmp ne %struct.dentry* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tracefs_mount, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.dentry*, %struct.dentry** %21, align 8
  store %struct.dentry* %22, %struct.dentry** %5, align 8
  br label %23

23:                                               ; preds = %19, %16
  %24 = load %struct.dentry*, %struct.dentry** %5, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @inode_lock(i64 %26)
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.dentry*, %struct.dentry** %5, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = call %struct.dentry* @lookup_one_len(i8* %28, %struct.dentry* %29, i32 %31)
  store %struct.dentry* %32, %struct.dentry** %6, align 8
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = call i64 @IS_ERR(%struct.dentry* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %23
  %37 = load %struct.dentry*, %struct.dentry** %6, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  %43 = call i32 @dput(%struct.dentry* %42)
  %44 = load i32, i32* @EEXIST, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.dentry* @ERR_PTR(i32 %45)
  store %struct.dentry* %46, %struct.dentry** %6, align 8
  br label %47

47:                                               ; preds = %41, %36, %23
  %48 = load %struct.dentry*, %struct.dentry** %6, align 8
  %49 = call i64 @IS_ERR(%struct.dentry* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load %struct.dentry*, %struct.dentry** %5, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @inode_unlock(i64 %54)
  %56 = call i32 @simple_release_fs(%struct.TYPE_4__** @tracefs_mount, i32* @tracefs_mount_count)
  br label %57

57:                                               ; preds = %51, %47
  %58 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %58, %struct.dentry** %3, align 8
  br label %59

59:                                               ; preds = %57, %13
  %60 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %60
}

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @simple_pin_fs(i32*, %struct.TYPE_4__**, i32*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @inode_lock(i64) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(i64) #1

declare dso_local i32 @simple_release_fs(%struct.TYPE_4__**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
