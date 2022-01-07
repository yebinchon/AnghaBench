; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_call_object.c_rxrpc_alloc_client_call.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_call_object.c_rxrpc_alloc_client_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i8*, i8*, i32, i32 }
%struct.rxrpc_sock = type { i32 }
%struct.sockaddr_rxrpc = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@RXRPC_CALL_CLIENT_AWAIT_CONN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rxrpc_call* (%struct.rxrpc_sock*, %struct.sockaddr_rxrpc*, i32, i32)* @rxrpc_alloc_client_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rxrpc_call* @rxrpc_alloc_client_call(%struct.rxrpc_sock* %0, %struct.sockaddr_rxrpc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rxrpc_call*, align 8
  %6 = alloca %struct.rxrpc_sock*, align 8
  %7 = alloca %struct.sockaddr_rxrpc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rxrpc_call*, align 8
  %11 = alloca i8*, align 8
  store %struct.rxrpc_sock* %0, %struct.rxrpc_sock** %6, align 8
  store %struct.sockaddr_rxrpc* %1, %struct.sockaddr_rxrpc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call %struct.rxrpc_call* @rxrpc_alloc_call(%struct.rxrpc_sock* %13, i32 %14, i32 %15)
  store %struct.rxrpc_call* %16, %struct.rxrpc_call** %10, align 8
  %17 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %18 = icmp ne %struct.rxrpc_call* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.rxrpc_call* @ERR_PTR(i32 %21)
  store %struct.rxrpc_call* %22, %struct.rxrpc_call** %5, align 8
  br label %44

23:                                               ; preds = %4
  %24 = load i32, i32* @RXRPC_CALL_CLIENT_AWAIT_CONN, align 4
  %25 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %26 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %7, align 8
  %28 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %31 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %33 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = call i8* (...) @ktime_get_real()
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %37 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %40 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %42 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.rxrpc_call* %41)
  %43 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  store %struct.rxrpc_call* %43, %struct.rxrpc_call** %5, align 8
  br label %44

44:                                               ; preds = %23, %19
  %45 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  ret %struct.rxrpc_call* %45
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.rxrpc_call* @rxrpc_alloc_call(%struct.rxrpc_sock*, i32, i32) #1

declare dso_local %struct.rxrpc_call* @ERR_PTR(i32) #1

declare dso_local i8* @ktime_get_real(...) #1

declare dso_local i32 @_leave(i8*, %struct.rxrpc_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
