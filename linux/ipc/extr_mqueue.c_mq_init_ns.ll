; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_mqueue.c_mq_init_ns.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_mqueue.c_mq_init_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_namespace = type { %struct.vfsmount*, i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { i32 }

@DFLT_QUEUESMAX = common dso_local global i32 0, align 4
@DFLT_MSGMAX = common dso_local global i32 0, align 4
@DFLT_MSGSIZEMAX = common dso_local global i32 0, align 4
@DFLT_MSG = common dso_local global i32 0, align 4
@DFLT_MSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mq_init_ns(%struct.ipc_namespace* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipc_namespace*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  store %struct.ipc_namespace* %0, %struct.ipc_namespace** %3, align 8
  %5 = load %struct.ipc_namespace*, %struct.ipc_namespace** %3, align 8
  %6 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %5, i32 0, i32 6
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @DFLT_QUEUESMAX, align 4
  %8 = load %struct.ipc_namespace*, %struct.ipc_namespace** %3, align 8
  %9 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @DFLT_MSGMAX, align 4
  %11 = load %struct.ipc_namespace*, %struct.ipc_namespace** %3, align 8
  %12 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @DFLT_MSGSIZEMAX, align 4
  %14 = load %struct.ipc_namespace*, %struct.ipc_namespace** %3, align 8
  %15 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @DFLT_MSG, align 4
  %17 = load %struct.ipc_namespace*, %struct.ipc_namespace** %3, align 8
  %18 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @DFLT_MSGSIZE, align 4
  %20 = load %struct.ipc_namespace*, %struct.ipc_namespace** %3, align 8
  %21 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ipc_namespace*, %struct.ipc_namespace** %3, align 8
  %23 = call %struct.vfsmount* @mq_create_mount(%struct.ipc_namespace* %22)
  store %struct.vfsmount* %23, %struct.vfsmount** %4, align 8
  %24 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %25 = call i64 @IS_ERR(%struct.vfsmount* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %29 = call i32 @PTR_ERR(%struct.vfsmount* %28)
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %1
  %31 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %32 = load %struct.ipc_namespace*, %struct.ipc_namespace** %3, align 8
  %33 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %32, i32 0, i32 0
  store %struct.vfsmount* %31, %struct.vfsmount** %33, align 8
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.vfsmount* @mq_create_mount(%struct.ipc_namespace*) #1

declare dso_local i64 @IS_ERR(%struct.vfsmount*) #1

declare dso_local i32 @PTR_ERR(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
