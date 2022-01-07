; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_connect_call.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_connect_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_sock = type { i32 }
%struct.rxrpc_call = type { %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.rxrpc_conn_parameters = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.rxrpc_net* }
%struct.rxrpc_net = type { i32 }
%struct.sockaddr_rxrpc = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"{%d,%lx},\00", align 1
@rxrpc_client_chan_wait_failed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxrpc_connect_call(%struct.rxrpc_sock* %0, %struct.rxrpc_call* %1, %struct.rxrpc_conn_parameters* %2, %struct.sockaddr_rxrpc* %3, i32 %4) #0 {
  %6 = alloca %struct.rxrpc_sock*, align 8
  %7 = alloca %struct.rxrpc_call*, align 8
  %8 = alloca %struct.rxrpc_conn_parameters*, align 8
  %9 = alloca %struct.sockaddr_rxrpc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rxrpc_net*, align 8
  %12 = alloca i32, align 4
  store %struct.rxrpc_sock* %0, %struct.rxrpc_sock** %6, align 8
  store %struct.rxrpc_call* %1, %struct.rxrpc_call** %7, align 8
  store %struct.rxrpc_conn_parameters* %2, %struct.rxrpc_conn_parameters** %8, align 8
  store %struct.sockaddr_rxrpc* %3, %struct.sockaddr_rxrpc** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.rxrpc_conn_parameters*, %struct.rxrpc_conn_parameters** %8, align 8
  %14 = getelementptr inbounds %struct.rxrpc_conn_parameters, %struct.rxrpc_conn_parameters* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.rxrpc_net*, %struct.rxrpc_net** %16, align 8
  store %struct.rxrpc_net* %17, %struct.rxrpc_net** %11, align 8
  %18 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %19 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %22 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @_enter(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.rxrpc_net*, %struct.rxrpc_net** %11, align 8
  %26 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %25, i32 0, i32 0
  %27 = call i32 @rxrpc_discard_expired_client_conns(i32* %26)
  %28 = load %struct.rxrpc_net*, %struct.rxrpc_net** %11, align 8
  %29 = call i32 @rxrpc_cull_active_client_conns(%struct.rxrpc_net* %28)
  %30 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %31 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %32 = load %struct.rxrpc_conn_parameters*, %struct.rxrpc_conn_parameters** %8, align 8
  %33 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @rxrpc_get_client_conn(%struct.rxrpc_sock* %30, %struct.rxrpc_call* %31, %struct.rxrpc_conn_parameters* %32, %struct.sockaddr_rxrpc* %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %5
  br label %90

39:                                               ; preds = %5
  %40 = load %struct.rxrpc_net*, %struct.rxrpc_net** %11, align 8
  %41 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %42 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = call i32 @rxrpc_animate_client_conn(%struct.rxrpc_net* %40, %struct.TYPE_10__* %43)
  %45 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %46 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = call i32 @rxrpc_activate_channels(%struct.TYPE_10__* %47)
  %49 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @rxrpc_wait_for_channel(%struct.rxrpc_call* %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %39
  %55 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %56 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @rxrpc_client_chan_wait_failed, align 4
  %60 = call i32 @trace_rxrpc_client(%struct.TYPE_10__* %57, i32 %58, i32 %59)
  %61 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %62 = call i32 @rxrpc_disconnect_client_call(%struct.rxrpc_call* %61)
  br label %90

63:                                               ; preds = %39
  %64 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %65 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = call i32 @spin_lock_bh(i32* %70)
  %72 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %73 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %72, i32 0, i32 1
  %74 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %75 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = call i32 @hlist_add_head_rcu(i32* %73, i32* %80)
  %82 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %83 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %82, i32 0, i32 0
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock_bh(i32* %88)
  br label %90

90:                                               ; preds = %63, %54, %38
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %12, align 4
  ret i32 %93
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @rxrpc_discard_expired_client_conns(i32*) #1

declare dso_local i32 @rxrpc_cull_active_client_conns(%struct.rxrpc_net*) #1

declare dso_local i32 @rxrpc_get_client_conn(%struct.rxrpc_sock*, %struct.rxrpc_call*, %struct.rxrpc_conn_parameters*, %struct.sockaddr_rxrpc*, i32) #1

declare dso_local i32 @rxrpc_animate_client_conn(%struct.rxrpc_net*, %struct.TYPE_10__*) #1

declare dso_local i32 @rxrpc_activate_channels(%struct.TYPE_10__*) #1

declare dso_local i32 @rxrpc_wait_for_channel(%struct.rxrpc_call*, i32) #1

declare dso_local i32 @trace_rxrpc_client(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @rxrpc_disconnect_client_call(%struct.rxrpc_call*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
