; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_mr_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_mr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_mr = type { i32 }
%struct.rpcrdma_xprt = type { %struct.rpcrdma_buffer }
%struct.rpcrdma_buffer = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpcrdma_mr* @rpcrdma_mr_get(%struct.rpcrdma_xprt* %0) #0 {
  %2 = alloca %struct.rpcrdma_xprt*, align 8
  %3 = alloca %struct.rpcrdma_buffer*, align 8
  %4 = alloca %struct.rpcrdma_mr*, align 8
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %2, align 8
  %5 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %2, align 8
  %6 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %5, i32 0, i32 0
  store %struct.rpcrdma_buffer* %6, %struct.rpcrdma_buffer** %3, align 8
  %7 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %10, i32 0, i32 1
  %12 = call %struct.rpcrdma_mr* @rpcrdma_mr_pop(i32* %11)
  store %struct.rpcrdma_mr* %12, %struct.rpcrdma_mr** %4, align 8
  %13 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %13, i32 0, i32 0
  %15 = call i32 @spin_unlock(i32* %14)
  %16 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %4, align 8
  ret %struct.rpcrdma_mr* %16
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.rpcrdma_mr* @rpcrdma_mr_pop(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
