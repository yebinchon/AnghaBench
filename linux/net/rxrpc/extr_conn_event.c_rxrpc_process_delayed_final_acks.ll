; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_event.c_rxrpc_process_delayed_final_acks.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_event.c_rxrpc_process_delayed_final_acks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i32, %struct.rxrpc_channel* }
%struct.rxrpc_channel = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@RXRPC_MAXCALLS = common dso_local global i32 0, align 4
@RXRPC_CONN_FINAL_ACK_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_connection*)* @rxrpc_process_delayed_final_acks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_process_delayed_final_acks(%struct.rxrpc_connection* %0) #0 {
  %2 = alloca %struct.rxrpc_connection*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rxrpc_channel*, align 8
  %8 = alloca i64, align 8
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %2, align 8
  %9 = load i64, i64* @jiffies, align 8
  store i64 %9, i64* %3, align 8
  br label %10

10:                                               ; preds = %75, %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @LONG_MAX, align 8
  %13 = add i64 %11, %12
  store i64 %13, i64* %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %66, %10
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @RXRPC_MAXCALLS, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %69

18:                                               ; preds = %14
  %19 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %20 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %19, i32 0, i32 1
  %21 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %21, i64 %23
  store %struct.rxrpc_channel* %24, %struct.rxrpc_channel** %7, align 8
  %25 = load i64, i64* @RXRPC_CONN_FINAL_ACK_0, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %30 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %29, i32 0, i32 0
  %31 = call i32 @test_bit(i64 %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %18
  br label %66

34:                                               ; preds = %18
  %35 = call i32 (...) @smp_rmb()
  %36 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %7, align 8
  %37 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @READ_ONCE(i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i64 @time_before(i64 %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @time_before(i64 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %4, align 8
  store i32 1, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %44
  br label %66

52:                                               ; preds = %34
  %53 = load i64, i64* @RXRPC_CONN_FINAL_ACK_0, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %58 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %57, i32 0, i32 0
  %59 = call i64 @test_and_clear_bit(i64 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @rxrpc_conn_retransmit_call(%struct.rxrpc_connection* %62, i32* null, i32 %63)
  br label %65

65:                                               ; preds = %61, %52
  br label %66

66:                                               ; preds = %65, %51, %33
  %67 = load i32, i32* %5, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %14

69:                                               ; preds = %14
  %70 = load i64, i64* @jiffies, align 8
  store i64 %70, i64* %3, align 8
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* %3, align 8
  %73 = call i64 @time_before_eq(i64 %71, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %10

76:                                               ; preds = %69
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @rxrpc_reduce_conn_timer(%struct.rxrpc_connection* %80, i64 %81)
  br label %83

83:                                               ; preds = %79, %76
  ret void
}

declare dso_local i32 @test_bit(i64, i32*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @test_and_clear_bit(i64, i32*) #1

declare dso_local i32 @rxrpc_conn_retransmit_call(%struct.rxrpc_connection*, i32*, i32) #1

declare dso_local i64 @time_before_eq(i64, i64) #1

declare dso_local i32 @rxrpc_reduce_conn_timer(%struct.rxrpc_connection*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
