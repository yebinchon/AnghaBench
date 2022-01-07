; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c_xprt_switch_remove_xprt_locked.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c_xprt_switch_remove_xprt_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt_switch = type { i64, i32*, i32 }
%struct.rpc_xprt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt_switch*, %struct.rpc_xprt*)* @xprt_switch_remove_xprt_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_switch_remove_xprt_locked(%struct.rpc_xprt_switch* %0, %struct.rpc_xprt* %1) #0 {
  %3 = alloca %struct.rpc_xprt_switch*, align 8
  %4 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_xprt_switch* %0, %struct.rpc_xprt_switch** %3, align 8
  store %struct.rpc_xprt* %1, %struct.rpc_xprt** %4, align 8
  %5 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %6 = icmp eq %struct.rpc_xprt* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %32

11:                                               ; preds = %2
  %12 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %3, align 8
  %13 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %3, align 8
  %17 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %3, align 8
  %21 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  %25 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %3, align 8
  %26 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %24, %11
  %28 = call i32 (...) @smp_wmb()
  %29 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %30 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %29, i32 0, i32 0
  %31 = call i32 @list_del_rcu(i32* %30)
  br label %32

32:                                               ; preds = %27, %10
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @list_del_rcu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
