; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_release_write.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_release_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32, %struct.TYPE_2__*, %struct.rpc_task* }
%struct.TYPE_2__ = type { i32 (%struct.rpc_xprt*, %struct.rpc_task*)* }
%struct.rpc_task = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*, %struct.rpc_task*)* @xprt_release_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_release_write(%struct.rpc_xprt* %0, %struct.rpc_task* %1) #0 {
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca %struct.rpc_task*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %3, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %4, align 8
  %5 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %6 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %5, i32 0, i32 2
  %7 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %8 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %9 = icmp ne %struct.rpc_task* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %26

11:                                               ; preds = %2
  %12 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %13 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %16 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.rpc_xprt*, %struct.rpc_task*)*, i32 (%struct.rpc_xprt*, %struct.rpc_task*)** %18, align 8
  %20 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %21 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %22 = call i32 %19(%struct.rpc_xprt* %20, %struct.rpc_task* %21)
  %23 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %24 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  br label %26

26:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
