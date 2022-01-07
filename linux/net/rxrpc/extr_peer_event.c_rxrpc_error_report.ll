; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_peer_event.c_rxrpc_error_report.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_peer_event.c_rxrpc_error_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sock_exterr_skb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.sockaddr_rxrpc = type { i32 }
%struct.rxrpc_local = type { i32 }
%struct.rxrpc_peer = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p{%d}\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"UDP socket errqueue empty\00", align 1
@rxrpc_skb_received = common dso_local global i32 0, align 4
@SO_EE_ORIGIN_TIMESTAMPING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"UDP empty message\00", align 1
@rxrpc_skb_freed = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c" [no peer]\00", align 1
@SO_EE_ORIGIN_ICMP = common dso_local global i64 0, align 8
@ICMP_DEST_UNREACH = common dso_local global i64 0, align 8
@ICMP_FRAG_NEEDED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c" [MTU update]\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxrpc_error_report(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sock_exterr_skb*, align 8
  %4 = alloca %struct.sockaddr_rxrpc, align 4
  %5 = alloca %struct.rxrpc_local*, align 8
  %6 = alloca %struct.rxrpc_peer*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.rxrpc_local* @rcu_dereference_sk_user_data(%struct.sock* %9)
  store %struct.rxrpc_local* %10, %struct.rxrpc_local** %5, align 8
  %11 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %12 = icmp ne %struct.rxrpc_local* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 (...) @rcu_read_unlock()
  br label %124

19:                                               ; preds = %1
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %22 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.sock* %20, i32 %23)
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = call i32 @sock_error(%struct.sock* %25)
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = call %struct.sk_buff* @sock_dequeue_err_skb(%struct.sock* %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %7, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = call i32 (...) @rcu_read_unlock()
  %33 = call i32 @_leave(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %124

34:                                               ; preds = %19
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = load i32, i32* @rxrpc_skb_received, align 4
  %37 = call i32 @rxrpc_new_skb(%struct.sk_buff* %35, i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = call %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff* %38)
  store %struct.sock_exterr_skb* %39, %struct.sock_exterr_skb** %3, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %34
  %45 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %3, align 8
  %46 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SO_EE_ORIGIN_TIMESTAMPING, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = call i32 @_leave(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %53 = call i32 (...) @rcu_read_unlock()
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = load i32, i32* @rxrpc_skb_freed, align 4
  %56 = call i32 @rxrpc_free_skb(%struct.sk_buff* %54, i32 %55)
  br label %124

57:                                               ; preds = %44, %34
  %58 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = call %struct.rxrpc_peer* @rxrpc_lookup_peer_icmp_rcu(%struct.rxrpc_local* %58, %struct.sk_buff* %59, %struct.sockaddr_rxrpc* %4)
  store %struct.rxrpc_peer* %60, %struct.rxrpc_peer** %6, align 8
  %61 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %6, align 8
  %62 = icmp ne %struct.rxrpc_peer* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %6, align 8
  %65 = call i32 @rxrpc_get_peer_maybe(%struct.rxrpc_peer* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store %struct.rxrpc_peer* null, %struct.rxrpc_peer** %6, align 8
  br label %68

68:                                               ; preds = %67, %63, %57
  %69 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %6, align 8
  %70 = icmp ne %struct.rxrpc_peer* %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = call i32 (...) @rcu_read_unlock()
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = load i32, i32* @rxrpc_skb_freed, align 4
  %75 = call i32 @rxrpc_free_skb(%struct.sk_buff* %73, i32 %74)
  %76 = call i32 @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %124

77:                                               ; preds = %68
  %78 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %6, align 8
  %79 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %3, align 8
  %80 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %79, i32 0, i32 0
  %81 = call i32 @trace_rxrpc_rx_icmp(%struct.rxrpc_peer* %78, %struct.TYPE_2__* %80, %struct.sockaddr_rxrpc* %4)
  %82 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %3, align 8
  %83 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SO_EE_ORIGIN_ICMP, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %113

88:                                               ; preds = %77
  %89 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %3, align 8
  %90 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ICMP_DEST_UNREACH, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %88
  %96 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %3, align 8
  %97 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ICMP_FRAG_NEEDED, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %95
  %103 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %6, align 8
  %104 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %3, align 8
  %105 = call i32 @rxrpc_adjust_mtu(%struct.rxrpc_peer* %103, %struct.sock_exterr_skb* %104)
  %106 = call i32 (...) @rcu_read_unlock()
  %107 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %108 = load i32, i32* @rxrpc_skb_freed, align 4
  %109 = call i32 @rxrpc_free_skb(%struct.sk_buff* %107, i32 %108)
  %110 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %6, align 8
  %111 = call i32 @rxrpc_put_peer(%struct.rxrpc_peer* %110)
  %112 = call i32 @_leave(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %124

113:                                              ; preds = %95, %88, %77
  %114 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %6, align 8
  %115 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %3, align 8
  %116 = call i32 @rxrpc_store_error(%struct.rxrpc_peer* %114, %struct.sock_exterr_skb* %115)
  %117 = call i32 (...) @rcu_read_unlock()
  %118 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %119 = load i32, i32* @rxrpc_skb_freed, align 4
  %120 = call i32 @rxrpc_free_skb(%struct.sk_buff* %118, i32 %119)
  %121 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %6, align 8
  %122 = call i32 @rxrpc_put_peer(%struct.rxrpc_peer* %121)
  %123 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  br label %124

124:                                              ; preds = %113, %102, %71, %51, %31, %17
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rxrpc_local* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @_enter(i8*, %struct.sock*, i32) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local %struct.sk_buff* @sock_dequeue_err_skb(%struct.sock*) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local i32 @rxrpc_new_skb(%struct.sk_buff*, i32) #1

declare dso_local %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff*) #1

declare dso_local i32 @rxrpc_free_skb(%struct.sk_buff*, i32) #1

declare dso_local %struct.rxrpc_peer* @rxrpc_lookup_peer_icmp_rcu(%struct.rxrpc_local*, %struct.sk_buff*, %struct.sockaddr_rxrpc*) #1

declare dso_local i32 @rxrpc_get_peer_maybe(%struct.rxrpc_peer*) #1

declare dso_local i32 @trace_rxrpc_rx_icmp(%struct.rxrpc_peer*, %struct.TYPE_2__*, %struct.sockaddr_rxrpc*) #1

declare dso_local i32 @rxrpc_adjust_mtu(%struct.rxrpc_peer*, %struct.sock_exterr_skb*) #1

declare dso_local i32 @rxrpc_put_peer(%struct.rxrpc_peer*) #1

declare dso_local i32 @rxrpc_store_error(%struct.rxrpc_peer*, %struct.sock_exterr_skb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
