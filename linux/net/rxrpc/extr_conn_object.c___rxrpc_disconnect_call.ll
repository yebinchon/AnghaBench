; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_object.c___rxrpc_disconnect_call.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_object.c___rxrpc_disconnect_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i32, %struct.rxrpc_channel* }
%struct.rxrpc_channel = type { i32, i32, i32, i32, i8*, i32, i32 }
%struct.rxrpc_call = type { i64, i32, i32, i32 }

@RXRPC_CHANNELMASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%d,%x\00", align 1
@RXRPC_PACKET_TYPE_ACK = common dso_local global i8* null, align 8
@RXRPC_PACKET_TYPE_ABORT = common dso_local global i8* null, align 8
@RX_USER_ABORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__rxrpc_disconnect_call(%struct.rxrpc_connection* %0, %struct.rxrpc_call* %1) #0 {
  %3 = alloca %struct.rxrpc_connection*, align 8
  %4 = alloca %struct.rxrpc_call*, align 8
  %5 = alloca %struct.rxrpc_channel*, align 8
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %3, align 8
  store %struct.rxrpc_call* %1, %struct.rxrpc_call** %4, align 8
  %6 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %7 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %6, i32 0, i32 1
  %8 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %7, align 8
  %9 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %10 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RXRPC_CHANNELMASK, align 8
  %13 = and i64 %11, %12
  %14 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %8, i64 %13
  store %struct.rxrpc_channel* %14, %struct.rxrpc_channel** %5, align 8
  %15 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %16 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %19 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @_enter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %20)
  %22 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %5, align 8
  %23 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.rxrpc_call* @rcu_access_pointer(i32 %24)
  %26 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %27 = icmp eq %struct.rxrpc_call* %25, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %2
  %29 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %30 = call i32 @trace_rxrpc_disconnect_call(%struct.rxrpc_call* %29)
  %31 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %32 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %52 [
    i32 128, label %34
    i32 129, label %43
  ]

34:                                               ; preds = %28
  %35 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %36 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %5, align 8
  %39 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load i8*, i8** @RXRPC_PACKET_TYPE_ACK, align 8
  %41 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %5, align 8
  %42 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  br label %59

43:                                               ; preds = %28
  %44 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %45 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %5, align 8
  %48 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** @RXRPC_PACKET_TYPE_ABORT, align 8
  %50 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %5, align 8
  %51 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  br label %59

52:                                               ; preds = %28
  %53 = load i32, i32* @RX_USER_ABORT, align 4
  %54 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %5, align 8
  %55 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** @RXRPC_PACKET_TYPE_ABORT, align 8
  %57 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %5, align 8
  %58 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %52, %43, %34
  %60 = call i32 (...) @smp_wmb()
  %61 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %5, align 8
  %62 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %5, align 8
  %65 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %5, align 8
  %67 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %5, align 8
  %70 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %5, align 8
  %72 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @rcu_assign_pointer(i32 %73, i32* null)
  br label %75

75:                                               ; preds = %59, %2
  %76 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @_enter(i8*, i32, i64) #1

declare dso_local %struct.rxrpc_call* @rcu_access_pointer(i32) #1

declare dso_local i32 @trace_rxrpc_disconnect_call(%struct.rxrpc_call*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
