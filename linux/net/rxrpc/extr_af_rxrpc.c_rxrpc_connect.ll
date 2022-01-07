; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_af_rxrpc.c_rxrpc_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_af_rxrpc.c_rxrpc_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_rxrpc = type { i32 }
%struct.rxrpc_sock = type { %struct.TYPE_3__, i32, %struct.sockaddr_rxrpc }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%p,%p,%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c" = %d [bad addr]\00", align 1
@EISCONN = common dso_local global i32 0, align 4
@RXRPC_SOCK_CONNECTED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @rxrpc_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_rxrpc*, align 8
  %11 = alloca %struct.rxrpc_sock*, align 8
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_rxrpc*
  store %struct.sockaddr_rxrpc* %14, %struct.sockaddr_rxrpc** %10, align 8
  %15 = load %struct.socket*, %struct.socket** %6, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.rxrpc_sock* @rxrpc_sk(i32 %17)
  store %struct.rxrpc_sock* %18, %struct.rxrpc_sock** %11, align 8
  %19 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @_enter(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.rxrpc_sock* %19, %struct.sockaddr* %20, i32 %21, i32 %22)
  %24 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %25 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %10, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @rxrpc_validate_address(%struct.rxrpc_sock* %24, %struct.sockaddr_rxrpc* %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @_leave(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %74

34:                                               ; preds = %4
  %35 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %36 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %35, i32 0, i32 0
  %37 = call i32 @lock_sock(%struct.TYPE_3__* %36)
  %38 = load i32, i32* @EISCONN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* @RXRPC_SOCK_CONNECTED, align 4
  %41 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %42 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %41, i32 0, i32 1
  %43 = call i64 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %69

46:                                               ; preds = %34
  %47 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %48 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %56 [
    i32 128, label %51
    i32 129, label %55
    i32 130, label %55
  ]

51:                                               ; preds = %46
  %52 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %53 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 129, i32* %54, align 4
  br label %55

55:                                               ; preds = %46, %46, %51
  br label %59

56:                                               ; preds = %46
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %12, align 4
  br label %69

59:                                               ; preds = %55
  %60 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %61 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %60, i32 0, i32 2
  %62 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %10, align 8
  %63 = bitcast %struct.sockaddr_rxrpc* %61 to i8*
  %64 = bitcast %struct.sockaddr_rxrpc* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 4, i1 false)
  %65 = load i32, i32* @RXRPC_SOCK_CONNECTED, align 4
  %66 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %67 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %66, i32 0, i32 1
  %68 = call i32 @set_bit(i32 %65, i32* %67)
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %59, %56, %45
  %70 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %71 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %70, i32 0, i32 0
  %72 = call i32 @release_sock(%struct.TYPE_3__* %71)
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %69, %30
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.rxrpc_sock* @rxrpc_sk(i32) #1

declare dso_local i32 @_enter(i8*, %struct.rxrpc_sock*, %struct.sockaddr*, i32, i32) #1

declare dso_local i32 @rxrpc_validate_address(%struct.rxrpc_sock*, %struct.sockaddr_rxrpc*, i32) #1

declare dso_local i32 @_leave(i8*, i32) #1

declare dso_local i32 @lock_sock(%struct.TYPE_3__*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @release_sock(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
