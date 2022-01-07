; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net = type { i32 }

@RB_ROOT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@RPC_INITCWND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"xprt_binding\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"xprt_pending\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"xprt_sending\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"xprt_backlog\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*, %struct.net*)* @xprt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_init(%struct.rpc_xprt* %0, %struct.net* %1) #0 {
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca %struct.net*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %3, align 8
  store %struct.net* %1, %struct.net** %4, align 8
  %5 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %6 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %5, i32 0, i32 17
  %7 = call i32 @kref_init(i32* %6)
  %8 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %8, i32 0, i32 16
  %10 = call i32 @spin_lock_init(i32* %9)
  %11 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %12 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %11, i32 0, i32 15
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %15 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %14, i32 0, i32 14
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %18 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %17, i32 0, i32 13
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load i32, i32* @RB_ROOT, align 4
  %21 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %22 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %21, i32 0, i32 12
  store i32 %20, i32* %22, align 8
  %23 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %24 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %23, i32 0, i32 11
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %27 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %26, i32 0, i32 8
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load i32, i32* @jiffies, align 4
  %30 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %31 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @RPC_INITCWND, align 4
  %33 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %34 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %36 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %38 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %37, i32 0, i32 4
  %39 = call i32 @rpc_init_wait_queue(i32* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %41 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %40, i32 0, i32 3
  %42 = call i32 @rpc_init_wait_queue(i32* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %44 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %43, i32 0, i32 2
  %45 = call i32 @rpc_init_wait_queue(i32* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %47 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %46, i32 0, i32 1
  %48 = call i32 @rpc_init_priority_wait_queue(i32* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %50 = call i32 @xprt_init_xid(%struct.rpc_xprt* %49)
  %51 = load %struct.net*, %struct.net** %4, align 8
  %52 = call i32 @get_net(%struct.net* %51)
  %53 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %54 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  ret void
}

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rpc_init_wait_queue(i32*, i8*) #1

declare dso_local i32 @rpc_init_priority_wait_queue(i32*, i8*) #1

declare dso_local i32 @xprt_init_xid(%struct.rpc_xprt*) #1

declare dso_local i32 @get_net(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
