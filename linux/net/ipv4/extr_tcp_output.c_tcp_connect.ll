; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.tcp_sock = type { i64, i32, i64, i64, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.sock*)* }
%struct.TYPE_6__ = type { i64 }

@BPF_SOCK_OPS_TCP_CONNECT_CB = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@TCPHDR_SYN = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@TCP_MIB_ACTIVEOPENS = common dso_local global i32 0, align 4
@ICSK_TIME_RETRANS = common dso_local global i32 0, align 4
@TCP_RTO_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_connect(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tcp_sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = load i32, i32* @BPF_SOCK_OPS_TCP_CONNECT_CB, align 4
  %11 = call i32 @tcp_call_bpf(%struct.sock* %9, i32 %10, i32 0, i32* null)
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.TYPE_5__* @inet_csk(%struct.sock* %12)
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64 (%struct.sock*)*, i64 (%struct.sock*)** %16, align 8
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = call i64 %17(%struct.sock* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EHOSTUNREACH, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %146

24:                                               ; preds = %1
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = call i32 @tcp_connect_init(%struct.sock* %25)
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 5
  %29 = load %struct.sk_buff*, %struct.sk_buff** %28, align 8
  %30 = ptrtoint %struct.sk_buff* %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = call i32 @tcp_finish_connect(%struct.sock* %34, i32* null)
  store i32 0, i32* %2, align 4
  br label %146

36:                                               ; preds = %24
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = load %struct.sock*, %struct.sock** %3, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.sk_buff* @sk_stream_alloc_skb(%struct.sock* %37, i32 0, i32 %40, i32 1)
  store %struct.sk_buff* %41, %struct.sk_buff** %5, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load i32, i32* @ENOBUFS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %146

51:                                               ; preds = %36
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %54 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = trunc i64 %55 to i32
  %58 = load i32, i32* @TCPHDR_SYN, align 4
  %59 = call i32 @tcp_init_nondata_skb(%struct.sk_buff* %52, i32 %57, i32 %58)
  %60 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %61 = call i32 @tcp_mstamp_refresh(%struct.tcp_sock* %60)
  %62 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %63 = call i32 @tcp_time_stamp(%struct.tcp_sock* %62)
  %64 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %65 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.sock*, %struct.sock** %3, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call i32 @tcp_connect_queue_skb(%struct.sock* %66, %struct.sk_buff* %67)
  %69 = load %struct.sock*, %struct.sock** %3, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call i32 @tcp_ecn_send_syn(%struct.sock* %69, %struct.sk_buff* %70)
  %72 = load %struct.sock*, %struct.sock** %3, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 1
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = call i32 @tcp_rbtree_insert(i32* %73, %struct.sk_buff* %74)
  %76 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %77 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %51
  %81 = load %struct.sock*, %struct.sock** %3, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = call i32 @tcp_send_syn_data(%struct.sock* %81, %struct.sk_buff* %82)
  br label %91

84:                                               ; preds = %51
  %85 = load %struct.sock*, %struct.sock** %3, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = load %struct.sock*, %struct.sock** %3, align 8
  %88 = getelementptr inbounds %struct.sock, %struct.sock* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @tcp_transmit_skb(%struct.sock* %85, %struct.sk_buff* %86, i32 1, i32 %89)
  br label %91

91:                                               ; preds = %84, %80
  %92 = phi i32 [ %83, %80 ], [ %90, %84 ]
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @ECONNREFUSED, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %146

99:                                               ; preds = %91
  %100 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %101 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %104 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @WRITE_ONCE(i32 %102, i64 %105)
  %107 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %108 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %111 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.sock*, %struct.sock** %3, align 8
  %113 = call %struct.sk_buff* @tcp_send_head(%struct.sock* %112)
  store %struct.sk_buff* %113, %struct.sk_buff** %5, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %115 = ptrtoint %struct.sk_buff* %114 to i32
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %99
  %119 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %120 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %122)
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @WRITE_ONCE(i32 %121, i64 %125)
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %127)
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %132 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %118, %99
  %134 = load %struct.sock*, %struct.sock** %3, align 8
  %135 = call i32 @sock_net(%struct.sock* %134)
  %136 = load i32, i32* @TCP_MIB_ACTIVEOPENS, align 4
  %137 = call i32 @TCP_INC_STATS(i32 %135, i32 %136)
  %138 = load %struct.sock*, %struct.sock** %3, align 8
  %139 = load i32, i32* @ICSK_TIME_RETRANS, align 4
  %140 = load %struct.sock*, %struct.sock** %3, align 8
  %141 = call %struct.TYPE_5__* @inet_csk(%struct.sock* %140)
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @TCP_RTO_MAX, align 4
  %145 = call i32 @inet_csk_reset_xmit_timer(%struct.sock* %138, i32 %139, i32 %143, i32 %144)
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %133, %97, %48, %33, %21
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_call_bpf(%struct.sock*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @tcp_connect_init(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tcp_finish_connect(%struct.sock*, i32*) #1

declare dso_local %struct.sk_buff* @sk_stream_alloc_skb(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @tcp_init_nondata_skb(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @tcp_mstamp_refresh(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_time_stamp(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_connect_queue_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_ecn_send_syn(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_rbtree_insert(i32*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_send_syn_data(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_transmit_skb(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i64) #1

declare dso_local %struct.sk_buff* @tcp_send_head(%struct.sock*) #1

declare dso_local %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @TCP_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @inet_csk_reset_xmit_timer(%struct.sock*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
