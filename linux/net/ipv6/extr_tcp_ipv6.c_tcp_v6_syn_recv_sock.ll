; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_syn_recv_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_syn_recv_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.dst_entry = type { i32 }
%struct.request_sock = type { i32 }
%struct.inet_request_sock = type { i32*, %struct.ipv6_txoptions*, i32, i32, i32 }
%struct.ipv6_txoptions = type { i64, i64 }
%struct.ipv6_pinfo = type { i32*, i32*, i64, i64, i64, i32, i32, %struct.TYPE_7__, i32*, i32*, i32*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.inet_sock = type { i8*, i8*, i8*, i32*, i8* }
%struct.tcp_sock = type { i32, i32* }
%struct.flowi6 = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ipv6_mapped = common dso_local global i32 0, align 4
@tcp_v4_do_rcv = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@LOOPBACK4_IPV6 = common dso_local global i8* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@LINUX_MIB_LISTENOVERFLOWS = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@tcp_sock_ipv6_mapped_specific = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, %struct.dst_entry*, %struct.request_sock*, i32*)* @tcp_v6_syn_recv_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @tcp_v6_syn_recv_sock(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2, %struct.dst_entry* %3, %struct.request_sock* %4, i32* %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.request_sock*, align 8
  %11 = alloca %struct.dst_entry*, align 8
  %12 = alloca %struct.request_sock*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.inet_request_sock*, align 8
  %15 = alloca %struct.ipv6_pinfo*, align 8
  %16 = alloca %struct.ipv6_pinfo*, align 8
  %17 = alloca %struct.ipv6_txoptions*, align 8
  %18 = alloca %struct.inet_sock*, align 8
  %19 = alloca %struct.tcp_sock*, align 8
  %20 = alloca %struct.sock*, align 8
  %21 = alloca %struct.flowi6, align 4
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.request_sock* %2, %struct.request_sock** %10, align 8
  store %struct.dst_entry* %3, %struct.dst_entry** %11, align 8
  store %struct.request_sock* %4, %struct.request_sock** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load %struct.sock*, %struct.sock** %8, align 8
  %23 = call i8* @tcp_inet6_sk(%struct.sock* %22)
  %24 = bitcast i8* %23 to %struct.ipv6_pinfo*
  store %struct.ipv6_pinfo* %24, %struct.ipv6_pinfo** %16, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @ETH_P_IP, align 4
  %29 = call i64 @htons(i32 %28)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %106

31:                                               ; preds = %6
  %32 = load %struct.sock*, %struct.sock** %8, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %35 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %36 = load %struct.request_sock*, %struct.request_sock** %12, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = call %struct.sock* @tcp_v4_syn_recv_sock(%struct.sock* %32, %struct.sk_buff* %33, %struct.request_sock* %34, %struct.dst_entry* %35, %struct.request_sock* %36, i32* %37)
  store %struct.sock* %38, %struct.sock** %20, align 8
  %39 = load %struct.sock*, %struct.sock** %20, align 8
  %40 = icmp ne %struct.sock* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  store %struct.sock* null, %struct.sock** %7, align 8
  br label %358

42:                                               ; preds = %31
  %43 = load %struct.sock*, %struct.sock** %20, align 8
  %44 = call i8* @tcp_inet6_sk(%struct.sock* %43)
  %45 = load %struct.sock*, %struct.sock** %20, align 8
  %46 = call %struct.inet_sock* @inet_sk(%struct.sock* %45)
  %47 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %46, i32 0, i32 4
  store i8* %44, i8** %47, align 8
  %48 = load %struct.sock*, %struct.sock** %20, align 8
  %49 = call %struct.inet_sock* @inet_sk(%struct.sock* %48)
  store %struct.inet_sock* %49, %struct.inet_sock** %18, align 8
  %50 = load %struct.sock*, %struct.sock** %20, align 8
  %51 = call i8* @tcp_inet6_sk(%struct.sock* %50)
  %52 = bitcast i8* %51 to %struct.ipv6_pinfo*
  store %struct.ipv6_pinfo* %52, %struct.ipv6_pinfo** %15, align 8
  %53 = load %struct.sock*, %struct.sock** %20, align 8
  %54 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %53)
  store %struct.tcp_sock* %54, %struct.tcp_sock** %19, align 8
  %55 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %56 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %57 = call i32 @memcpy(%struct.ipv6_pinfo* %55, %struct.ipv6_pinfo* %56, i32 88)
  %58 = load %struct.sock*, %struct.sock** %20, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %62 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %61, i32 0, i32 11
  store i32 %60, i32* %62, align 8
  %63 = load %struct.sock*, %struct.sock** %20, align 8
  %64 = call %struct.TYPE_10__* @inet_csk(%struct.sock* %63)
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  store i32* @ipv6_mapped, i32** %65, align 8
  %66 = load i32, i32* @tcp_v4_do_rcv, align 4
  %67 = load %struct.sock*, %struct.sock** %20, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %70 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %69, i32 0, i32 10
  store i32* null, i32** %70, align 8
  %71 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %72 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %71, i32 0, i32 9
  store i32* null, i32** %72, align 8
  %73 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %74 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %73, i32 0, i32 8
  store i32* null, i32** %74, align 8
  %75 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %76 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %75, i32 0, i32 0
  store i32* null, i32** %76, align 8
  %77 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %78 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %77, i32 0, i32 1
  store i32* null, i32** %78, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %80 = call i32 @inet_iif(%struct.sk_buff* %79)
  %81 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %82 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = call %struct.TYPE_9__* @ip_hdr(%struct.sk_buff* %83)
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %88 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 8
  %89 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %90 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %89, i32 0, i32 4
  store i64 0, i64* %90, align 8
  %91 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %92 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %42
  %96 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %97 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %95, %42
  %99 = load %struct.sock*, %struct.sock** %20, align 8
  %100 = load %struct.sock*, %struct.sock** %20, align 8
  %101 = call %struct.TYPE_10__* @inet_csk(%struct.sock* %100)
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @tcp_sync_mss(%struct.sock* %99, i32 %103)
  %105 = load %struct.sock*, %struct.sock** %20, align 8
  store %struct.sock* %105, %struct.sock** %7, align 8
  br label %358

