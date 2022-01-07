; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_mon.c_nsm_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_mon.c_nsm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.net = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.rpc_create_args = type { i32, i8*, i8*, i32, i32, i32, i32, i32*, %struct.sockaddr*, i32, %struct.net* }
%struct.sockaddr = type { i32 }

@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"rpc.statd\00", align 1
@RPC_CLNT_CREATE_NOPING = common dso_local global i32 0, align 4
@RPC_AUTH_NULL = common dso_local global i32 0, align 4
@NSM_VERSION = common dso_local global i32 0, align 4
@nsm_program = common dso_local global i32 0, align 4
@XPRT_TRANSPORT_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_clnt* (%struct.net*, i8*)* @nsm_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_clnt* @nsm_create(%struct.net* %0, i8* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca %struct.rpc_create_args, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* @INADDR_LOOPBACK, align 4
  %10 = call i32 @htonl(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  %12 = load i32, i32* @AF_INET, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 0
  store i32 8, i32* %13, align 8
  %14 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 2
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 3
  %18 = call i32 (...) @current_cred()
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 4
  %20 = load i32, i32* @RPC_CLNT_CREATE_NOPING, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 5
  %22 = load i32, i32* @RPC_AUTH_NULL, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 6
  %24 = load i32, i32* @NSM_VERSION, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 7
  store i32* @nsm_program, i32** %25, align 8
  %26 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 8
  %27 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  store %struct.sockaddr* %27, %struct.sockaddr** %26, align 8
  %28 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 9
  %29 = load i32, i32* @XPRT_TRANSPORT_TCP, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 10
  %31 = load %struct.net*, %struct.net** %3, align 8
  store %struct.net* %31, %struct.net** %30, align 8
  %32 = call %struct.rpc_clnt* @rpc_create(%struct.rpc_create_args* %6)
  ret %struct.rpc_clnt* %32
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local %struct.rpc_clnt* @rpc_create(%struct.rpc_create_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
