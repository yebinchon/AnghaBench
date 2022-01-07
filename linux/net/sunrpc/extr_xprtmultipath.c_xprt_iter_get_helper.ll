; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c_xprt_iter_get_helper.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c_xprt_iter_get_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32 }
%struct.rpc_xprt_iter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_xprt* (%struct.rpc_xprt_iter*, %struct.rpc_xprt* (%struct.rpc_xprt_iter*)*)* @xprt_iter_get_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_xprt* @xprt_iter_get_helper(%struct.rpc_xprt_iter* %0, %struct.rpc_xprt* (%struct.rpc_xprt_iter*)* %1) #0 {
  %3 = alloca %struct.rpc_xprt_iter*, align 8
  %4 = alloca %struct.rpc_xprt* (%struct.rpc_xprt_iter*)*, align 8
  %5 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_xprt_iter* %0, %struct.rpc_xprt_iter** %3, align 8
  store %struct.rpc_xprt* (%struct.rpc_xprt_iter*)* %1, %struct.rpc_xprt* (%struct.rpc_xprt_iter*)** %4, align 8
  br label %6

6:                                                ; preds = %16, %2
  %7 = load %struct.rpc_xprt* (%struct.rpc_xprt_iter*)*, %struct.rpc_xprt* (%struct.rpc_xprt_iter*)** %4, align 8
  %8 = load %struct.rpc_xprt_iter*, %struct.rpc_xprt_iter** %3, align 8
  %9 = call %struct.rpc_xprt* %7(%struct.rpc_xprt_iter* %8)
  store %struct.rpc_xprt* %9, %struct.rpc_xprt** %5, align 8
  %10 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %11 = icmp eq %struct.rpc_xprt* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %19

13:                                               ; preds = %6
  %14 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %15 = call %struct.rpc_xprt* @xprt_get(%struct.rpc_xprt* %14)
  store %struct.rpc_xprt* %15, %struct.rpc_xprt** %5, align 8
  br label %16

16:                                               ; preds = %13
  %17 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %18 = icmp eq %struct.rpc_xprt* %17, null
  br i1 %18, label %6, label %19

19:                                               ; preds = %16, %12
  %20 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  ret %struct.rpc_xprt* %20
}

declare dso_local %struct.rpc_xprt* @xprt_get(%struct.rpc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
