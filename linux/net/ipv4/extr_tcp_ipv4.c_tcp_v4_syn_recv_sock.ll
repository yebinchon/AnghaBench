; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_syn_recv_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_syn_recv_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.dst_entry = type { i32 }
%struct.request_sock = type { i32 }
%struct.inet_request_sock = type { i32*, i32, i32, i32 }
%struct.inet_sock = type { i32*, i32, i32, i32, i32, i32, i32 }
%struct.tcp_sock = type { i32 }
%struct.ip_options_rcu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@LINUX_MIB_LISTENOVERFLOWS = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NETIF_F_GSO_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @tcp_v4_syn_recv_sock(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2, %struct.dst_entry* %3, %struct.request_sock* %4, i32* %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.request_sock*, align 8
  %11 = alloca %struct.dst_entry*, align 8
  %12 = alloca %struct.request_sock*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.inet_request_sock*, align 8
  %15 = alloca %struct.inet_sock*, align 8
  %16 = alloca %struct.tcp_sock*, align 8
  %17 = alloca %struct.sock*, align 8
  %18 = alloca %struct.ip_options_rcu*, align 8
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.request_sock* %2, %struct.request_sock** %10, align 8
  store %struct.dst_entry* %3, %struct.dst_entry** %11, align 8
  store %struct.request_sock* %4, %struct.request_sock** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load %struct.sock*, %struct.sock** %8, align 8
  %20 = call i64 @sk_acceptq_is_full(%struct.sock* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  br label %164

23:                                               ; preds = %6
  %24 = load %struct.sock*, %struct.sock** %8, align 8
  %25 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %27 = call %struct.sock* @tcp_create_openreq_child(%struct.sock* %24, %struct.request_sock* %25, %struct.sk_buff* %26)
  store %struct.sock* %27, %struct.sock** %17, align 8
  %28 = load %struct.sock*, %struct.sock** %17, align 8
  %29 = icmp ne %struct.sock* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %169

31:                                               ; preds = %23
  %32 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %33 = load %struct.sock*, %struct.sock** %17, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sock*, %struct.sock** %17, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %37 = call i32 @inet_sk_rx_dst_set(%struct.sock* %35, %struct.sk_buff* %36)
  %38 = load %struct.sock*, %struct.sock** %17, align 8
  %39 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %38)
  store %struct.tcp_sock* %39, %struct.tcp_sock** %16, align 8
  %40 = load %struct.sock*, %struct.sock** %17, align 8
  %41 = call %struct.inet_sock* @inet_sk(%struct.sock* %40)
  store %struct.inet_sock* %41, %struct.inet_sock** %15, align 8
  %42 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %43 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %42)
  store %struct.inet_request_sock* %43, %struct.inet_request_sock** %14, align 8
  %44 = load %struct.sock*, %struct.sock** %17, align 8
  %45 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %46 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @sk_daddr_set(%struct.sock* %44, i32 %47)
  %49 = load %struct.sock*, %struct.sock** %17, align 8
  %50 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %51 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @sk_rcv_saddr_set(%struct.sock* %49, i32 %52)
  %54 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %55 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sock*, %struct.sock** %17, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %60 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.inet_sock*, %struct.inet_sock** %15, align 8
  %63 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  %64 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %65 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call %struct.ip_options_rcu* @rcu_dereference(i32* %66)
  store %struct.ip_options_rcu* %67, %struct.ip_options_rcu** %18, align 8
  %68 = load %struct.inet_sock*, %struct.inet_sock** %15, align 8
  %69 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %18, align 8
  %72 = call i32 @RCU_INIT_POINTER(i32* %70, %struct.ip_options_rcu* %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %74 = call i32 @inet_iif(%struct.sk_buff* %73)
  %75 = load %struct.inet_sock*, %struct.inet_sock** %15, align 8
  %76 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = call %struct.TYPE_5__* @ip_hdr(%struct.sk_buff* %77)
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.inet_sock*, %struct.inet_sock** %15, align 8
  %82 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = call %struct.TYPE_5__* @ip_hdr(%struct.sk_buff* %83)
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.inet_sock*, %struct.inet_sock** %15, align 8
  %88 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.sock*, %struct.sock** %17, align 8
  %90 = call %struct.TYPE_6__* @inet_csk(%struct.sock* %89)
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %18, align 8
  %93 = icmp ne %struct.ip_options_rcu* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %31
  %95 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %18, align 8
  %96 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.sock*, %struct.sock** %17, align 8
  %100 = call %struct.TYPE_6__* @inet_csk(%struct.sock* %99)
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i64 %98, i64* %101, align 8
  br label %102

102:                                              ; preds = %94, %31
  %103 = call i32 (...) @prandom_u32()
  %104 = load %struct.inet_sock*, %struct.inet_sock** %15, align 8
  %105 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %107 = icmp ne %struct.dst_entry* %106, null
  br i1 %107, label %117, label %108

108:                                              ; preds = %102
  %109 = load %struct.sock*, %struct.sock** %8, align 8
  %110 = load %struct.sock*, %struct.sock** %17, align 8
  %111 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %112 = call %struct.dst_entry* @inet_csk_route_child_sock(%struct.sock* %109, %struct.sock* %110, %struct.request_sock* %111)
  store %struct.dst_entry* %112, %struct.dst_entry** %11, align 8
  %113 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %114 = icmp ne %struct.dst_entry* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %108
  br label %175

116:                                              ; preds = %108
  br label %118

117:                                              ; preds = %102
  br label %118

118:                                              ; preds = %117, %116
  %119 = load %struct.sock*, %struct.sock** %17, align 8
  %120 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %121 = call i32 @sk_setup_caps(%struct.sock* %119, %struct.dst_entry* %120)
  %122 = load %struct.sock*, %struct.sock** %17, align 8
  %123 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %124 = call i32 @tcp_ca_openreq_child(%struct.sock* %122, %struct.dst_entry* %123)
  %125 = load %struct.sock*, %struct.sock** %17, align 8
  %126 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %127 = call i32 @dst_mtu(%struct.dst_entry* %126)
  %128 = call i32 @tcp_sync_mss(%struct.sock* %125, i32 %127)
  %129 = load %struct.sock*, %struct.sock** %8, align 8
  %130 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %129)
  %131 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %132 = call i32 @dst_metric_advmss(%struct.dst_entry* %131)
  %133 = call i32 @tcp_mss_clamp(%struct.tcp_sock* %130, i32 %132)
  %134 = load %struct.tcp_sock*, %struct.tcp_sock** %16, align 8
  %135 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load %struct.sock*, %struct.sock** %17, align 8
  %137 = call i32 @tcp_initialize_rcv_mss(%struct.sock* %136)
  %138 = load %struct.sock*, %struct.sock** %8, align 8
  %139 = load %struct.sock*, %struct.sock** %17, align 8
  %140 = call i64 @__inet_inherit_port(%struct.sock* %138, %struct.sock* %139)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %118
  br label %175

