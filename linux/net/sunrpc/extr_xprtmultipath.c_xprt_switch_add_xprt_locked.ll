; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c_xprt_switch_add_xprt_locked.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c_xprt_switch_add_xprt_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt_switch = type { i64, i32, i32, i32 }
%struct.rpc_xprt = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt_switch*, %struct.rpc_xprt*)* @xprt_switch_add_xprt_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_switch_add_xprt_locked(%struct.rpc_xprt_switch* %0, %struct.rpc_xprt* %1) #0 {
  %3 = alloca %struct.rpc_xprt_switch*, align 8
  %4 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_xprt_switch* %0, %struct.rpc_xprt_switch** %3, align 8
  store %struct.rpc_xprt* %1, %struct.rpc_xprt** %4, align 8
  %5 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %6 = call i32* @xprt_get(%struct.rpc_xprt* %5)
  %7 = icmp eq i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %38

12:                                               ; preds = %2
  %13 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %14 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %13, i32 0, i32 1
  %15 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %3, align 8
  %16 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %15, i32 0, i32 3
  %17 = call i32 @list_add_tail_rcu(i32* %14, i32* %16)
  %18 = call i32 (...) @smp_wmb()
  %19 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %3, align 8
  %20 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %12
  %24 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %25 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %3, align 8
  %28 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %23, %12
  %30 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %3, align 8
  %31 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %3, align 8
  %35 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %29, %11
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @xprt_get(%struct.rpc_xprt*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
