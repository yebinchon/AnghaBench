; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpcb_clnt.c_rpcb_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpcb_clnt.c_rpcb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.net = type { i32 }
%struct.sockaddr = type { i32 }
%struct.cred = type { i32 }
%struct.rpc_create_args = type { i32, i64, i8*, i8*, i32, %struct.cred*, i32, i32, i32*, %struct.sockaddr*, %struct.net* }
%struct.sockaddr_in = type { i8* }
%struct.sockaddr_in6 = type { i8* }

@RPC_CLNT_CREATE_NOPING = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_NONPRIVPORT = common dso_local global i32 0, align 4
@RPC_AUTH_UNIX = common dso_local global i32 0, align 4
@rpcb_program = common dso_local global i32 0, align 4
@RPCBIND_PORT = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_clnt* (%struct.net*, i8*, i8*, %struct.sockaddr*, i64, i32, i32, %struct.cred*)* @rpcb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_clnt* @rpcb_create(%struct.net* %0, i8* %1, i8* %2, %struct.sockaddr* %3, i64 %4, i32 %5, i32 %6, %struct.cred* %7) #0 {
  %9 = alloca %struct.rpc_clnt*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.cred*, align 8
  %18 = alloca %struct.rpc_create_args, align 8
  store %struct.net* %0, %struct.net** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.cred* %7, %struct.cred** %17, align 8
  %19 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %18, i32 0, i32 0
  %20 = load i32, i32* %15, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %18, i32 0, i32 1
  %22 = load i64, i64* %14, align 8
  store i64 %22, i64* %21, align 8
  %23 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %18, i32 0, i32 2
  %24 = load i8*, i8** %12, align 8
  store i8* %24, i8** %23, align 8
  %25 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %18, i32 0, i32 3
  %26 = load i8*, i8** %11, align 8
  store i8* %26, i8** %25, align 8
  %27 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %18, i32 0, i32 4
  %28 = load i32, i32* @RPC_CLNT_CREATE_NOPING, align 4
  %29 = load i32, i32* @RPC_CLNT_CREATE_NONPRIVPORT, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %27, align 8
  %31 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %18, i32 0, i32 5
  %32 = load %struct.cred*, %struct.cred** %17, align 8
  store %struct.cred* %32, %struct.cred** %31, align 8
  %33 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %18, i32 0, i32 6
  %34 = load i32, i32* @RPC_AUTH_UNIX, align 4
  store i32 %34, i32* %33, align 8
  %35 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %18, i32 0, i32 7
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %18, i32 0, i32 8
  store i32* @rpcb_program, i32** %37, align 8
  %38 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %18, i32 0, i32 9
  %39 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  store %struct.sockaddr* %39, %struct.sockaddr** %38, align 8
  %40 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %18, i32 0, i32 10
  %41 = load %struct.net*, %struct.net** %10, align 8
  store %struct.net* %41, %struct.net** %40, align 8
  %42 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %57 [
    i32 129, label %45
    i32 128, label %51
  ]

45:                                               ; preds = %8
  %46 = load i32, i32* @RPCBIND_PORT, align 4
  %47 = call i8* @htons(i32 %46)
  %48 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %49 = bitcast %struct.sockaddr* %48 to %struct.sockaddr_in*
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  br label %61

51:                                               ; preds = %8
  %52 = load i32, i32* @RPCBIND_PORT, align 4
  %53 = call i8* @htons(i32 %52)
  %54 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %55 = bitcast %struct.sockaddr* %54 to %struct.sockaddr_in6*
  %56 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  br label %61

57:                                               ; preds = %8
  %58 = load i32, i32* @EAFNOSUPPORT, align 4
  %59 = sub nsw i32 0, %58
  %60 = call %struct.rpc_clnt* @ERR_PTR(i32 %59)
  store %struct.rpc_clnt* %60, %struct.rpc_clnt** %9, align 8
  br label %63

61:                                               ; preds = %51, %45
  %62 = call %struct.rpc_clnt* @rpc_create(%struct.rpc_create_args* %18)
  store %struct.rpc_clnt* %62, %struct.rpc_clnt** %9, align 8
  br label %63

63:                                               ; preds = %61, %57
  %64 = load %struct.rpc_clnt*, %struct.rpc_clnt** %9, align 8
  ret %struct.rpc_clnt* %64
}

declare dso_local i8* @htons(i32) #1

declare dso_local %struct.rpc_clnt* @ERR_PTR(i32) #1

declare dso_local %struct.rpc_clnt* @rpc_create(%struct.rpc_create_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
