; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_test_and_clear_congestion_window_wait.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_test_and_clear_congestion_window_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32 }

@XPRT_CWND_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*)* @xprt_test_and_clear_congestion_window_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_test_and_clear_congestion_window_wait(%struct.rpc_xprt* %0) #0 {
  %2 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %2, align 8
  %3 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %4 = call i32 @RPCXPRT_CONGESTED(%struct.rpc_xprt* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @XPRT_CWND_WAIT, align 4
  %8 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %9 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %8, i32 0, i32 0
  %10 = call i32 @clear_bit(i32 %7, i32* %9)
  br label %11

11:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @RPCXPRT_CONGESTED(%struct.rpc_xprt*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
