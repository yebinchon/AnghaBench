; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_animate_client_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_animate_client_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_net = type { i32, i32, i32 }
%struct.rxrpc_connection = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@RXRPC_CONN_COUNTED = common dso_local global i32 0, align 4
@rxrpc_client_count = common dso_local global i32 0, align 4
@rxrpc_max_client_connections = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" [%d]\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@rxrpc_client_to_waiting = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_net*, %struct.rxrpc_connection*)* @rxrpc_animate_client_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_animate_client_conn(%struct.rxrpc_net* %0, %struct.rxrpc_connection* %1) #0 {
  %3 = alloca %struct.rxrpc_net*, align 8
  %4 = alloca %struct.rxrpc_connection*, align 8
  %5 = alloca i32, align 4
  store %struct.rxrpc_net* %0, %struct.rxrpc_net** %3, align 8
  store %struct.rxrpc_connection* %1, %struct.rxrpc_connection** %4, align 8
  %6 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %7 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %10 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @_enter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11)
  %13 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %14 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 133
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %19 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 129
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %2
  br label %61

23:                                               ; preds = %17
  %24 = load %struct.rxrpc_net*, %struct.rxrpc_net** %3, align 8
  %25 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %24, i32 0, i32 2
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.rxrpc_net*, %struct.rxrpc_net** %3, align 8
  %28 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @RXRPC_CONN_COUNTED, align 4
  %31 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %32 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %31, i32 0, i32 2
  %33 = call i32 @test_and_set_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %23
  %36 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %37 = load i32, i32* @rxrpc_client_count, align 4
  %38 = call i32 @trace_rxrpc_client(%struct.rxrpc_connection* %36, i32 -1, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %39, 1
  %41 = load %struct.rxrpc_net*, %struct.rxrpc_net** %3, align 8
  %42 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %35, %23
  %44 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %45 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %54 [
    i32 133, label %47
    i32 129, label %47
    i32 128, label %47
    i32 130, label %48
    i32 132, label %48
    i32 131, label %48
  ]

47:                                               ; preds = %43, %43, %43
  br label %56

48:                                               ; preds = %43, %43, %43
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @rxrpc_max_client_connections, align 4
  %51 = icmp uge i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %71

53:                                               ; preds = %48
  br label %66

54:                                               ; preds = %43
  %55 = call i32 (...) @BUG()
  br label %56

56:                                               ; preds = %54, %47
  br label %57

57:                                               ; preds = %71, %66, %56
  %58 = load %struct.rxrpc_net*, %struct.rxrpc_net** %3, align 8
  %59 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %58, i32 0, i32 2
  %60 = call i32 @spin_unlock(i32* %59)
  br label %61

61:                                               ; preds = %57, %22
  %62 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %63 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  ret void

66:                                               ; preds = %53
  %67 = call i32 @_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.rxrpc_net*, %struct.rxrpc_net** %3, align 8
  %69 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %70 = call i32 @rxrpc_activate_conn(%struct.rxrpc_net* %68, %struct.rxrpc_connection* %69)
  br label %57

71:                                               ; preds = %52
  %72 = call i32 @_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %73 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %74 = load i32, i32* @rxrpc_client_to_waiting, align 4
  %75 = call i32 @trace_rxrpc_client(%struct.rxrpc_connection* %73, i32 -1, i32 %74)
  %76 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %77 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %76, i32 0, i32 0
  store i32 128, i32* %77, align 4
  %78 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %79 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %78, i32 0, i32 1
  %80 = load %struct.rxrpc_net*, %struct.rxrpc_net** %3, align 8
  %81 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %80, i32 0, i32 1
  %82 = call i32 @list_move_tail(i32* %79, i32* %81)
  br label %57
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @trace_rxrpc_client(%struct.rxrpc_connection*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @_leave(i8*, i32) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @rxrpc_activate_conn(%struct.rxrpc_net*, %struct.rxrpc_connection*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
