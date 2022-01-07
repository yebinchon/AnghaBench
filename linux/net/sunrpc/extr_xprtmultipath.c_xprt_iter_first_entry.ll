; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c_xprt_iter_first_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c_xprt_iter_first_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32 }
%struct.rpc_xprt_iter = type { i32 }
%struct.rpc_xprt_switch = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_xprt* (%struct.rpc_xprt_iter*)* @xprt_iter_first_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_xprt* @xprt_iter_first_entry(%struct.rpc_xprt_iter* %0) #0 {
  %2 = alloca %struct.rpc_xprt*, align 8
  %3 = alloca %struct.rpc_xprt_iter*, align 8
  %4 = alloca %struct.rpc_xprt_switch*, align 8
  store %struct.rpc_xprt_iter* %0, %struct.rpc_xprt_iter** %3, align 8
  %5 = load %struct.rpc_xprt_iter*, %struct.rpc_xprt_iter** %3, align 8
  %6 = getelementptr inbounds %struct.rpc_xprt_iter, %struct.rpc_xprt_iter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.rpc_xprt_switch* @rcu_dereference(i32 %7)
  store %struct.rpc_xprt_switch* %8, %struct.rpc_xprt_switch** %4, align 8
  %9 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %4, align 8
  %10 = icmp eq %struct.rpc_xprt_switch* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.rpc_xprt* null, %struct.rpc_xprt** %2, align 8
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %4, align 8
  %14 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %13, i32 0, i32 0
  %15 = call %struct.rpc_xprt* @xprt_switch_find_first_entry(i32* %14)
  store %struct.rpc_xprt* %15, %struct.rpc_xprt** %2, align 8
  br label %16

16:                                               ; preds = %12, %11
  %17 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  ret %struct.rpc_xprt* %17
}

declare dso_local %struct.rpc_xprt_switch* @rcu_dereference(i32) #1

declare dso_local %struct.rpc_xprt* @xprt_switch_find_first_entry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
