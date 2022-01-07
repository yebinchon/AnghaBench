; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_af_rxrpc.c_rxrpc_kernel_begin_call.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_af_rxrpc.c_rxrpc_kernel_begin_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32 }
%struct.socket = type { i32 }
%struct.sockaddr_rxrpc = type { i32 }
%struct.key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.rxrpc_conn_parameters = type { i64, i32, i32, i32, i32, i32, i32, %struct.key*, i32, i32 }
%struct.rxrpc_call_params = type { i64, i32, i32, i32, i32, i32, i32, %struct.key*, i32, i32 }
%struct.rxrpc_sock = type { i32, i32, %struct.key*, i32 }

@.str = private unnamed_addr constant [9 x i8] c",,%x,%lx\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" = %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rxrpc_call* @rxrpc_kernel_begin_call(%struct.socket* %0, %struct.sockaddr_rxrpc* %1, %struct.key* %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.rxrpc_call*, align 8
  %12 = alloca %struct.socket*, align 8
  %13 = alloca %struct.sockaddr_rxrpc*, align 8
  %14 = alloca %struct.key*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.rxrpc_conn_parameters, align 8
  %23 = alloca %struct.rxrpc_call_params, align 8
  %24 = alloca %struct.rxrpc_call*, align 8
  %25 = alloca %struct.rxrpc_sock*, align 8
  %26 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %12, align 8
  store %struct.sockaddr_rxrpc* %1, %struct.sockaddr_rxrpc** %13, align 8
  store %struct.key* %2, %struct.key** %14, align 8
  store i64 %3, i64* %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %27 = load %struct.socket*, %struct.socket** %12, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.rxrpc_sock* @rxrpc_sk(i32 %29)
  store %struct.rxrpc_sock* %30, %struct.rxrpc_sock** %25, align 8
  %31 = load %struct.key*, %struct.key** %14, align 8
  %32 = call i32 @key_serial(%struct.key* %31)
  %33 = load i64, i64* %15, align 8
  %34 = call i32 @_enter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %33)
  %35 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %25, align 8
  %36 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %13, align 8
  %37 = call i32 @rxrpc_validate_address(%struct.rxrpc_sock* %35, %struct.sockaddr_rxrpc* %36, i32 4)
  store i32 %37, i32* %26, align 4
  %38 = load i32, i32* %26, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %10
  %41 = load i32, i32* %26, align 4
  %42 = call %struct.rxrpc_call* @ERR_PTR(i32 %41)
  store %struct.rxrpc_call* %42, %struct.rxrpc_call** %11, align 8
  br label %115

43:                                               ; preds = %10
  %44 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %25, align 8
  %45 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %44, i32 0, i32 3
  %46 = call i32 @lock_sock(i32* %45)
  %47 = load %struct.key*, %struct.key** %14, align 8
  %48 = icmp ne %struct.key* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %25, align 8
  %51 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %50, i32 0, i32 2
  %52 = load %struct.key*, %struct.key** %51, align 8
  store %struct.key* %52, %struct.key** %14, align 8
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.key*, %struct.key** %14, align 8
  %55 = icmp ne %struct.key* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load %struct.key*, %struct.key** %14, align 8
  %58 = getelementptr inbounds %struct.key, %struct.key* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  store %struct.key* null, %struct.key** %14, align 8
  br label %65

