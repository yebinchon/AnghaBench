; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_init_task.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_init_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.rpc_task = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.rpc_task_setup = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_4__*, i32 }

@RPC_PRIORITY_LOW = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_5__* null, align 8
@rpc_prepare_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"RPC:       new task initialized, procpid %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, %struct.rpc_task_setup*)* @rpc_init_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_init_task(%struct.rpc_task* %0, %struct.rpc_task_setup* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.rpc_task_setup*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store %struct.rpc_task_setup* %1, %struct.rpc_task_setup** %4, align 8
  %5 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %6 = call i32 @memset(%struct.rpc_task* %5, i32 0, i32 56)
  %7 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %8 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %7, i32 0, i32 10
  %9 = call i32 @atomic_set(i32* %8, i32 1)
  %10 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %4, align 8
  %11 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %14 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 8
  %15 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %4, align 8
  %16 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %15, i32 0, i32 6
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %19 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %18, i32 0, i32 1
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %19, align 8
  %20 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %4, align 8
  %21 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %24 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 4
  %25 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %26 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %25, i32 0, i32 7
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %4, align 8
  %29 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RPC_PRIORITY_LOW, align 8
  %32 = sub nsw i64 %30, %31
  %33 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %34 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %33, i32 0, i32 6
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %39 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %4, align 8
  %41 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %44 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %4, align 8
  %46 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %4, align 8
  %49 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @xprt_get(i32 %50)
  %52 = call i32 @rpc_task_get_xprt(i32 %47, i32 %51)
  %53 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %54 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %4, align 8
  %56 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @get_rpccred(i32 %57)
  %59 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %60 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %62 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %2
  %68 = load i32, i32* @rpc_prepare_task, align 4
  %69 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %70 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %2
  %72 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %73 = call i32 @rpc_init_task_statistics(%struct.rpc_task* %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %75 = call i32 @task_pid_nr(%struct.TYPE_5__* %74)
  %76 = call i32 @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %75)
  ret void
}

declare dso_local i32 @memset(%struct.rpc_task*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rpc_task_get_xprt(i32, i32) #1

declare dso_local i32 @xprt_get(i32) #1

declare dso_local i32 @get_rpccred(i32) #1

declare dso_local i32 @rpc_init_task_statistics(%struct.rpc_task*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
