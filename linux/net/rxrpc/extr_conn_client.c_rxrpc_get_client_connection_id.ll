; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_get_client_connection_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_get_client_connection_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { %struct.TYPE_4__, i32, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.rxrpc_net* }
%struct.rxrpc_net = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rxrpc_conn_id_lock = common dso_local global i32 0, align 4
@rxrpc_client_conn_ids = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@RXRPC_CIDSHIFT = common dso_local global i32 0, align 4
@RXRPC_CONN_HAS_IDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c" [CID %x]\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_connection*, i32)* @rxrpc_get_client_connection_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_get_client_connection_id(%struct.rxrpc_connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxrpc_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rxrpc_net*, align 8
  %7 = alloca i32, align 4
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %9 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.rxrpc_net*, %struct.rxrpc_net** %12, align 8
  store %struct.rxrpc_net* %13, %struct.rxrpc_net** %6, align 8
  %14 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @idr_preload(i32 %15)
  %17 = call i32 @spin_lock(i32* @rxrpc_conn_id_lock)
  %18 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %19 = load i32, i32* @GFP_NOWAIT, align 4
  %20 = call i32 @idr_alloc_cyclic(i32* @rxrpc_client_conn_ids, %struct.rxrpc_connection* %18, i32 1, i32 1073741824, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %48

24:                                               ; preds = %2
  %25 = call i32 @spin_unlock(i32* @rxrpc_conn_id_lock)
  %26 = call i32 (...) @idr_preload_end()
  %27 = load %struct.rxrpc_net*, %struct.rxrpc_net** %6, align 8
  %28 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %31 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @RXRPC_CIDSHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %37 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* @RXRPC_CONN_HAS_IDR, align 4
  %40 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %41 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %40, i32 0, i32 1
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  %43 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %44 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @_leave(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i32 0, i32* %3, align 4
  br label %54

48:                                               ; preds = %23
  %49 = call i32 @spin_unlock(i32* @rxrpc_conn_id_lock)
  %50 = call i32 (...) @idr_preload_end()
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %48, %24
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc_cyclic(i32*, %struct.rxrpc_connection*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
