; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpcb_clnt.c_rpcb_unregister_all_protofamilies.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpcb_clnt.c_rpcb_unregister_all_protofamilies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunrpc_net = type { i32 }
%struct.rpc_message = type { i32*, %struct.rpcbind_args* }
%struct.rpcbind_args = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"RPC:       unregistering [%u, %u, '%s'] with local rpcbind\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rpcb_procedures4 = common dso_local global i32* null, align 8
@RPCBPROC_UNSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunrpc_net*, %struct.rpc_message*)* @rpcb_unregister_all_protofamilies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcb_unregister_all_protofamilies(%struct.sunrpc_net* %0, %struct.rpc_message* %1) #0 {
  %3 = alloca %struct.sunrpc_net*, align 8
  %4 = alloca %struct.rpc_message*, align 8
  %5 = alloca %struct.rpcbind_args*, align 8
  store %struct.sunrpc_net* %0, %struct.sunrpc_net** %3, align 8
  store %struct.rpc_message* %1, %struct.rpc_message** %4, align 8
  %6 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %7 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 1
  %8 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  store %struct.rpcbind_args* %8, %struct.rpcbind_args** %5, align 8
  %9 = load %struct.rpcbind_args*, %struct.rpcbind_args** %5, align 8
  %10 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.rpcbind_args*, %struct.rpcbind_args** %5, align 8
  %13 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rpcbind_args*, %struct.rpcbind_args** %5, align 8
  %16 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dprintk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17)
  %19 = load %struct.rpcbind_args*, %struct.rpcbind_args** %5, align 8
  %20 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  %21 = load i32*, i32** @rpcb_procedures4, align 8
  %22 = load i64, i64* @RPCBPROC_UNSET, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %25 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.sunrpc_net*, %struct.sunrpc_net** %3, align 8
  %27 = load %struct.sunrpc_net*, %struct.sunrpc_net** %3, align 8
  %28 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %31 = call i32 @rpcb_register_call(%struct.sunrpc_net* %26, i32 %29, %struct.rpc_message* %30, i32 0)
  ret i32 %31
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @rpcb_register_call(%struct.sunrpc_net*, i32, %struct.rpc_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
