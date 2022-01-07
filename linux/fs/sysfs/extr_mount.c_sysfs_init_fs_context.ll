; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_mount.c_sysfs_init_fs_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_mount.c_sysfs_init_fs_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32, i32, i32, i32*, %struct.kernfs_fs_context* }
%struct.kernfs_fs_context = type { i32, i32, %struct.net* }
%struct.net = type { i32 }

@SB_KERNMOUNT = common dso_local global i32 0, align 4
@KOBJ_NS_TYPE_NET = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sysfs_root = common dso_local global i32 0, align 4
@SYSFS_MAGIC = common dso_local global i32 0, align 4
@sysfs_fs_context_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @sysfs_init_fs_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysfs_init_fs_context(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.kernfs_fs_context*, align 8
  %5 = alloca %struct.net*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %6 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %7 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SB_KERNMOUNT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @KOBJ_NS_TYPE_NET, align 4
  %14 = call i32 @kobj_ns_current_may_mount(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %60

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.kernfs_fs_context* @kzalloc(i32 16, i32 %21)
  store %struct.kernfs_fs_context* %22, %struct.kernfs_fs_context** %4, align 8
  %23 = load %struct.kernfs_fs_context*, %struct.kernfs_fs_context** %4, align 8
  %24 = icmp ne %struct.kernfs_fs_context* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %60

28:                                               ; preds = %20
  %29 = load i32, i32* @KOBJ_NS_TYPE_NET, align 4
  %30 = call %struct.net* @kobj_ns_grab_current(i32 %29)
  store %struct.net* %30, %struct.net** %5, align 8
  %31 = load %struct.kernfs_fs_context*, %struct.kernfs_fs_context** %4, align 8
  %32 = getelementptr inbounds %struct.kernfs_fs_context, %struct.kernfs_fs_context* %31, i32 0, i32 2
  store %struct.net* %30, %struct.net** %32, align 8
  %33 = load i32, i32* @sysfs_root, align 4
  %34 = load %struct.kernfs_fs_context*, %struct.kernfs_fs_context** %4, align 8
  %35 = getelementptr inbounds %struct.kernfs_fs_context, %struct.kernfs_fs_context* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @SYSFS_MAGIC, align 4
  %37 = load %struct.kernfs_fs_context*, %struct.kernfs_fs_context** %4, align 8
  %38 = getelementptr inbounds %struct.kernfs_fs_context, %struct.kernfs_fs_context* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.kernfs_fs_context*, %struct.kernfs_fs_context** %4, align 8
  %40 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %41 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %40, i32 0, i32 4
  store %struct.kernfs_fs_context* %39, %struct.kernfs_fs_context** %41, align 8
  %42 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %43 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %42, i32 0, i32 3
  store i32* @sysfs_fs_context_ops, i32** %43, align 8
  %44 = load %struct.net*, %struct.net** %5, align 8
  %45 = icmp ne %struct.net* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %28
  %47 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %48 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @put_user_ns(i32 %49)
  %51 = load %struct.net*, %struct.net** %5, align 8
  %52 = getelementptr inbounds %struct.net, %struct.net* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @get_user_ns(i32 %53)
  %55 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %56 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %46, %28
  %58 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %59 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %25, %16
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @kobj_ns_current_may_mount(i32) #1

declare dso_local %struct.kernfs_fs_context* @kzalloc(i32, i32) #1

declare dso_local %struct.net* @kobj_ns_grab_current(i32) #1

declare dso_local i32 @put_user_ns(i32) #1

declare dso_local i32 @get_user_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
