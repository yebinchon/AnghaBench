; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c_xprt_iter_ops.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c_xprt_iter_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt_iter_ops = type { i32 }
%struct.rpc_xprt_iter = type { i32, %struct.rpc_xprt_iter_ops* }
%struct.TYPE_2__ = type { %struct.rpc_xprt_iter_ops* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_xprt_iter_ops* (%struct.rpc_xprt_iter*)* @xprt_iter_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_xprt_iter_ops* @xprt_iter_ops(%struct.rpc_xprt_iter* %0) #0 {
  %2 = alloca %struct.rpc_xprt_iter_ops*, align 8
  %3 = alloca %struct.rpc_xprt_iter*, align 8
  store %struct.rpc_xprt_iter* %0, %struct.rpc_xprt_iter** %3, align 8
  %4 = load %struct.rpc_xprt_iter*, %struct.rpc_xprt_iter** %3, align 8
  %5 = getelementptr inbounds %struct.rpc_xprt_iter, %struct.rpc_xprt_iter* %4, i32 0, i32 1
  %6 = load %struct.rpc_xprt_iter_ops*, %struct.rpc_xprt_iter_ops** %5, align 8
  %7 = icmp ne %struct.rpc_xprt_iter_ops* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.rpc_xprt_iter*, %struct.rpc_xprt_iter** %3, align 8
  %10 = getelementptr inbounds %struct.rpc_xprt_iter, %struct.rpc_xprt_iter* %9, i32 0, i32 1
  %11 = load %struct.rpc_xprt_iter_ops*, %struct.rpc_xprt_iter_ops** %10, align 8
  store %struct.rpc_xprt_iter_ops* %11, %struct.rpc_xprt_iter_ops** %2, align 8
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.rpc_xprt_iter*, %struct.rpc_xprt_iter** %3, align 8
  %14 = getelementptr inbounds %struct.rpc_xprt_iter, %struct.rpc_xprt_iter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.TYPE_2__* @rcu_dereference(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.rpc_xprt_iter_ops*, %struct.rpc_xprt_iter_ops** %17, align 8
  store %struct.rpc_xprt_iter_ops* %18, %struct.rpc_xprt_iter_ops** %2, align 8
  br label %19

19:                                               ; preds = %12, %8
  %20 = load %struct.rpc_xprt_iter_ops*, %struct.rpc_xprt_iter_ops** %2, align 8
  ret %struct.rpc_xprt_iter_ops* %20
}

declare dso_local %struct.TYPE_2__* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
