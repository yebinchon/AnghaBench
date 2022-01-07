; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_mount.c_kernfs_get_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_mount.c_kernfs_get_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32, %struct.kernfs_super_info*, %struct.kernfs_fs_context* }
%struct.kernfs_super_info = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.kernfs_fs_context = type { i32, i32, %struct.TYPE_2__* }
%struct.super_block = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kernfs_test_super = common dso_local global i32 0, align 4
@kernfs_set_super = common dso_local global i32 0, align 4
@SB_ACTIVE = common dso_local global i32 0, align 4
@kernfs_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernfs_get_tree(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.kernfs_fs_context*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.kernfs_super_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kernfs_super_info*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %9 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %10 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %9, i32 0, i32 2
  %11 = load %struct.kernfs_fs_context*, %struct.kernfs_fs_context** %10, align 8
  store %struct.kernfs_fs_context* %11, %struct.kernfs_fs_context** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.kernfs_super_info* @kzalloc(i32 16, i32 %12)
  store %struct.kernfs_super_info* %13, %struct.kernfs_super_info** %6, align 8
  %14 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %6, align 8
  %15 = icmp ne %struct.kernfs_super_info* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %87

19:                                               ; preds = %1
  %20 = load %struct.kernfs_fs_context*, %struct.kernfs_fs_context** %4, align 8
  %21 = getelementptr inbounds %struct.kernfs_fs_context, %struct.kernfs_fs_context* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %6, align 8
  %24 = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %23, i32 0, i32 0
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %24, align 8
  %25 = load %struct.kernfs_fs_context*, %struct.kernfs_fs_context** %4, align 8
  %26 = getelementptr inbounds %struct.kernfs_fs_context, %struct.kernfs_fs_context* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %6, align 8
  %29 = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %6, align 8
  %31 = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %30, i32 0, i32 1
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %6, align 8
  %34 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %35 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %34, i32 0, i32 1
  store %struct.kernfs_super_info* %33, %struct.kernfs_super_info** %35, align 8
  %36 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %37 = load i32, i32* @kernfs_test_super, align 4
  %38 = load i32, i32* @kernfs_set_super, align 4
  %39 = call %struct.super_block* @sget_fc(%struct.fs_context* %36, i32 %37, i32 %38)
  store %struct.super_block* %39, %struct.super_block** %5, align 8
  %40 = load %struct.super_block*, %struct.super_block** %5, align 8
  %41 = call i64 @IS_ERR(%struct.super_block* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %19
  %44 = load %struct.super_block*, %struct.super_block** %5, align 8
  %45 = call i32 @PTR_ERR(%struct.super_block* %44)
  store i32 %45, i32* %2, align 4
  br label %87

46:                                               ; preds = %19
  %47 = load %struct.super_block*, %struct.super_block** %5, align 8
  %48 = getelementptr inbounds %struct.super_block, %struct.super_block* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %80, label %51

51:                                               ; preds = %46
  %52 = load %struct.super_block*, %struct.super_block** %5, align 8
  %53 = call %struct.kernfs_super_info* @kernfs_info(%struct.super_block* %52)
  store %struct.kernfs_super_info* %53, %struct.kernfs_super_info** %8, align 8
  %54 = load %struct.kernfs_fs_context*, %struct.kernfs_fs_context** %4, align 8
  %55 = getelementptr inbounds %struct.kernfs_fs_context, %struct.kernfs_fs_context* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.super_block*, %struct.super_block** %5, align 8
  %57 = load %struct.kernfs_fs_context*, %struct.kernfs_fs_context** %4, align 8
  %58 = call i32 @kernfs_fill_super(%struct.super_block* %56, %struct.kernfs_fs_context* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load %struct.super_block*, %struct.super_block** %5, align 8
  %63 = call i32 @deactivate_locked_super(%struct.super_block* %62)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %87

65:                                               ; preds = %51
  %66 = load i32, i32* @SB_ACTIVE, align 4
  %67 = load %struct.super_block*, %struct.super_block** %5, align 8
  %68 = getelementptr inbounds %struct.super_block, %struct.super_block* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = call i32 @mutex_lock(i32* @kernfs_mutex)
  %72 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %8, align 8
  %73 = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %72, i32 0, i32 1
  %74 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %8, align 8
  %75 = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 @list_add(i32* %73, i32* %77)
  %79 = call i32 @mutex_unlock(i32* @kernfs_mutex)
  br label %80

80:                                               ; preds = %65, %46
  %81 = load %struct.super_block*, %struct.super_block** %5, align 8
  %82 = getelementptr inbounds %struct.super_block, %struct.super_block* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dget(i32 %83)
  %85 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %86 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %80, %61, %43, %16
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.kernfs_super_info* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.super_block* @sget_fc(%struct.fs_context*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.super_block*) #1

declare dso_local i32 @PTR_ERR(%struct.super_block*) #1

declare dso_local %struct.kernfs_super_info* @kernfs_info(%struct.super_block*) #1

declare dso_local i32 @kernfs_fill_super(%struct.super_block*, %struct.kernfs_fs_context*) #1

declare dso_local i32 @deactivate_locked_super(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dget(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
