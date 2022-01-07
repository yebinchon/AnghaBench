; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_activate_channels.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_activate_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@rxrpc_client_activate_chans = common dso_local global i32 0, align 4
@RXRPC_ACTIVE_CHANS_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_connection*)* @rxrpc_activate_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_activate_channels(%struct.rxrpc_connection* %0) #0 {
  %2 = alloca %struct.rxrpc_connection*, align 8
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %2, align 8
  %3 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %4 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %8 = load i32, i32* @rxrpc_client_activate_chans, align 4
  %9 = call i32 @trace_rxrpc_client(%struct.rxrpc_connection* %7, i32 -1, i32 %8)
  %10 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %11 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RXRPC_ACTIVE_CHANS_MASK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %26

16:                                               ; preds = %1
  %17 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %18 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %21 = call i32 @rxrpc_activate_channels_locked(%struct.rxrpc_connection* %20)
  %22 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %23 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %22, i32 0, i32 1
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @trace_rxrpc_client(%struct.rxrpc_connection*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rxrpc_activate_channels_locked(%struct.rxrpc_connection*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