106:                                              ; preds = %6
  %107 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %108 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %107)
  store %struct.inet_request_sock* %108, %struct.inet_request_sock** %14, align 8
  %109 = load %struct.sock*, %struct.sock** %8, align 8
  %110 = call i64 @sk_acceptq_is_full(%struct.sock* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %347

113:                                              ; preds = %106
  %114 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %115 = icmp ne %struct.dst_entry* %114, null
  br i1 %115, label %125, label %116

116:                                              ; preds = %113
  %117 = load %struct.sock*, %struct.sock** %8, align 8
  %118 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %119 = load i32, i32* @IPPROTO_TCP, align 4
  %120 = call %struct.dst_entry* @inet6_csk_route_req(%struct.sock* %117, %struct.flowi6* %21, %struct.request_sock* %118, i32 %119)
  store %struct.dst_entry* %120, %struct.dst_entry** %11, align 8
  %121 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %122 = icmp ne %struct.dst_entry* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %116
  br label %355

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %113
  %126 = load %struct.sock*, %struct.sock** %8, align 8
  %127 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %129 = call %struct.sock* @tcp_create_openreq_child(%struct.sock* %126, %struct.request_sock* %127, %struct.sk_buff* %128)
  store %struct.sock* %129, %struct.sock** %20, align 8
  %130 = load %struct.sock*, %struct.sock** %20, align 8
  %131 = icmp ne %struct.sock* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %125
  br label %352

133:                                              ; preds = %125
  %134 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %135 = load %struct.sock*, %struct.sock** %20, align 8
  %136 = getelementptr inbounds %struct.sock, %struct.sock* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load %struct.sock*, %struct.sock** %20, align 8
  %138 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %139 = call i32 @ip6_dst_store(%struct.sock* %137, %struct.dst_entry* %138, i32* null, i32* null)
  %140 = load %struct.sock*, %struct.sock** %20, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %142 = call i32 @inet6_sk_rx_dst_set(%struct.sock* %140, %struct.sk_buff* %141)
  %143 = load %struct.sock*, %struct.sock** %20, align 8
  %144 = call i8* @tcp_inet6_sk(%struct.sock* %143)
  %145 = load %struct.sock*, %struct.sock** %20, align 8
  %146 = call %struct.inet_sock* @inet_sk(%struct.sock* %145)
  %147 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %146, i32 0, i32 4
  store i8* %144, i8** %147, align 8
  %148 = load %struct.sock*, %struct.sock** %20, align 8
  %149 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %148)
  store %struct.tcp_sock* %149, %struct.tcp_sock** %19, align 8
  %150 = load %struct.sock*, %struct.sock** %20, align 8
  %151 = call %struct.inet_sock* @inet_sk(%struct.sock* %150)
  store %struct.inet_sock* %151, %struct.inet_sock** %18, align 8
  %152 = load %struct.sock*, %struct.sock** %20, align 8
  %153 = call i8* @tcp_inet6_sk(%struct.sock* %152)
  %154 = bitcast i8* %153 to %struct.ipv6_pinfo*
  store %struct.ipv6_pinfo* %154, %struct.ipv6_pinfo** %15, align 8
  %155 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %156 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %157 = call i32 @memcpy(%struct.ipv6_pinfo* %155, %struct.ipv6_pinfo* %156, i32 88)
  %158 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %159 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.sock*, %struct.sock** %20, align 8
  %162 = getelementptr inbounds %struct.sock, %struct.sock* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 4
  %163 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %164 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %167 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %166, i32 0, i32 11
  store i32 %165, i32* %167, align 8
  %168 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %169 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.sock*, %struct.sock** %20, align 8
  %172 = getelementptr inbounds %struct.sock, %struct.sock* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 4
  %173 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %174 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.sock*, %struct.sock** %20, align 8
  %177 = getelementptr inbounds %struct.sock, %struct.sock* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load %struct.inet_sock*, %struct.inet_sock** %18, align 8
  %179 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %178, i32 0, i32 3
  store i32* null, i32** %179, align 8
  %180 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %181 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %180, i32 0, i32 10
  store i32* null, i32** %181, align 8
  %182 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %183 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %182, i32 0, i32 9
  store i32* null, i32** %183, align 8
  %184 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %185 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %184, i32 0, i32 8
  store i32* null, i32** %185, align 8
  %186 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %187 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %186, i32 0, i32 7
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %191 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %190, i32 0, i32 7
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  store i32 %189, i32* %192, align 8
  %193 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %194 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %193, i32 0, i32 0
  store i32* null, i32** %194, align 8
  %195 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %196 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %195, i32 0, i32 1
  store i32* null, i32** %196, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %198 = call i32 @tcp_v6_iif(%struct.sk_buff* %197)
  %199 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %200 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %199, i32 0, i32 6
  store i32 %198, i32* %200, align 4
  %201 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %202 = call %struct.TYPE_8__* @ipv6_hdr(%struct.sk_buff* %201)
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %206 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %205, i32 0, i32 5
  store i32 %204, i32* %206, align 8
  %207 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %208 = call %struct.TYPE_8__* @ipv6_hdr(%struct.sk_buff* %207)
  %209 = call i64 @ip6_flowinfo(%struct.TYPE_8__* %208)
  %210 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %211 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %210, i32 0, i32 4
  store i64 %209, i64* %211, align 8
  %212 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %213 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %133
  %217 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %218 = call %struct.TYPE_8__* @ipv6_hdr(%struct.sk_buff* %217)
  %219 = call i64 @ip6_flowlabel(%struct.TYPE_8__* %218)
  %220 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %221 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %220, i32 0, i32 2
  store i64 %219, i64* %221, align 8
  br label %222

