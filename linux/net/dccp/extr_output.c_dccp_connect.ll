; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_output.c_dccp_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_output.c_dccp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_sock = type { i32, i32 }
%struct.dst_entry = type { i32 }
%struct.inet_connection_sock = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@SOCK_DONE = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@DCCP_PKT_REQUEST = common dso_local global i32 0, align 4
@DCCP_MIB_ACTIVEOPENS = common dso_local global i32 0, align 4
@ICSK_TIME_RETRANS = common dso_local global i32 0, align 4
@DCCP_RTO_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_connect(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.dccp_sock*, align 8
  %6 = alloca %struct.dst_entry*, align 8
  %7 = alloca %struct.inet_connection_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %8)
  store %struct.dccp_sock* %9, %struct.dccp_sock** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.dst_entry* @__sk_dst_get(%struct.sock* %10)
  store %struct.dst_entry* %11, %struct.dst_entry** %6, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %12)
  store %struct.inet_connection_sock* %13, %struct.inet_connection_sock** %7, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = load i32, i32* @SOCK_DONE, align 4
  %18 = call i32 @sock_reset_flag(%struct.sock* %16, i32 %17)
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %21 = call i32 @dst_mtu(%struct.dst_entry* %20)
  %22 = call i32 @dccp_sync_mss(%struct.sock* %19, i32 %21)
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %23)
  %25 = call i64 @dccp_feat_finalise_settings(%struct.dccp_sock* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @EPROTO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %81

30:                                               ; preds = %1
  %31 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %32 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %35 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.sk_buff* @alloc_skb(i32 %40, i32 %43)
  store %struct.sk_buff* %44, %struct.sk_buff** %4, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = icmp eq %struct.sk_buff* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %30
  %51 = load i32, i32* @ENOBUFS, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %81

53:                                               ; preds = %30
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = load %struct.sock*, %struct.sock** %3, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @skb_reserve(%struct.sk_buff* %54, i32 %59)
  %61 = load i32, i32* @DCCP_PKT_REQUEST, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load %struct.sock*, %struct.sock** %3, align 8
  %66 = load %struct.sock*, %struct.sock** %3, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i32 @dccp_skb_entail(%struct.sock* %66, %struct.sk_buff* %67)
  %69 = call i32 @dccp_transmit_skb(%struct.sock* %65, i32 %68)
  %70 = load i32, i32* @DCCP_MIB_ACTIVEOPENS, align 4
  %71 = call i32 @DCCP_INC_STATS(i32 %70)
  %72 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %73 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.sock*, %struct.sock** %3, align 8
  %75 = load i32, i32* @ICSK_TIME_RETRANS, align 4
  %76 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %77 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @DCCP_RTO_MAX, align 4
  %80 = call i32 @inet_csk_reset_xmit_timer(%struct.sock* %74, i32 %75, i32 %78, i32 %79)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %53, %50, %27
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.dst_entry* @__sk_dst_get(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @dccp_sync_mss(%struct.sock*, i32) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i64 @dccp_feat_finalise_settings(%struct.dccp_sock*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dccp_transmit_skb(%struct.sock*, i32) #1

declare dso_local i32 @dccp_skb_entail(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @DCCP_INC_STATS(i32) #1

declare dso_local i32 @inet_csk_reset_xmit_timer(%struct.sock*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
