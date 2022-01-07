; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_may_reuse_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_may_reuse_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i32, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.rxrpc_net* }
%struct.rxrpc_net = type { i64 }

@RXRPC_CONN_DONT_REUSE = common dso_local global i32 0, align 4
@rxrpc_client_conn_ids = common dso_local global i32 0, align 4
@RXRPC_CIDSHIFT = common dso_local global i32 0, align 4
@rxrpc_max_client_connections = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_connection*)* @rxrpc_may_reuse_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_may_reuse_conn(%struct.rxrpc_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rxrpc_connection*, align 8
  %4 = alloca %struct.rxrpc_net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %3, align 8
  %9 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %10 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.rxrpc_net*, %struct.rxrpc_net** %13, align 8
  store %struct.rxrpc_net* %14, %struct.rxrpc_net** %4, align 8
  %15 = load i32, i32* @RXRPC_CONN_DONT_REUSE, align 4
  %16 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %17 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %16, i32 0, i32 0
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %61

21:                                               ; preds = %1
  %22 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %23 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.rxrpc_net*, %struct.rxrpc_net** %4, align 8
  %27 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %56

31:                                               ; preds = %21
  %32 = call i32 @idr_get_cursor(i32* @rxrpc_client_conn_ids)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %34 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @RXRPC_CIDSHIFT, align 4
  %38 = ashr i32 %36, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %44, %31
  %48 = load i32, i32* @rxrpc_max_client_connections, align 4
  %49 = mul nsw i32 %48, 4
  %50 = call i32 @max(i32 %49, i32 1024)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %56

55:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %62

56:                                               ; preds = %54, %30
  %57 = load i32, i32* @RXRPC_CONN_DONT_REUSE, align 4
  %58 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %59 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %58, i32 0, i32 0
  %60 = call i32 @set_bit(i32 %57, i32* %59)
  br label %61

61:                                               ; preds = %56, %20
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %55
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @idr_get_cursor(i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
