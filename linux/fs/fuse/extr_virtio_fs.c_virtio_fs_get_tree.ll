; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_virtio_fs.c_virtio_fs_get_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_virtio_fs.c_virtio_fs_get_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32, %struct.fuse_conn*, i32 }
%struct.fuse_conn = type { i32, i32 }
%struct.virtio_fs = type { i32 }
%struct.super_block = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"virtio-fs: tag <%s> not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@virtio_fs_mutex = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@virtio_fs_fiq_ops = common dso_local global i32 0, align 4
@fuse_free_conn = common dso_local global i32 0, align 4
@virtio_fs_test_super = common dso_local global i32 0, align 4
@virtio_fs_set_super = common dso_local global i32 0, align 4
@SB_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @virtio_fs_get_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_fs_get_tree(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.virtio_fs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %8 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %9 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.virtio_fs* @virtio_fs_find_instance(i32 %10)
  store %struct.virtio_fs* %11, %struct.virtio_fs** %4, align 8
  %12 = load %struct.virtio_fs*, %struct.virtio_fs** %4, align 8
  %13 = icmp ne %struct.virtio_fs* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %16 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %90

21:                                               ; preds = %1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.fuse_conn* @kzalloc(i32 8, i32 %22)
  store %struct.fuse_conn* %23, %struct.fuse_conn** %6, align 8
  %24 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %25 = icmp ne %struct.fuse_conn* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = call i32 @mutex_lock(i32* @virtio_fs_mutex)
  %28 = load %struct.virtio_fs*, %struct.virtio_fs** %4, align 8
  %29 = call i32 @virtio_fs_put(%struct.virtio_fs* %28)
  %30 = call i32 @mutex_unlock(i32* @virtio_fs_mutex)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %90

33:                                               ; preds = %21
  %34 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %35 = call i32 (...) @current_user_ns()
  %36 = call i32 @get_user_ns(i32 %35)
  %37 = load %struct.virtio_fs*, %struct.virtio_fs** %4, align 8
  %38 = call i32 @fuse_conn_init(%struct.fuse_conn* %34, i32 %36, i32* @virtio_fs_fiq_ops, %struct.virtio_fs* %37)
  %39 = load i32, i32* @fuse_free_conn, align 4
  %40 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %41 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %43 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %45 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %46 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %45, i32 0, i32 1
  store %struct.fuse_conn* %44, %struct.fuse_conn** %46, align 8
  %47 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %48 = load i32, i32* @virtio_fs_test_super, align 4
  %49 = load i32, i32* @virtio_fs_set_super, align 4
  %50 = call %struct.super_block* @sget_fc(%struct.fs_context* %47, i32 %48, i32 %49)
  store %struct.super_block* %50, %struct.super_block** %5, align 8
  %51 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %52 = call i32 @fuse_conn_put(%struct.fuse_conn* %51)
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = call i64 @IS_ERR(%struct.super_block* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %33
  %57 = load %struct.super_block*, %struct.super_block** %5, align 8
  %58 = call i32 @PTR_ERR(%struct.super_block* %57)
  store i32 %58, i32* %2, align 4
  br label %90

59:                                               ; preds = %33
  %60 = load %struct.super_block*, %struct.super_block** %5, align 8
  %61 = getelementptr inbounds %struct.super_block, %struct.super_block* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %59
  %65 = load %struct.super_block*, %struct.super_block** %5, align 8
  %66 = call i32 @virtio_fs_fill_super(%struct.super_block* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.super_block*, %struct.super_block** %5, align 8
  %71 = call i32 @deactivate_locked_super(%struct.super_block* %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %90

73:                                               ; preds = %64
  %74 = load i32, i32* @SB_ACTIVE, align 4
  %75 = load %struct.super_block*, %struct.super_block** %5, align 8
  %76 = getelementptr inbounds %struct.super_block, %struct.super_block* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %59
  %80 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %81 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @WARN_ON(i32 %82)
  %84 = load %struct.super_block*, %struct.super_block** %5, align 8
  %85 = getelementptr inbounds %struct.super_block, %struct.super_block* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dget(i32 %86)
  %88 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %89 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %79, %69, %56, %26, %14
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.virtio_fs* @virtio_fs_find_instance(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.fuse_conn* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @virtio_fs_put(%struct.virtio_fs*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fuse_conn_init(%struct.fuse_conn*, i32, i32*, %struct.virtio_fs*) #1

declare dso_local i32 @get_user_ns(i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local %struct.super_block* @sget_fc(%struct.fs_context*, i32, i32) #1

declare dso_local i32 @fuse_conn_put(%struct.fuse_conn*) #1

declare dso_local i64 @IS_ERR(%struct.super_block*) #1

declare dso_local i32 @PTR_ERR(%struct.super_block*) #1

declare dso_local i32 @virtio_fs_fill_super(%struct.super_block*) #1

declare dso_local i32 @deactivate_locked_super(%struct.super_block*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dget(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
