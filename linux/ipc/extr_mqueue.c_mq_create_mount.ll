; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_mqueue.c_mq_create_mount.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_mqueue.c_mq_create_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.ipc_namespace = type { i32 }
%struct.mqueue_fs_context = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fs_context = type { i32, %struct.mqueue_fs_context* }

@mqueue_fs_type = common dso_local global i32 0, align 4
@SB_KERNMOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vfsmount* (%struct.ipc_namespace*)* @mq_create_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vfsmount* @mq_create_mount(%struct.ipc_namespace* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca %struct.ipc_namespace*, align 8
  %4 = alloca %struct.mqueue_fs_context*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.vfsmount*, align 8
  store %struct.ipc_namespace* %0, %struct.ipc_namespace** %3, align 8
  %7 = load i32, i32* @SB_KERNMOUNT, align 4
  %8 = call %struct.fs_context* @fs_context_for_mount(i32* @mqueue_fs_type, i32 %7)
  store %struct.fs_context* %8, %struct.fs_context** %5, align 8
  %9 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %10 = call i64 @IS_ERR(%struct.fs_context* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %14 = call %struct.vfsmount* @ERR_CAST(%struct.fs_context* %13)
  store %struct.vfsmount* %14, %struct.vfsmount** %2, align 8
  br label %44

15:                                               ; preds = %1
  %16 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %17 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %16, i32 0, i32 1
  %18 = load %struct.mqueue_fs_context*, %struct.mqueue_fs_context** %17, align 8
  store %struct.mqueue_fs_context* %18, %struct.mqueue_fs_context** %4, align 8
  %19 = load %struct.mqueue_fs_context*, %struct.mqueue_fs_context** %4, align 8
  %20 = getelementptr inbounds %struct.mqueue_fs_context, %struct.mqueue_fs_context* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = call i32 @put_ipc_ns(%struct.TYPE_3__* %21)
  %23 = load %struct.ipc_namespace*, %struct.ipc_namespace** %3, align 8
  %24 = call %struct.TYPE_3__* @get_ipc_ns(%struct.ipc_namespace* %23)
  %25 = load %struct.mqueue_fs_context*, %struct.mqueue_fs_context** %4, align 8
  %26 = getelementptr inbounds %struct.mqueue_fs_context, %struct.mqueue_fs_context* %25, i32 0, i32 0
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %26, align 8
  %27 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %28 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @put_user_ns(i32 %29)
  %31 = load %struct.mqueue_fs_context*, %struct.mqueue_fs_context** %4, align 8
  %32 = getelementptr inbounds %struct.mqueue_fs_context, %struct.mqueue_fs_context* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @get_user_ns(i32 %35)
  %37 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %38 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %40 = call %struct.vfsmount* @fc_mount(%struct.fs_context* %39)
  store %struct.vfsmount* %40, %struct.vfsmount** %6, align 8
  %41 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %42 = call i32 @put_fs_context(%struct.fs_context* %41)
  %43 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  store %struct.vfsmount* %43, %struct.vfsmount** %2, align 8
  br label %44

44:                                               ; preds = %15, %12
  %45 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  ret %struct.vfsmount* %45
}

declare dso_local %struct.fs_context* @fs_context_for_mount(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.fs_context*) #1

declare dso_local %struct.vfsmount* @ERR_CAST(%struct.fs_context*) #1

declare dso_local i32 @put_ipc_ns(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @get_ipc_ns(%struct.ipc_namespace*) #1

declare dso_local i32 @put_user_ns(i32) #1

declare dso_local i32 @get_user_ns(i32) #1

declare dso_local %struct.vfsmount* @fc_mount(%struct.fs_context*) #1

declare dso_local i32 @put_fs_context(%struct.fs_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
