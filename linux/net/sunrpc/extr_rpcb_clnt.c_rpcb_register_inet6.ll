; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpcb_clnt.c_rpcb_register_inet6.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpcb_clnt.c_rpcb_register_inet6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunrpc_net = type { i32 }
%struct.sockaddr = type { i32 }
%struct.rpc_message = type { i32*, %struct.rpcbind_args* }
%struct.rpcbind_args = type { i32, i32, i32, i32 }
%struct.sockaddr_in6 = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"RPC:       %sregistering [%u, %u, %s, '%s'] with local rpcbind\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@rpcb_procedures4 = common dso_local global i32* null, align 8
@RPCBPROC_UNSET = common dso_local global i64 0, align 8
@RPCBPROC_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunrpc_net*, %struct.sockaddr*, %struct.rpc_message*)* @rpcb_register_inet6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcb_register_inet6(%struct.sunrpc_net* %0, %struct.sockaddr* %1, %struct.rpc_message* %2) #0 {
  %4 = alloca %struct.sunrpc_net*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.rpc_message*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca %struct.rpcbind_args*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sunrpc_net* %0, %struct.sunrpc_net** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %struct.rpc_message* %2, %struct.rpc_message** %6, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %13, %struct.sockaddr_in6** %7, align 8
  %14 = load %struct.rpc_message*, %struct.rpc_message** %6, align 8
  %15 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 1
  %16 = load %struct.rpcbind_args*, %struct.rpcbind_args** %15, align 8
  store %struct.rpcbind_args* %16, %struct.rpcbind_args** %8, align 8
  %17 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call zeroext i16 @ntohs(i32 %19)
  store i16 %20, i16* %9, align 2
  store i32 0, i32* %10, align 4
  %21 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @rpc_sockaddr2uaddr(%struct.sockaddr* %21, i32 %22)
  %24 = load %struct.rpcbind_args*, %struct.rpcbind_args** %8, align 8
  %25 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i16, i16* %9, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %31 = load %struct.rpcbind_args*, %struct.rpcbind_args** %8, align 8
  %32 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rpcbind_args*, %struct.rpcbind_args** %8, align 8
  %35 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rpcbind_args*, %struct.rpcbind_args** %8, align 8
  %38 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rpcbind_args*, %struct.rpcbind_args** %8, align 8
  %41 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dprintk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %33, i32 %36, i32 %39, i32 %42)
  %44 = load i32*, i32** @rpcb_procedures4, align 8
  %45 = load i64, i64* @RPCBPROC_UNSET, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load %struct.rpc_message*, %struct.rpc_message** %6, align 8
  %48 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  %49 = load i16, i16* %9, align 2
  %50 = zext i16 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %3
  %53 = load i32*, i32** @rpcb_procedures4, align 8
  %54 = load i64, i64* @RPCBPROC_SET, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load %struct.rpc_message*, %struct.rpc_message** %6, align 8
  %57 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %56, i32 0, i32 0
  store i32* %55, i32** %57, align 8
  store i32 1, i32* %10, align 4
  br label %58

58:                                               ; preds = %52, %3
  %59 = load %struct.sunrpc_net*, %struct.sunrpc_net** %4, align 8
  %60 = load %struct.sunrpc_net*, %struct.sunrpc_net** %4, align 8
  %61 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.rpc_message*, %struct.rpc_message** %6, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @rpcb_register_call(%struct.sunrpc_net* %59, i32 %62, %struct.rpc_message* %63, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.rpcbind_args*, %struct.rpcbind_args** %8, align 8
  %67 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @kfree(i32 %68)
  %70 = load i32, i32* %11, align 4
  ret i32 %70
}

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @rpc_sockaddr2uaddr(%struct.sockaddr*, i32) #1

declare dso_local i32 @dprintk(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @rpcb_register_call(%struct.sunrpc_net*, i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