65:                                               ; preds = %64, %56, %53
  %66 = bitcast %struct.rxrpc_call_params* %23 to %struct.rxrpc_conn_parameters*
  %67 = call i32 @memset(%struct.rxrpc_conn_parameters* %66, i32 0, i32 48)
  %68 = load i64, i64* %15, align 8
  %69 = getelementptr inbounds %struct.rxrpc_call_params, %struct.rxrpc_call_params* %23, i32 0, i32 0
  store i64 %68, i64* %69, align 8
  %70 = load i32, i32* %16, align 4
  %71 = getelementptr inbounds %struct.rxrpc_call_params, %struct.rxrpc_call_params* %23, i32 0, i32 9
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %20, align 4
  %73 = getelementptr inbounds %struct.rxrpc_call_params, %struct.rxrpc_call_params* %23, i32 0, i32 1
  store i32 %72, i32* %73, align 8
  %74 = call i32 @memset(%struct.rxrpc_conn_parameters* %22, i32 0, i32 48)
  %75 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %25, align 8
  %76 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.rxrpc_conn_parameters, %struct.rxrpc_conn_parameters* %22, i32 0, i32 8
  store i32 %77, i32* %78, align 8
  %79 = load %struct.key*, %struct.key** %14, align 8
  %80 = getelementptr inbounds %struct.rxrpc_conn_parameters, %struct.rxrpc_conn_parameters* %22, i32 0, i32 7
  store %struct.key* %79, %struct.key** %80, align 8
  %81 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %25, align 8
  %82 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.rxrpc_conn_parameters, %struct.rxrpc_conn_parameters* %22, i32 0, i32 6
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.rxrpc_conn_parameters, %struct.rxrpc_conn_parameters* %22, i32 0, i32 2
  store i32 0, i32* %85, align 4
  %86 = load i32, i32* %19, align 4
  %87 = getelementptr inbounds %struct.rxrpc_conn_parameters, %struct.rxrpc_conn_parameters* %22, i32 0, i32 3
  store i32 %86, i32* %87, align 8
  %88 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %13, align 8
  %89 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.rxrpc_conn_parameters, %struct.rxrpc_conn_parameters* %22, i32 0, i32 5
  store i32 %90, i32* %91, align 8
  %92 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %25, align 8
  %93 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %13, align 8
  %94 = bitcast %struct.rxrpc_call_params* %23 to %struct.rxrpc_conn_parameters*
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %21, align 4
  %97 = call %struct.rxrpc_call* @rxrpc_new_client_call(%struct.rxrpc_sock* %92, %struct.rxrpc_conn_parameters* %22, %struct.sockaddr_rxrpc* %93, %struct.rxrpc_conn_parameters* %94, i32 %95, i32 %96)
  store %struct.rxrpc_call* %97, %struct.rxrpc_call** %24, align 8
  %98 = load %struct.rxrpc_call*, %struct.rxrpc_call** %24, align 8
  %99 = call i32 @IS_ERR(%struct.rxrpc_call* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %65
  %102 = load i32, i32* %18, align 4
  %103 = load %struct.rxrpc_call*, %struct.rxrpc_call** %24, align 8
  %104 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.rxrpc_call*, %struct.rxrpc_call** %24, align 8
  %106 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  br label %108

108:                                              ; preds = %101, %65
  %109 = getelementptr inbounds %struct.rxrpc_conn_parameters, %struct.rxrpc_conn_parameters* %22, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @rxrpc_put_peer(i32 %110)
  %112 = load %struct.rxrpc_call*, %struct.rxrpc_call** %24, align 8
  %113 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.rxrpc_call* %112)
  %114 = load %struct.rxrpc_call*, %struct.rxrpc_call** %24, align 8
  store %struct.rxrpc_call* %114, %struct.rxrpc_call** %11, align 8
  br label %115

115:                                              ; preds = %108, %40
  %116 = load %struct.rxrpc_call*, %struct.rxrpc_call** %11, align 8
  ret %struct.rxrpc_call* %116
}

declare dso_local %struct.rxrpc_sock* @rxrpc_sk(i32) #1

declare dso_local i32 @_enter(i8*, i32, i64) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i32 @rxrpc_validate_address(%struct.rxrpc_sock*, %struct.sockaddr_rxrpc*, i32) #1

declare dso_local %struct.rxrpc_call* @ERR_PTR(i32) #1

declare dso_local i32 @lock_sock(i32*) #1

declare dso_local i32 @memset(%struct.rxrpc_conn_parameters*, i32, i32) #1

declare dso_local %struct.rxrpc_call* @rxrpc_new_client_call(%struct.rxrpc_sock*, %struct.rxrpc_conn_parameters*, %struct.sockaddr_rxrpc*, %struct.rxrpc_conn_parameters*, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.rxrpc_call*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rxrpc_put_peer(i32) #1

declare dso_local i32 @_leave(i8*, %struct.rxrpc_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
