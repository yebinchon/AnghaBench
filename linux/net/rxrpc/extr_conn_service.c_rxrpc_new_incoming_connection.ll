; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_service.c_rxrpc_new_incoming_connection.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_service.c_rxrpc_new_incoming_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_sock = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.rxrpc_connection = type { i64, %struct.TYPE_8__, i32, %struct.TYPE_7__, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RXRPC_CIDMASK = common dso_local global i32 0, align 4
@RXRPC_CONN_SERVICE_UNSECURED = common dso_local global i32 0, align 4
@RXRPC_CONN_SERVICE = common dso_local global i32 0, align 4
@RXRPC_USERSTATUS_SERVICE_UPGRADE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"CONNECTION new %d {%x}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxrpc_new_incoming_connection(%struct.rxrpc_sock* %0, %struct.rxrpc_connection* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.rxrpc_sock*, align 8
  %5 = alloca %struct.rxrpc_connection*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rxrpc_skb_priv*, align 8
  store %struct.rxrpc_sock* %0, %struct.rxrpc_sock** %4, align 8
  store %struct.rxrpc_connection* %1, %struct.rxrpc_connection** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %9 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %8)
  store %struct.rxrpc_skb_priv* %9, %struct.rxrpc_skb_priv** %7, align 8
  %10 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %12 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %16 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %19 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RXRPC_CIDMASK, align 4
  %23 = and i32 %21, %22
  %24 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %25 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %28 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %32 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %35 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %39 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %41 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %45 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %47 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %49 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %3
  %53 = load i32, i32* @RXRPC_CONN_SERVICE_UNSECURED, align 4
  %54 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %55 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  br label %60

56:                                               ; preds = %3
  %57 = load i32, i32* @RXRPC_CONN_SERVICE, align 4
  %58 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %59 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %52
  %61 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %62 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RXRPC_USERSTATUS_SERVICE_UPGRADE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %60
  %68 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %69 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %4, align 8
  %72 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %70, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %67
  %77 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %4, align 8
  %78 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %82 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %76, %67, %60
  %84 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %85 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %89 = call i32 @rxrpc_publish_service_conn(i32 %87, %struct.rxrpc_connection* %88)
  %90 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %91 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %94 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @_net(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %96)
  ret void
}

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @rxrpc_publish_service_conn(i32, %struct.rxrpc_connection*) #1

declare dso_local i32 @_net(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
