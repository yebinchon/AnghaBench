; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_namespace.c_create_ipc_ns.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_namespace.c_create_ipc_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { i32 }
%struct.ipc_namespace = type { %struct.TYPE_3__, i32, %struct.ucounts*, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.ucounts = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ipcns_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipc_namespace* (%struct.user_namespace*, %struct.ipc_namespace*)* @create_ipc_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipc_namespace* @create_ipc_ns(%struct.user_namespace* %0, %struct.ipc_namespace* %1) #0 {
  %3 = alloca %struct.ipc_namespace*, align 8
  %4 = alloca %struct.user_namespace*, align 8
  %5 = alloca %struct.ipc_namespace*, align 8
  %6 = alloca %struct.ipc_namespace*, align 8
  %7 = alloca %struct.ucounts*, align 8
  %8 = alloca i32, align 4
  store %struct.user_namespace* %0, %struct.user_namespace** %4, align 8
  store %struct.ipc_namespace* %1, %struct.ipc_namespace** %5, align 8
  %9 = load i32, i32* @ENOSPC, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %12 = call %struct.ucounts* @inc_ipc_namespaces(%struct.user_namespace* %11)
  store %struct.ucounts* %12, %struct.ucounts** %7, align 8
  %13 = load %struct.ucounts*, %struct.ucounts** %7, align 8
  %14 = icmp ne %struct.ucounts* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %72

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ipc_namespace* @kzalloc(i32 32, i32 %19)
  store %struct.ipc_namespace* %20, %struct.ipc_namespace** %6, align 8
  %21 = load %struct.ipc_namespace*, %struct.ipc_namespace** %6, align 8
  %22 = icmp eq %struct.ipc_namespace* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %69

24:                                               ; preds = %16
  %25 = load %struct.ipc_namespace*, %struct.ipc_namespace** %6, align 8
  %26 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %25, i32 0, i32 0
  %27 = call i32 @ns_alloc_inum(%struct.TYPE_3__* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %66

31:                                               ; preds = %24
  %32 = load %struct.ipc_namespace*, %struct.ipc_namespace** %6, align 8
  %33 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32* @ipcns_operations, i32** %34, align 8
  %35 = load %struct.ipc_namespace*, %struct.ipc_namespace** %6, align 8
  %36 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %35, i32 0, i32 3
  %37 = call i32 @refcount_set(i32* %36, i32 1)
  %38 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %39 = call i32 @get_user_ns(%struct.user_namespace* %38)
  %40 = load %struct.ipc_namespace*, %struct.ipc_namespace** %6, align 8
  %41 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ucounts*, %struct.ucounts** %7, align 8
  %43 = load %struct.ipc_namespace*, %struct.ipc_namespace** %6, align 8
  %44 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %43, i32 0, i32 2
  store %struct.ucounts* %42, %struct.ucounts** %44, align 8
  %45 = load %struct.ipc_namespace*, %struct.ipc_namespace** %6, align 8
  %46 = call i32 @mq_init_ns(%struct.ipc_namespace* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %31
  br label %58

50:                                               ; preds = %31
  %51 = load %struct.ipc_namespace*, %struct.ipc_namespace** %6, align 8
  %52 = call i32 @sem_init_ns(%struct.ipc_namespace* %51)
  %53 = load %struct.ipc_namespace*, %struct.ipc_namespace** %6, align 8
  %54 = call i32 @msg_init_ns(%struct.ipc_namespace* %53)
  %55 = load %struct.ipc_namespace*, %struct.ipc_namespace** %6, align 8
  %56 = call i32 @shm_init_ns(%struct.ipc_namespace* %55)
  %57 = load %struct.ipc_namespace*, %struct.ipc_namespace** %6, align 8
  store %struct.ipc_namespace* %57, %struct.ipc_namespace** %3, align 8
  br label %75

58:                                               ; preds = %49
  %59 = load %struct.ipc_namespace*, %struct.ipc_namespace** %6, align 8
  %60 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @put_user_ns(i32 %61)
  %63 = load %struct.ipc_namespace*, %struct.ipc_namespace** %6, align 8
  %64 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %63, i32 0, i32 0
  %65 = call i32 @ns_free_inum(%struct.TYPE_3__* %64)
  br label %66

66:                                               ; preds = %58, %30
  %67 = load %struct.ipc_namespace*, %struct.ipc_namespace** %6, align 8
  %68 = call i32 @kfree(%struct.ipc_namespace* %67)
  br label %69

69:                                               ; preds = %66, %23
  %70 = load %struct.ucounts*, %struct.ucounts** %7, align 8
  %71 = call i32 @dec_ipc_namespaces(%struct.ucounts* %70)
  br label %72

72:                                               ; preds = %69, %15
  %73 = load i32, i32* %8, align 4
  %74 = call %struct.ipc_namespace* @ERR_PTR(i32 %73)
  store %struct.ipc_namespace* %74, %struct.ipc_namespace** %3, align 8
  br label %75

75:                                               ; preds = %72, %50
  %76 = load %struct.ipc_namespace*, %struct.ipc_namespace** %3, align 8
  ret %struct.ipc_namespace* %76
}

declare dso_local %struct.ucounts* @inc_ipc_namespaces(%struct.user_namespace*) #1

declare dso_local %struct.ipc_namespace* @kzalloc(i32, i32) #1

declare dso_local i32 @ns_alloc_inum(%struct.TYPE_3__*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @get_user_ns(%struct.user_namespace*) #1

declare dso_local i32 @mq_init_ns(%struct.ipc_namespace*) #1

declare dso_local i32 @sem_init_ns(%struct.ipc_namespace*) #1

declare dso_local i32 @msg_init_ns(%struct.ipc_namespace*) #1

declare dso_local i32 @shm_init_ns(%struct.ipc_namespace*) #1

declare dso_local i32 @put_user_ns(i32) #1

declare dso_local i32 @ns_free_inum(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.ipc_namespace*) #1

declare dso_local i32 @dec_ipc_namespaces(%struct.ucounts*) #1

declare dso_local %struct.ipc_namespace* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
