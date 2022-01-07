; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c_xprt_iter_current_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c_xprt_iter_current_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32 }
%struct.rpc_xprt_iter = type { i32*, i32 }
%struct.rpc_xprt_switch = type { i32, %struct.list_head }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_xprt* (%struct.rpc_xprt_iter*)* @xprt_iter_current_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_xprt* @xprt_iter_current_entry(%struct.rpc_xprt_iter* %0) #0 {
  %2 = alloca %struct.rpc_xprt*, align 8
  %3 = alloca %struct.rpc_xprt_iter*, align 8
  %4 = alloca %struct.rpc_xprt_switch*, align 8
  %5 = alloca %struct.list_head*, align 8
  store %struct.rpc_xprt_iter* %0, %struct.rpc_xprt_iter** %3, align 8
  %6 = load %struct.rpc_xprt_iter*, %struct.rpc_xprt_iter** %3, align 8
  %7 = getelementptr inbounds %struct.rpc_xprt_iter, %struct.rpc_xprt_iter* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.rpc_xprt_switch* @rcu_dereference(i32 %8)
  store %struct.rpc_xprt_switch* %9, %struct.rpc_xprt_switch** %4, align 8
  %10 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %4, align 8
  %11 = icmp eq %struct.rpc_xprt_switch* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.rpc_xprt* null, %struct.rpc_xprt** %2, align 8
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %4, align 8
  %15 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %14, i32 0, i32 1
  store %struct.list_head* %15, %struct.list_head** %5, align 8
  %16 = load %struct.rpc_xprt_iter*, %struct.rpc_xprt_iter** %3, align 8
  %17 = getelementptr inbounds %struct.rpc_xprt_iter, %struct.rpc_xprt_iter* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %4, align 8
  %22 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %13
  %26 = load %struct.list_head*, %struct.list_head** %5, align 8
  %27 = call %struct.rpc_xprt* @xprt_switch_find_first_entry(%struct.list_head* %26)
  store %struct.rpc_xprt* %27, %struct.rpc_xprt** %2, align 8
  br label %34

28:                                               ; preds = %20
  %29 = load %struct.list_head*, %struct.list_head** %5, align 8
  %30 = load %struct.rpc_xprt_iter*, %struct.rpc_xprt_iter** %3, align 8
  %31 = getelementptr inbounds %struct.rpc_xprt_iter, %struct.rpc_xprt_iter* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call %struct.rpc_xprt* @xprt_switch_find_current_entry(%struct.list_head* %29, i32* %32)
  store %struct.rpc_xprt* %33, %struct.rpc_xprt** %2, align 8
  br label %34

34:                                               ; preds = %28, %25, %12
  %35 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  ret %struct.rpc_xprt* %35
}

declare dso_local %struct.rpc_xprt_switch* @rcu_dereference(i32) #1

declare dso_local %struct.rpc_xprt* @xprt_switch_find_first_entry(%struct.list_head*) #1

declare dso_local %struct.rpc_xprt* @xprt_switch_find_current_entry(%struct.list_head*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
