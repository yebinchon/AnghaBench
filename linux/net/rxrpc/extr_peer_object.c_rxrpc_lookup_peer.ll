; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_peer_object.c_rxrpc_lookup_peer.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_peer_object.c_rxrpc_lookup_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_peer = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.rxrpc_sock = type { i32 }
%struct.rxrpc_local = type { %struct.rxrpc_net* }
%struct.rxrpc_net = type { i32, i32, i32 }
%struct.sockaddr_rxrpc = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"{%pISp}\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" = NULL [nomem]\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"PEER %d {%pISp}\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" = %p {u=%d}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rxrpc_peer* @rxrpc_lookup_peer(%struct.rxrpc_sock* %0, %struct.rxrpc_local* %1, %struct.sockaddr_rxrpc* %2, i32 %3) #0 {
  %5 = alloca %struct.rxrpc_peer*, align 8
  %6 = alloca %struct.rxrpc_sock*, align 8
  %7 = alloca %struct.rxrpc_local*, align 8
  %8 = alloca %struct.sockaddr_rxrpc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rxrpc_peer*, align 8
  %11 = alloca %struct.rxrpc_peer*, align 8
  %12 = alloca %struct.rxrpc_net*, align 8
  %13 = alloca i64, align 8
  store %struct.rxrpc_sock* %0, %struct.rxrpc_sock** %6, align 8
  store %struct.rxrpc_local* %1, %struct.rxrpc_local** %7, align 8
  store %struct.sockaddr_rxrpc* %2, %struct.sockaddr_rxrpc** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.rxrpc_local*, %struct.rxrpc_local** %7, align 8
  %15 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %14, i32 0, i32 0
  %16 = load %struct.rxrpc_net*, %struct.rxrpc_net** %15, align 8
  store %struct.rxrpc_net* %16, %struct.rxrpc_net** %12, align 8
  %17 = load %struct.rxrpc_local*, %struct.rxrpc_local** %7, align 8
  %18 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %8, align 8
  %19 = call i64 @rxrpc_peer_hash_key(%struct.rxrpc_local* %17, %struct.sockaddr_rxrpc* %18)
  store i64 %19, i64* %13, align 8
  %20 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %8, align 8
  %21 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %20, i32 0, i32 0
  %22 = call i32 @_enter(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %21)
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load %struct.rxrpc_local*, %struct.rxrpc_local** %7, align 8
  %25 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %8, align 8
  %26 = load i64, i64* %13, align 8
  %27 = call %struct.rxrpc_peer* @__rxrpc_lookup_peer_rcu(%struct.rxrpc_local* %24, %struct.sockaddr_rxrpc* %25, i64 %26)
  store %struct.rxrpc_peer* %27, %struct.rxrpc_peer** %10, align 8
  %28 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %10, align 8
  %29 = icmp ne %struct.rxrpc_peer* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %10, align 8
  %32 = call i32 @rxrpc_get_peer_maybe(%struct.rxrpc_peer* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store %struct.rxrpc_peer* null, %struct.rxrpc_peer** %10, align 8
  br label %35

35:                                               ; preds = %34, %30, %4
  %36 = call i32 (...) @rcu_read_unlock()
  %37 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %10, align 8
  %38 = icmp ne %struct.rxrpc_peer* %37, null
  br i1 %38, label %93, label %39

39:                                               ; preds = %35
  %40 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %41 = load %struct.rxrpc_local*, %struct.rxrpc_local** %7, align 8
  %42 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %8, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call %struct.rxrpc_peer* @rxrpc_create_peer(%struct.rxrpc_sock* %40, %struct.rxrpc_local* %41, %struct.sockaddr_rxrpc* %42, i64 %43, i32 %44)
  store %struct.rxrpc_peer* %45, %struct.rxrpc_peer** %11, align 8
  %46 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %11, align 8
  %47 = icmp ne %struct.rxrpc_peer* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %39
  %49 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store %struct.rxrpc_peer* null, %struct.rxrpc_peer** %5, align 8
  br label %107

50:                                               ; preds = %39
  %51 = load %struct.rxrpc_net*, %struct.rxrpc_net** %12, align 8
  %52 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %51, i32 0, i32 0
  %53 = call i32 @spin_lock_bh(i32* %52)
  %54 = load %struct.rxrpc_local*, %struct.rxrpc_local** %7, align 8
  %55 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %8, align 8
  %56 = load i64, i64* %13, align 8
  %57 = call %struct.rxrpc_peer* @__rxrpc_lookup_peer_rcu(%struct.rxrpc_local* %54, %struct.sockaddr_rxrpc* %55, i64 %56)
  store %struct.rxrpc_peer* %57, %struct.rxrpc_peer** %10, align 8
  %58 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %10, align 8
  %59 = icmp ne %struct.rxrpc_peer* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %10, align 8
  %62 = call i32 @rxrpc_get_peer_maybe(%struct.rxrpc_peer* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  store %struct.rxrpc_peer* null, %struct.rxrpc_peer** %10, align 8
  br label %65

65:                                               ; preds = %64, %60, %50
  %66 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %10, align 8
  %67 = icmp ne %struct.rxrpc_peer* %66, null
  br i1 %67, label %81, label %68

68:                                               ; preds = %65
  %69 = load %struct.rxrpc_net*, %struct.rxrpc_net** %12, align 8
  %70 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %11, align 8
  %73 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %72, i32 0, i32 4
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @hash_add_rcu(i32 %71, i32* %73, i64 %74)
  %76 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %11, align 8
  %77 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %76, i32 0, i32 3
  %78 = load %struct.rxrpc_net*, %struct.rxrpc_net** %12, align 8
  %79 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %78, i32 0, i32 1
  %80 = call i32 @list_add_tail(i32* %77, i32* %79)
  br label %81

81:                                               ; preds = %68, %65
  %82 = load %struct.rxrpc_net*, %struct.rxrpc_net** %12, align 8
  %83 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock_bh(i32* %83)
  %85 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %10, align 8
  %86 = icmp ne %struct.rxrpc_peer* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %11, align 8
  %89 = call i32 @kfree(%struct.rxrpc_peer* %88)
  br label %92

90:                                               ; preds = %81
  %91 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %11, align 8
  store %struct.rxrpc_peer* %91, %struct.rxrpc_peer** %10, align 8
  br label %92

92:                                               ; preds = %90, %87
  br label %93

93:                                               ; preds = %92, %35
  %94 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %10, align 8
  %95 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %10, align 8
  %98 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = call i32 @_net(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32* %99)
  %101 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %10, align 8
  %102 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %10, align 8
  %103 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %102, i32 0, i32 0
  %104 = call i32 @atomic_read(i32* %103)
  %105 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %struct.rxrpc_peer* %101, i32 %104)
  %106 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %10, align 8
  store %struct.rxrpc_peer* %106, %struct.rxrpc_peer** %5, align 8
  br label %107

107:                                              ; preds = %93, %48
  %108 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  ret %struct.rxrpc_peer* %108
}

declare dso_local i64 @rxrpc_peer_hash_key(%struct.rxrpc_local*, %struct.sockaddr_rxrpc*) #1

declare dso_local i32 @_enter(i8*, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rxrpc_peer* @__rxrpc_lookup_peer_rcu(%struct.rxrpc_local*, %struct.sockaddr_rxrpc*, i64) #1

declare dso_local i32 @rxrpc_get_peer_maybe(%struct.rxrpc_peer*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.rxrpc_peer* @rxrpc_create_peer(%struct.rxrpc_sock*, %struct.rxrpc_local*, %struct.sockaddr_rxrpc*, i64, i32) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hash_add_rcu(i32, i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.rxrpc_peer*) #1

declare dso_local i32 @_net(i8*, i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
