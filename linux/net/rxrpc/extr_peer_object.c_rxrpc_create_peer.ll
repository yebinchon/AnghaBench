; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_peer_object.c_rxrpc_create_peer.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_peer_object.c_rxrpc_create_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_peer = type { i32 }
%struct.rxrpc_sock = type { i32 }
%struct.rxrpc_local = type { i32 }
%struct.sockaddr_rxrpc = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" = %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rxrpc_peer* (%struct.rxrpc_sock*, %struct.rxrpc_local*, %struct.sockaddr_rxrpc*, i64, i32)* @rxrpc_create_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rxrpc_peer* @rxrpc_create_peer(%struct.rxrpc_sock* %0, %struct.rxrpc_local* %1, %struct.sockaddr_rxrpc* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.rxrpc_sock*, align 8
  %7 = alloca %struct.rxrpc_local*, align 8
  %8 = alloca %struct.sockaddr_rxrpc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rxrpc_peer*, align 8
  store %struct.rxrpc_sock* %0, %struct.rxrpc_sock** %6, align 8
  store %struct.rxrpc_local* %1, %struct.rxrpc_local** %7, align 8
  store %struct.sockaddr_rxrpc* %2, %struct.sockaddr_rxrpc** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.rxrpc_local*, %struct.rxrpc_local** %7, align 8
  %14 = load i32, i32* %10, align 4
  %15 = call %struct.rxrpc_peer* @rxrpc_alloc_peer(%struct.rxrpc_local* %13, i32 %14)
  store %struct.rxrpc_peer* %15, %struct.rxrpc_peer** %11, align 8
  %16 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %11, align 8
  %17 = icmp ne %struct.rxrpc_peer* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %5
  %19 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %11, align 8
  %20 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %19, i32 0, i32 0
  %21 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %8, align 8
  %22 = call i32 @memcpy(i32* %20, %struct.sockaddr_rxrpc* %21, i32 4)
  %23 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %24 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %11, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @rxrpc_init_peer(%struct.rxrpc_sock* %23, %struct.rxrpc_peer* %24, i64 %25)
  br label %27

27:                                               ; preds = %18, %5
  %28 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %11, align 8
  %29 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.rxrpc_peer* %28)
  %30 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %11, align 8
  ret %struct.rxrpc_peer* %30
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.rxrpc_peer* @rxrpc_alloc_peer(%struct.rxrpc_local*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_rxrpc*, i32) #1

declare dso_local i32 @rxrpc_init_peer(%struct.rxrpc_sock*, %struct.rxrpc_peer*, i64) #1

declare dso_local i32 @_leave(i8*, %struct.rxrpc_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
