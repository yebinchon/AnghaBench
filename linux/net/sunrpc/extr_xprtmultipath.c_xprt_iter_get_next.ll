; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c_xprt_iter_get_next.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c_xprt_iter_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32 }
%struct.rpc_xprt_iter = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_xprt* @xprt_iter_get_next(%struct.rpc_xprt_iter* %0) #0 {
  %2 = alloca %struct.rpc_xprt_iter*, align 8
  %3 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_xprt_iter* %0, %struct.rpc_xprt_iter** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load %struct.rpc_xprt_iter*, %struct.rpc_xprt_iter** %2, align 8
  %6 = load %struct.rpc_xprt_iter*, %struct.rpc_xprt_iter** %2, align 8
  %7 = call %struct.TYPE_2__* @xprt_iter_ops(%struct.rpc_xprt_iter* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.rpc_xprt* @xprt_iter_get_helper(%struct.rpc_xprt_iter* %5, i32 %9)
  store %struct.rpc_xprt* %10, %struct.rpc_xprt** %3, align 8
  %11 = call i32 (...) @rcu_read_unlock()
  %12 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  ret %struct.rpc_xprt* %12
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rpc_xprt* @xprt_iter_get_helper(%struct.rpc_xprt_iter*, i32) #1

declare dso_local %struct.TYPE_2__* @xprt_iter_ops(%struct.rpc_xprt_iter*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