222:                                              ; preds = %216, %133
  %223 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %224 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %223, i32 0, i32 1
  %225 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %224, align 8
  store %struct.ipv6_txoptions* %225, %struct.ipv6_txoptions** %17, align 8
  %226 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %227 = icmp ne %struct.ipv6_txoptions* %226, null
  br i1 %227, label %233, label %228

228:                                              ; preds = %222
  %229 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %230 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = call %struct.ipv6_txoptions* @rcu_dereference(i32* %231)
  store %struct.ipv6_txoptions* %232, %struct.ipv6_txoptions** %17, align 8
  br label %233

233:                                              ; preds = %228, %222
  %234 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %235 = icmp ne %struct.ipv6_txoptions* %234, null
  br i1 %235, label %236, label %245

236:                                              ; preds = %233
  %237 = load %struct.sock*, %struct.sock** %20, align 8
  %238 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %239 = call %struct.ipv6_txoptions* @ipv6_dup_options(%struct.sock* %237, %struct.ipv6_txoptions* %238)
  store %struct.ipv6_txoptions* %239, %struct.ipv6_txoptions** %17, align 8
  %240 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %241 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %244 = call i32 @RCU_INIT_POINTER(i32* %242, %struct.ipv6_txoptions* %243)
  br label %245

245:                                              ; preds = %236, %233
  %246 = load %struct.sock*, %struct.sock** %20, align 8
  %247 = call %struct.TYPE_10__* @inet_csk(%struct.sock* %246)
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  store i64 0, i64* %248, align 8
  %249 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %250 = icmp ne %struct.ipv6_txoptions* %249, null
  br i1 %250, label %251, label %262

