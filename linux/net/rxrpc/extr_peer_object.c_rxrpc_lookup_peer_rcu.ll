; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_peer_object.c_rxrpc_lookup_peer_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_peer_object.c_rxrpc_lookup_peer_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_peer = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.rxrpc_local = type { i32 }
%struct.sockaddr_rxrpc = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"PEER %d {%pISp}\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" = %p {u=%d}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rxrpc_peer* @rxrpc_lookup_peer_rcu(%struct.rxrpc_local* %0, %struct.sockaddr_rxrpc* %1) #0 {
  %3 = alloca %struct.rxrpc_local*, align 8
  %4 = alloca %struct.sockaddr_rxrpc*, align 8
  %5 = alloca %struct.rxrpc_peer*, align 8
  %6 = alloca i64, align 8
  store %struct.rxrpc_local* %0, %struct.rxrpc_local** %3, align 8
  store %struct.sockaddr_rxrpc* %1, %struct.sockaddr_rxrpc** %4, align 8
  %7 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %8 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %4, align 8
  %9 = call i64 @rxrpc_peer_hash_key(%struct.rxrpc_local* %7, %struct.sockaddr_rxrpc* %8)
  store i64 %9, i64* %6, align 8
  %10 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %11 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %4, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call %struct.rxrpc_peer* @__rxrpc_lookup_peer_rcu(%struct.rxrpc_local* %10, %struct.sockaddr_rxrpc* %11, i64 %12)
  store %struct.rxrpc_peer* %13, %struct.rxrpc_peer** %5, align 8
  %14 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %15 = icmp ne %struct.rxrpc_peer* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %18 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %21 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @_net(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %19, i32* %22)
  %24 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %25 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %26 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %25, i32 0, i32 0
  %27 = call i32 @atomic_read(i32* %26)
  %28 = call i32 @_leave(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.rxrpc_peer* %24, i32 %27)
  br label %29

29:                                               ; preds = %16, %2
  %30 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  ret %struct.rxrpc_peer* %30
}

declare dso_local i64 @rxrpc_peer_hash_key(%struct.rxrpc_local*, %struct.sockaddr_rxrpc*) #1

declare dso_local %struct.rxrpc_peer* @__rxrpc_lookup_peer_rcu(%struct.rxrpc_local*, %struct.sockaddr_rxrpc*, i64) #1

declare dso_local i32 @_net(i8*, i32, i32*) #1

declare dso_local i32 @_leave(i8*, %struct.rxrpc_peer*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
