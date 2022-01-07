; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c___rpc_remove_wait_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c___rpc_remove_wait_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_wait_queue = type { i32 }
%struct.rpc_task = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"RPC: %5u removed from queue %p \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_wait_queue*, %struct.rpc_task*)* @__rpc_remove_wait_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rpc_remove_wait_queue(%struct.rpc_wait_queue* %0, %struct.rpc_task* %1) #0 {
  %3 = alloca %struct.rpc_wait_queue*, align 8
  %4 = alloca %struct.rpc_task*, align 8
  store %struct.rpc_wait_queue* %0, %struct.rpc_wait_queue** %3, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %4, align 8
  %5 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %3, align 8
  %6 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %7 = call i32 @__rpc_disable_timer(%struct.rpc_wait_queue* %5, %struct.rpc_task* %6)
  %8 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %3, align 8
  %9 = call i64 @RPC_IS_PRIORITY(%struct.rpc_wait_queue* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %13 = call i32 @__rpc_remove_wait_queue_priority(%struct.rpc_task* %12)
  br label %20

14:                                               ; preds = %2
  %15 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %16 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @list_del(i32* %18)
  br label %20

20:                                               ; preds = %14, %11
  %21 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %3, align 8
  %22 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %26 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %3, align 8
  %29 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %3, align 8
  %30 = call i32 @rpc_qname(%struct.rpc_wait_queue* %29)
  %31 = call i32 @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %27, %struct.rpc_wait_queue* %28, i32 %30)
  ret void
}

declare dso_local i32 @__rpc_disable_timer(%struct.rpc_wait_queue*, %struct.rpc_task*) #1

declare dso_local i64 @RPC_IS_PRIORITY(%struct.rpc_wait_queue*) #1

declare dso_local i32 @__rpc_remove_wait_queue_priority(%struct.rpc_task*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dprintk(i8*, i32, %struct.rpc_wait_queue*, i32) #1

declare dso_local i32 @rpc_qname(%struct.rpc_wait_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