251:                                              ; preds = %245
  %252 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %253 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %256 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = add nsw i64 %254, %257
  %259 = load %struct.sock*, %struct.sock** %20, align 8
  %260 = call %struct.TYPE_10__* @inet_csk(%struct.sock* %259)
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  store i64 %258, i64* %261, align 8
  br label %262

262:                                              ; preds = %251, %245
  %263 = load %struct.sock*, %struct.sock** %20, align 8
  %264 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %265 = call i32 @tcp_ca_openreq_child(%struct.sock* %263, %struct.dst_entry* %264)
  %266 = load %struct.sock*, %struct.sock** %20, align 8
  %267 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %268 = call i32 @dst_mtu(%struct.dst_entry* %267)
  %269 = call i32 @tcp_sync_mss(%struct.sock* %266, i32 %268)
  %270 = load %struct.sock*, %struct.sock** %8, align 8
  %271 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %270)
  %272 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %273 = call i32 @dst_metric_advmss(%struct.dst_entry* %272)
  %274 = call i32 @tcp_mss_clamp(%struct.tcp_sock* %271, i32 %273)
  %275 = load %struct.tcp_sock*, %struct.tcp_sock** %19, align 8
  %276 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %275, i32 0, i32 0
  store i32 %274, i32* %276, align 8
  %277 = load %struct.sock*, %struct.sock** %20, align 8
  %278 = call i32 @tcp_initialize_rcv_mss(%struct.sock* %277)
  %279 = load i8*, i8** @LOOPBACK4_IPV6, align 8
  %280 = load %struct.inet_sock*, %struct.inet_sock** %18, align 8
  %281 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %280, i32 0, i32 1
  store i8* %279, i8** %281, align 8
  %282 = load %struct.inet_sock*, %struct.inet_sock** %18, align 8
  %283 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %282, i32 0, i32 2
  store i8* %279, i8** %283, align 8
  %284 = load i8*, i8** @LOOPBACK4_IPV6, align 8
  %285 = load %struct.inet_sock*, %struct.inet_sock** %18, align 8
  %286 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %285, i32 0, i32 0
  store i8* %284, i8** %286, align 8
  %287 = load %struct.sock*, %struct.sock** %8, align 8
  %288 = load %struct.sock*, %struct.sock** %20, align 8
  %289 = call i64 @__inet_inherit_port(%struct.sock* %287, %struct.sock* %288)
  %290 = icmp slt i64 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %262
  %292 = load %struct.sock*, %struct.sock** %20, align 8
  %293 = call i32 @inet_csk_prepare_forced_close(%struct.sock* %292)
  %294 = load %struct.sock*, %struct.sock** %20, align 8
  %295 = call i32 @tcp_done(%struct.sock* %294)
  br label %355

296:                                              ; preds = %262
  %297 = load %struct.sock*, %struct.sock** %20, align 8
  %298 = load %struct.request_sock*, %struct.request_sock** %12, align 8
  %299 = call i32 @req_to_sk(%struct.request_sock* %298)
  %300 = call i32 @inet_ehash_nolisten(%struct.sock* %297, i32 %299)
  %301 = load i32*, i32** %13, align 8
  store i32 %300, i32* %301, align 4
  %302 = load i32*, i32** %13, align 8
  %303 = load i32, i32* %302, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %345

305:                                              ; preds = %296
  %306 = load %struct.tcp_sock*, %struct.tcp_sock** %19, align 8
  %307 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %308 = call i32 @tcp_move_syn(%struct.tcp_sock* %306, %struct.request_sock* %307)
  %309 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %310 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = icmp ne i32* %311, null
  br i1 %312, label %313, label %344

313:                                              ; preds = %305
  %314 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %315 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = load %struct.sock*, %struct.sock** %8, align 8
  %318 = load i32, i32* @GFP_ATOMIC, align 4
  %319 = call i32 @sk_gfp_mask(%struct.sock* %317, i32 %318)
  %320 = call i32* @skb_clone(i32* %316, i32 %319)
  %321 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %322 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %321, i32 0, i32 0
  store i32* %320, i32** %322, align 8
  %323 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %324 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = call i32 @consume_skb(i32* %325)
  %327 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %328 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %327, i32 0, i32 0
  store i32* null, i32** %328, align 8
  %329 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %330 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = icmp ne i32* %331, null
  br i1 %332, label %333, label %343

