; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_request_dequeue_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_request_dequeue_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.rpc_rqst* }
%struct.rpc_rqst = type { %struct.rpc_xprt* }
%struct.rpc_xprt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*)* @xprt_request_dequeue_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_request_dequeue_transmit(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_rqst*, align 8
  %4 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %5 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %5, i32 0, i32 0
  %7 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  store %struct.rpc_rqst* %7, %struct.rpc_rqst** %3, align 8
  %8 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %8, i32 0, i32 0
  %10 = load %struct.rpc_xprt*, %struct.rpc_xprt** %9, align 8
  store %struct.rpc_xprt* %10, %struct.rpc_xprt** %4, align 8
  %11 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %15 = call i32 @xprt_request_dequeue_transmit_locked(%struct.rpc_task* %14)
  %16 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %17 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock(i32* %17)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @xprt_request_dequeue_transmit_locked(%struct.rpc_task*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
