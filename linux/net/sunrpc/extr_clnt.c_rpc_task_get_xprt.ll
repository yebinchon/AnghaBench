; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_task_get_xprt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_task_get_xprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rpc_xprt = type { i32 }
%struct.rpc_xprt_switch = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_xprt* @rpc_task_get_xprt(%struct.rpc_clnt* %0, %struct.rpc_xprt* %1) #0 {
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca %struct.rpc_clnt*, align 8
  %5 = alloca %struct.rpc_xprt*, align 8
  %6 = alloca %struct.rpc_xprt_switch*, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %4, align 8
  store %struct.rpc_xprt* %1, %struct.rpc_xprt** %5, align 8
  %7 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %8 = icmp ne %struct.rpc_xprt* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.rpc_xprt* null, %struct.rpc_xprt** %3, align 8
  br label %25

10:                                               ; preds = %2
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %13 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.rpc_xprt_switch* @rcu_dereference(i32 %15)
  store %struct.rpc_xprt_switch* %16, %struct.rpc_xprt_switch** %6, align 8
  %17 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %6, align 8
  %18 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %17, i32 0, i32 0
  %19 = call i32 @atomic_long_inc(i32* %18)
  %20 = call i32 (...) @rcu_read_unlock()
  %21 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %22 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %21, i32 0, i32 0
  %23 = call i32 @atomic_long_inc(i32* %22)
  %24 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  store %struct.rpc_xprt* %24, %struct.rpc_xprt** %3, align 8
  br label %25

25:                                               ; preds = %10, %9
  %26 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  ret %struct.rpc_xprt* %26
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rpc_xprt_switch* @rcu_dereference(i32) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