333:                                              ; preds = %313
  %334 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %335 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = call i32 @tcp_v6_restore_cb(i32* %336)
  %338 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %339 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %338, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = load %struct.sock*, %struct.sock** %20, align 8
  %342 = call i32 @skb_set_owner_r(i32* %340, %struct.sock* %341)
  br label %343

343:                                              ; preds = %333, %313
  br label %344

344:                                              ; preds = %343, %305
  br label %345

345:                                              ; preds = %344, %296
  %346 = load %struct.sock*, %struct.sock** %20, align 8
  store %struct.sock* %346, %struct.sock** %7, align 8
  br label %358

347:                                              ; preds = %112
  %348 = load %struct.sock*, %struct.sock** %8, align 8
  %349 = call i32 @sock_net(%struct.sock* %348)
  %350 = load i32, i32* @LINUX_MIB_LISTENOVERFLOWS, align 4
  %351 = call i32 @__NET_INC_STATS(i32 %349, i32 %350)
  br label %352

352:                                              ; preds = %347, %132
  %353 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %354 = call i32 @dst_release(%struct.dst_entry* %353)
  br label %355

355:                                              ; preds = %352, %291, %123
  %356 = load %struct.sock*, %struct.sock** %8, align 8
  %357 = call i32 @tcp_listendrop(%struct.sock* %356)
  store %struct.sock* null, %struct.sock** %7, align 8
  br label %358

358:                                              ; preds = %355, %345, %98, %41
  %359 = load %struct.sock*, %struct.sock** %7, align 8
  ret %struct.sock* %359
}

declare dso_local i8* @tcp_inet6_sk(%struct.sock*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.sock* @tcp_v4_syn_recv_sock(%struct.sock*, %struct.sk_buff*, %struct.request_sock*, %struct.dst_entry*, %struct.request_sock*, i32*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @memcpy(%struct.ipv6_pinfo*, %struct.ipv6_pinfo*, i32) #1

declare dso_local %struct.TYPE_10__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @inet_iif(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_9__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @tcp_sync_mss(%struct.sock*, i32) #1

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local %struct.dst_entry* @inet6_csk_route_req(%struct.sock*, %struct.flowi6*, %struct.request_sock*, i32) #1

declare dso_local %struct.sock* @tcp_create_openreq_child(%struct.sock*, %struct.request_sock*, %struct.sk_buff*) #1

declare dso_local i32 @ip6_dst_store(%struct.sock*, %struct.dst_entry*, i32*, i32*) #1

declare dso_local i32 @inet6_sk_rx_dst_set(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_v6_iif(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ip6_flowinfo(%struct.TYPE_8__*) #1

declare dso_local i64 @ip6_flowlabel(%struct.TYPE_8__*) #1

declare dso_local %struct.ipv6_txoptions* @rcu_dereference(i32*) #1

declare dso_local %struct.ipv6_txoptions* @ipv6_dup_options(%struct.sock*, %struct.ipv6_txoptions*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32*, %struct.ipv6_txoptions*) #1

declare dso_local i32 @tcp_ca_openreq_child(%struct.sock*, %struct.dst_entry*) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @tcp_mss_clamp(%struct.tcp_sock*, i32) #1

declare dso_local i32 @dst_metric_advmss(%struct.dst_entry*) #1

declare dso_local i32 @tcp_initialize_rcv_mss(%struct.sock*) #1

declare dso_local i64 @__inet_inherit_port(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @inet_csk_prepare_forced_close(%struct.sock*) #1

declare dso_local i32 @tcp_done(%struct.sock*) #1

declare dso_local i32 @inet_ehash_nolisten(%struct.sock*, i32) #1

declare dso_local i32 @req_to_sk(%struct.request_sock*) #1

declare dso_local i32 @tcp_move_syn(%struct.tcp_sock*, %struct.request_sock*) #1

declare dso_local i32* @skb_clone(i32*, i32) #1

declare dso_local i32 @sk_gfp_mask(%struct.sock*, i32) #1

declare dso_local i32 @consume_skb(i32*) #1

declare dso_local i32 @tcp_v6_restore_cb(i32*) #1

declare dso_local i32 @skb_set_owner_r(i32*, %struct.sock*) #1

declare dso_local i32 @__NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @tcp_listendrop(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
