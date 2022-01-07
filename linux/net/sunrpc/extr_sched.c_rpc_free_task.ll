; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_free_task.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_free_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i16, i32, i32, i32, i32 }

@RPC_TASK_DYNAMIC = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [23 x i8] c"RPC: %5u freeing task\0A\00", align 1
@rpc_task_mempool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*)* @rpc_free_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_free_task(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca i16, align 2
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %4 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %4, i32 0, i32 0
  %6 = load i16, i16* %5, align 4
  store i16 %6, i16* %3, align 2
  %7 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %8 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @put_rpccred(i32 %9)
  %11 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %12 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %15 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @rpc_release_calldata(i32 %13, i32 %16)
  %18 = load i16, i16* %3, align 2
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* @RPC_TASK_DYNAMIC, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %26 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %30 = load i32, i32* @rpc_task_mempool, align 4
  %31 = call i32 @mempool_free(%struct.rpc_task* %29, i32 %30)
  br label %32

32:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32 @put_rpccred(i32) #1

declare dso_local i32 @rpc_release_calldata(i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @mempool_free(%struct.rpc_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
