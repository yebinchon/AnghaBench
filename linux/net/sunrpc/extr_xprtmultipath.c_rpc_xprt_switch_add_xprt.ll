; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c_rpc_xprt_switch_add_xprt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c_rpc_xprt_switch_add_xprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt_switch = type { i32, i32* }
%struct.rpc_xprt = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_xprt_switch_add_xprt(%struct.rpc_xprt_switch* %0, %struct.rpc_xprt* %1) #0 {
  %3 = alloca %struct.rpc_xprt_switch*, align 8
  %4 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_xprt_switch* %0, %struct.rpc_xprt_switch** %3, align 8
  store %struct.rpc_xprt* %1, %struct.rpc_xprt** %4, align 8
  %5 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %6 = icmp eq %struct.rpc_xprt* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %32

8:                                                ; preds = %2
  %9 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %3, align 8
  %10 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %3, align 8
  %13 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %16 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %14, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %8
  %20 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %3, align 8
  %21 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19, %8
  %25 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %3, align 8
  %26 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %27 = call i32 @xprt_switch_add_xprt_locked(%struct.rpc_xprt_switch* %25, %struct.rpc_xprt* %26)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %3, align 8
  %30 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  br label %32

32:                                               ; preds = %28, %7
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @xprt_switch_add_xprt_locked(%struct.rpc_xprt_switch*, %struct.rpc_xprt*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
