; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"RPC:       destroying transport %p\0A\00", align 1
@XPRT_LOCKED = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@xprt_destroy_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*)* @xprt_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_destroy(%struct.rpc_xprt* %0) #0 {
  %2 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %2, align 8
  %3 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %4 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.rpc_xprt* %3)
  %5 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %5, i32 0, i32 2
  %7 = load i32, i32* @XPRT_LOCKED, align 4
  %8 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %9 = call i32 @wait_on_bit_lock(i32* %6, i32 %7, i32 %8)
  %10 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %11 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %10, i32 0, i32 1
  %12 = call i32 @del_timer_sync(i32* %11)
  %13 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %14 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %13, i32 0, i32 0
  %15 = load i32, i32* @xprt_destroy_cb, align 4
  %16 = call i32 @INIT_WORK(i32* %14, i32 %15)
  %17 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %18 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %17, i32 0, i32 0
  %19 = call i32 @schedule_work(i32* %18)
  ret void
}

declare dso_local i32 @dprintk(i8*, %struct.rpc_xprt*) #1

declare dso_local i32 @wait_on_bit_lock(i32*, i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