143:                                              ; preds = %118
  %144 = load %struct.sock*, %struct.sock** %17, align 8
  %145 = load %struct.request_sock*, %struct.request_sock** %12, align 8
  %146 = call i32 @req_to_sk(%struct.request_sock* %145)
  %147 = call i32 @inet_ehash_nolisten(%struct.sock* %144, i32 %146)
  %148 = load i32*, i32** %13, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32*, i32** %13, align 8
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @likely(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %143
  %154 = load %struct.tcp_sock*, %struct.tcp_sock** %16, align 8
  %155 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %156 = call i32 @tcp_move_syn(%struct.tcp_sock* %154, %struct.request_sock* %155)
  %157 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %158 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %157, i32 0, i32 0
  store i32* null, i32** %158, align 8
  br label %162

159:                                              ; preds = %143
  %160 = load %struct.inet_sock*, %struct.inet_sock** %15, align 8
  %161 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %160, i32 0, i32 0
  store i32* null, i32** %161, align 8
  br label %162

162:                                              ; preds = %159, %153
  %163 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %163, %struct.sock** %7, align 8
  br label %182

164:                                              ; preds = %22
  %165 = load %struct.sock*, %struct.sock** %8, align 8
  %166 = call i32 @sock_net(%struct.sock* %165)
  %167 = load i32, i32* @LINUX_MIB_LISTENOVERFLOWS, align 4
  %168 = call i32 @NET_INC_STATS(i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %164, %30
  %170 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %171 = call i32 @dst_release(%struct.dst_entry* %170)
  br label %172

172:                                              ; preds = %175, %169
  %173 = load %struct.sock*, %struct.sock** %8, align 8
  %174 = call i32 @tcp_listendrop(%struct.sock* %173)
  store %struct.sock* null, %struct.sock** %7, align 8
  br label %182

175:                                              ; preds = %142, %115
  %176 = load %struct.inet_sock*, %struct.inet_sock** %15, align 8
  %177 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %176, i32 0, i32 0
  store i32* null, i32** %177, align 8
  %178 = load %struct.sock*, %struct.sock** %17, align 8
  %179 = call i32 @inet_csk_prepare_forced_close(%struct.sock* %178)
  %180 = load %struct.sock*, %struct.sock** %17, align 8
  %181 = call i32 @tcp_done(%struct.sock* %180)
  br label %172

182:                                              ; preds = %172, %162
  %183 = load %struct.sock*, %struct.sock** %7, align 8
  ret %struct.sock* %183
}

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local %struct.sock* @tcp_create_openreq_child(%struct.sock*, %struct.request_sock*, %struct.sk_buff*) #1

declare dso_local i32 @inet_sk_rx_dst_set(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local i32 @sk_daddr_set(%struct.sock*, i32) #1

declare dso_local i32 @sk_rcv_saddr_set(%struct.sock*, i32) #1

declare dso_local %struct.ip_options_rcu* @rcu_dereference(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32*, %struct.ip_options_rcu*) #1

declare dso_local i32 @inet_iif(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local %struct.dst_entry* @inet_csk_route_child_sock(%struct.sock*, %struct.sock*, %struct.request_sock*) #1

declare dso_local i32 @sk_setup_caps(%struct.sock*, %struct.dst_entry*) #1

declare dso_local i32 @tcp_ca_openreq_child(%struct.sock*, %struct.dst_entry*) #1

declare dso_local i32 @tcp_sync_mss(%struct.sock*, i32) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @tcp_mss_clamp(%struct.tcp_sock*, i32) #1

declare dso_local i32 @dst_metric_advmss(%struct.dst_entry*) #1

declare dso_local i32 @tcp_initialize_rcv_mss(%struct.sock*) #1

declare dso_local i64 @__inet_inherit_port(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @inet_ehash_nolisten(%struct.sock*, i32) #1

declare dso_local i32 @req_to_sk(%struct.request_sock*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @tcp_move_syn(%struct.tcp_sock*, %struct.request_sock*) #1

declare dso_local i32 @NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @tcp_listendrop(%struct.sock*) #1

declare dso_local i32 @inet_csk_prepare_forced_close(%struct.sock*) #1

declare dso_local i32 @tcp_done(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
