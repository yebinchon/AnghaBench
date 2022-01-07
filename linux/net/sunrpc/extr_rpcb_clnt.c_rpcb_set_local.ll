; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpcb_clnt.c_rpcb_set_local.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpcb_clnt.c_rpcb_set_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rpc_clnt = type { i32 }
%struct.sunrpc_net = type { i32, i32, %struct.rpc_clnt*, %struct.rpc_clnt* }

@sunrpc_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [100 x i8] c"RPC:       created new rpcb local clients (rpcb_local_clnt: %p, rpcb_local_clnt4: %p) for net %x%s\0A\00", align 1
@init_net = common dso_local global %struct.net zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c" (init_net)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.rpc_clnt*, %struct.rpc_clnt*, i32)* @rpcb_set_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpcb_set_local(%struct.net* %0, %struct.rpc_clnt* %1, %struct.rpc_clnt* %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.rpc_clnt*, align 8
  %7 = alloca %struct.rpc_clnt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sunrpc_net*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.rpc_clnt* %1, %struct.rpc_clnt** %6, align 8
  store %struct.rpc_clnt* %2, %struct.rpc_clnt** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.net*, %struct.net** %5, align 8
  %11 = load i32, i32* @sunrpc_net_id, align 4
  %12 = call %struct.sunrpc_net* @net_generic(%struct.net* %10, i32 %11)
  store %struct.sunrpc_net* %12, %struct.sunrpc_net** %9, align 8
  %13 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %14 = load %struct.sunrpc_net*, %struct.sunrpc_net** %9, align 8
  %15 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %14, i32 0, i32 3
  store %struct.rpc_clnt* %13, %struct.rpc_clnt** %15, align 8
  %16 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %17 = load %struct.sunrpc_net*, %struct.sunrpc_net** %9, align 8
  %18 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %17, i32 0, i32 2
  store %struct.rpc_clnt* %16, %struct.rpc_clnt** %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  %23 = load %struct.sunrpc_net*, %struct.sunrpc_net** %9, align 8
  %24 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = call i32 (...) @smp_wmb()
  %26 = load %struct.sunrpc_net*, %struct.sunrpc_net** %9, align 8
  %27 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.sunrpc_net*, %struct.sunrpc_net** %9, align 8
  %29 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %28, i32 0, i32 3
  %30 = load %struct.rpc_clnt*, %struct.rpc_clnt** %29, align 8
  %31 = load %struct.sunrpc_net*, %struct.sunrpc_net** %9, align 8
  %32 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %31, i32 0, i32 2
  %33 = load %struct.rpc_clnt*, %struct.rpc_clnt** %32, align 8
  %34 = load %struct.net*, %struct.net** %5, align 8
  %35 = getelementptr inbounds %struct.net, %struct.net* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.net*, %struct.net** %5, align 8
  %39 = icmp eq %struct.net* %38, @init_net
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %42 = call i32 @dprintk(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0), %struct.rpc_clnt* %30, %struct.rpc_clnt* %33, i32 %37, i8* %41)
  ret void
}

declare dso_local %struct.sunrpc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @dprintk(i8*, %struct.rpc_clnt*, %struct.rpc_clnt*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
