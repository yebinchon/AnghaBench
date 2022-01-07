; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ipv6.c_dccp_v6_request_recv_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ipv6.c_dccp_v6_request_recv_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.dst_entry = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.request_sock = type { i32 }
%struct.inet_request_sock = type { i32*, %struct.ipv6_txoptions*, i32, i32, i32 }
%struct.ipv6_txoptions = type { i64, i64 }
%struct.ipv6_pinfo = type { i32*, i32*, i32, i32, i32*, i32*, i32*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.inet_sock = type { i8*, i8*, i8*, i32*, i32* }
%struct.dccp6_sock = type { i32 }
%struct.flowi6 = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@dccp_ipv6_mapped = common dso_local global i32 0, align 4
@dccp_v4_do_rcv = common dso_local global i32 0, align 4
@IPPROTO_DCCP = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@LOOPBACK4_IPV6 = common dso_local global i8* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@LINUX_MIB_LISTENOVERFLOWS = common dso_local global i32 0, align 4
@LINUX_MIB_LISTENDROPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, %struct.dst_entry*, %struct.request_sock*, i32*)* @dccp_v6_request_recv_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @dccp_v6_request_recv_sock(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2, %struct.dst_entry* %3, %struct.request_sock* %4, i32* %5) #0 {
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
  %19 = alloca %struct.dccp6_sock*, align 8
  %20 = alloca %struct.sock*, align 8
  %21 = alloca %struct.flowi6, align 4
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.request_sock* %2, %struct.request_sock** %10, align 8
  store %struct.dst_entry* %3, %struct.dst_entry** %11, align 8
  store %struct.request_sock* %4, %struct.request_sock** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %23 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %22)
  store %struct.inet_request_sock* %23, %struct.inet_request_sock** %14, align 8
  %24 = load %struct.sock*, %struct.sock** %8, align 8
  %25 = call i8* @inet6_sk(%struct.sock* %24)
  %26 = bitcast i8* %25 to %struct.ipv6_pinfo*
  store %struct.ipv6_pinfo* %26, %struct.ipv6_pinfo** %16, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @ETH_P_IP, align 4
  %31 = call i64 @htons(i32 %30)
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %97

33:                                               ; preds = %6
  %34 = load %struct.sock*, %struct.sock** %8, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %37 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %38 = load %struct.request_sock*, %struct.request_sock** %12, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = call %struct.sock* @dccp_v4_request_recv_sock(%struct.sock* %34, %struct.sk_buff* %35, %struct.request_sock* %36, %struct.dst_entry* %37, %struct.request_sock* %38, i32* %39)
  store %struct.sock* %40, %struct.sock** %20, align 8
  %41 = load %struct.sock*, %struct.sock** %20, align 8
  %42 = icmp eq %struct.sock* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store %struct.sock* null, %struct.sock** %7, align 8
  br label %316

44:                                               ; preds = %33
  %45 = load %struct.sock*, %struct.sock** %20, align 8
  %46 = bitcast %struct.sock* %45 to %struct.dccp6_sock*
  store %struct.dccp6_sock* %46, %struct.dccp6_sock** %19, align 8
  %47 = load %struct.sock*, %struct.sock** %20, align 8
  %48 = call %struct.inet_sock* @inet_sk(%struct.sock* %47)
  store %struct.inet_sock* %48, %struct.inet_sock** %18, align 8
  %49 = load %struct.dccp6_sock*, %struct.dccp6_sock** %19, align 8
  %50 = getelementptr inbounds %struct.dccp6_sock, %struct.dccp6_sock* %49, i32 0, i32 0
  %51 = load %struct.inet_sock*, %struct.inet_sock** %18, align 8
  %52 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %51, i32 0, i32 4
  store i32* %50, i32** %52, align 8
  %53 = load %struct.sock*, %struct.sock** %20, align 8
  %54 = call i8* @inet6_sk(%struct.sock* %53)
  %55 = bitcast i8* %54 to %struct.ipv6_pinfo*
  store %struct.ipv6_pinfo* %55, %struct.ipv6_pinfo** %15, align 8
  %56 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %57 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %58 = call i32 @memcpy(%struct.ipv6_pinfo* %56, %struct.ipv6_pinfo* %57, i32 56)
  %59 = load %struct.sock*, %struct.sock** %20, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %63 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 4
  %64 = load %struct.sock*, %struct.sock** %20, align 8
  %65 = call %struct.TYPE_10__* @inet_csk(%struct.sock* %64)
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  store i32* @dccp_ipv6_mapped, i32** %66, align 8
  %67 = load i32, i32* @dccp_v4_do_rcv, align 4
  %68 = load %struct.sock*, %struct.sock** %20, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %71 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  %72 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %73 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %72, i32 0, i32 1
  store i32* null, i32** %73, align 8
  %74 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %75 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %74, i32 0, i32 6
  store i32* null, i32** %75, align 8
  %76 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %77 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %76, i32 0, i32 5
  store i32* null, i32** %77, align 8
  %78 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %79 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %78, i32 0, i32 4
  store i32* null, i32** %79, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %81 = call i32 @inet_iif(%struct.sk_buff* %80)
  %82 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %83 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %85 = call %struct.TYPE_9__* @ip_hdr(%struct.sk_buff* %84)
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %89 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.sock*, %struct.sock** %20, align 8
  %91 = load %struct.sock*, %struct.sock** %20, align 8
  %92 = call %struct.TYPE_10__* @inet_csk(%struct.sock* %91)
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dccp_sync_mss(%struct.sock* %90, i32 %94)
  %96 = load %struct.sock*, %struct.sock** %20, align 8
  store %struct.sock* %96, %struct.sock** %7, align 8
  br label %316

97:                                               ; preds = %6
  %98 = load %struct.sock*, %struct.sock** %8, align 8
  %99 = call i64 @sk_acceptq_is_full(%struct.sock* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %303

102:                                              ; preds = %97
  %103 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %104 = icmp ne %struct.dst_entry* %103, null
  br i1 %104, label %114, label %105

105:                                              ; preds = %102
  %106 = load %struct.sock*, %struct.sock** %8, align 8
  %107 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %108 = load i32, i32* @IPPROTO_DCCP, align 4
  %109 = call %struct.dst_entry* @inet6_csk_route_req(%struct.sock* %106, %struct.flowi6* %21, %struct.request_sock* %107, i32 %108)
  store %struct.dst_entry* %109, %struct.dst_entry** %11, align 8
  %110 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %111 = icmp ne %struct.dst_entry* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  br label %311

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %102
  %115 = load %struct.sock*, %struct.sock** %8, align 8
  %116 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %118 = call %struct.sock* @dccp_create_openreq_child(%struct.sock* %115, %struct.request_sock* %116, %struct.sk_buff* %117)
  store %struct.sock* %118, %struct.sock** %20, align 8
  %119 = load %struct.sock*, %struct.sock** %20, align 8
  %120 = icmp eq %struct.sock* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %308

122:                                              ; preds = %114
  %123 = load %struct.sock*, %struct.sock** %20, align 8
  %124 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %125 = call i32 @ip6_dst_store(%struct.sock* %123, %struct.dst_entry* %124, i32* null, i32* null)
  %126 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %127 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %132 = load i32, i32* @NETIF_F_TSO, align 4
  %133 = or i32 %131, %132
  %134 = xor i32 %133, -1
  %135 = and i32 %130, %134
  %136 = load %struct.sock*, %struct.sock** %20, align 8
  %137 = getelementptr inbounds %struct.sock, %struct.sock* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  %138 = load %struct.sock*, %struct.sock** %20, align 8
  %139 = bitcast %struct.sock* %138 to %struct.dccp6_sock*
  store %struct.dccp6_sock* %139, %struct.dccp6_sock** %19, align 8
  %140 = load %struct.sock*, %struct.sock** %20, align 8
  %141 = call %struct.inet_sock* @inet_sk(%struct.sock* %140)
  store %struct.inet_sock* %141, %struct.inet_sock** %18, align 8
  %142 = load %struct.dccp6_sock*, %struct.dccp6_sock** %19, align 8
  %143 = getelementptr inbounds %struct.dccp6_sock, %struct.dccp6_sock* %142, i32 0, i32 0
  %144 = load %struct.inet_sock*, %struct.inet_sock** %18, align 8
  %145 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %144, i32 0, i32 4
  store i32* %143, i32** %145, align 8
  %146 = load %struct.sock*, %struct.sock** %20, align 8
  %147 = call i8* @inet6_sk(%struct.sock* %146)
  %148 = bitcast i8* %147 to %struct.ipv6_pinfo*
  store %struct.ipv6_pinfo* %148, %struct.ipv6_pinfo** %15, align 8
  %149 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %150 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %151 = call i32 @memcpy(%struct.ipv6_pinfo* %149, %struct.ipv6_pinfo* %150, i32 56)
  %152 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %153 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.sock*, %struct.sock** %20, align 8
  %156 = getelementptr inbounds %struct.sock, %struct.sock* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  %157 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %158 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %161 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %160, i32 0, i32 8
  store i32 %159, i32* %161, align 4
  %162 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %163 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.sock*, %struct.sock** %20, align 8
  %166 = getelementptr inbounds %struct.sock, %struct.sock* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 4
  %167 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %168 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.sock*, %struct.sock** %20, align 8
  %171 = getelementptr inbounds %struct.sock, %struct.sock* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.inet_sock*, %struct.inet_sock** %18, align 8
  %173 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %172, i32 0, i32 3
  store i32* null, i32** %173, align 8
  %174 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %175 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %174, i32 0, i32 7
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %179 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %178, i32 0, i32 7
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 8
  %181 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %182 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %181, i32 0, i32 6
  store i32* null, i32** %182, align 8
  %183 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %184 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %183, i32 0, i32 5
  store i32* null, i32** %184, align 8
  %185 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %186 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %185, i32 0, i32 4
  store i32* null, i32** %186, align 8
  %187 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %188 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %187, i32 0, i32 0
  store i32* null, i32** %188, align 8
  %189 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %190 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %189, i32 0, i32 1
  store i32* null, i32** %190, align 8
  %191 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %192 = call i32 @inet6_iif(%struct.sk_buff* %191)
  %193 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %194 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %193, i32 0, i32 3
  store i32 %192, i32* %194, align 4
  %195 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %196 = call %struct.TYPE_8__* @ipv6_hdr(%struct.sk_buff* %195)
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %200 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  %201 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %202 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %201, i32 0, i32 1
  %203 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %202, align 8
  store %struct.ipv6_txoptions* %203, %struct.ipv6_txoptions** %17, align 8
  %204 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %205 = icmp ne %struct.ipv6_txoptions* %204, null
  br i1 %205, label %211, label %206

206:                                              ; preds = %122
  %207 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %208 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = call %struct.ipv6_txoptions* @rcu_dereference(i32* %209)
  store %struct.ipv6_txoptions* %210, %struct.ipv6_txoptions** %17, align 8
  br label %211

211:                                              ; preds = %206, %122
  %212 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %213 = icmp ne %struct.ipv6_txoptions* %212, null
  br i1 %213, label %214, label %223

214:                                              ; preds = %211
  %215 = load %struct.sock*, %struct.sock** %20, align 8
  %216 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %217 = call %struct.ipv6_txoptions* @ipv6_dup_options(%struct.sock* %215, %struct.ipv6_txoptions* %216)
  store %struct.ipv6_txoptions* %217, %struct.ipv6_txoptions** %17, align 8
  %218 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %219 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %222 = call i32 @RCU_INIT_POINTER(i32* %220, %struct.ipv6_txoptions* %221)
  br label %223

223:                                              ; preds = %214, %211
  %224 = load %struct.sock*, %struct.sock** %20, align 8
  %225 = call %struct.TYPE_10__* @inet_csk(%struct.sock* %224)
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  store i64 0, i64* %226, align 8
  %227 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %228 = icmp ne %struct.ipv6_txoptions* %227, null
  br i1 %228, label %229, label %240

229:                                              ; preds = %223
  %230 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %231 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %234 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %232, %235
  %237 = load %struct.sock*, %struct.sock** %20, align 8
  %238 = call %struct.TYPE_10__* @inet_csk(%struct.sock* %237)
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  store i64 %236, i64* %239, align 8
  br label %240

240:                                              ; preds = %229, %223
  %241 = load %struct.sock*, %struct.sock** %20, align 8
  %242 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %243 = call i32 @dst_mtu(%struct.dst_entry* %242)
  %244 = call i32 @dccp_sync_mss(%struct.sock* %241, i32 %243)
  %245 = load i8*, i8** @LOOPBACK4_IPV6, align 8
  %246 = load %struct.inet_sock*, %struct.inet_sock** %18, align 8
  %247 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %246, i32 0, i32 1
  store i8* %245, i8** %247, align 8
  %248 = load %struct.inet_sock*, %struct.inet_sock** %18, align 8
  %249 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %248, i32 0, i32 2
  store i8* %245, i8** %249, align 8
  %250 = load i8*, i8** @LOOPBACK4_IPV6, align 8
  %251 = load %struct.inet_sock*, %struct.inet_sock** %18, align 8
  %252 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %251, i32 0, i32 0
  store i8* %250, i8** %252, align 8
  %253 = load %struct.sock*, %struct.sock** %8, align 8
  %254 = load %struct.sock*, %struct.sock** %20, align 8
  %255 = call i64 @__inet_inherit_port(%struct.sock* %253, %struct.sock* %254)
  %256 = icmp slt i64 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %240
  %258 = load %struct.sock*, %struct.sock** %20, align 8
  %259 = call i32 @inet_csk_prepare_forced_close(%struct.sock* %258)
  %260 = load %struct.sock*, %struct.sock** %20, align 8
  %261 = call i32 @dccp_done(%struct.sock* %260)
  br label %311

262:                                              ; preds = %240
  %263 = load %struct.sock*, %struct.sock** %20, align 8
  %264 = load %struct.request_sock*, %struct.request_sock** %12, align 8
  %265 = call i32 @req_to_sk(%struct.request_sock* %264)
  %266 = call i32 @inet_ehash_nolisten(%struct.sock* %263, i32 %265)
  %267 = load i32*, i32** %13, align 8
  store i32 %266, i32* %267, align 4
  %268 = load i32*, i32** %13, align 8
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %301

271:                                              ; preds = %262
  %272 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %273 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = icmp ne i32* %274, null
  br i1 %275, label %276, label %301

276:                                              ; preds = %271
  %277 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %278 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* @GFP_ATOMIC, align 4
  %281 = call i32* @skb_clone(i32* %279, i32 %280)
  %282 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %283 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %282, i32 0, i32 0
  store i32* %281, i32** %283, align 8
  %284 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %285 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = call i32 @consume_skb(i32* %286)
  %288 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %289 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %288, i32 0, i32 0
  store i32* null, i32** %289, align 8
  %290 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %291 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = icmp ne i32* %292, null
  br i1 %293, label %294, label %300

294:                                              ; preds = %276
  %295 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %296 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = load %struct.sock*, %struct.sock** %20, align 8
  %299 = call i32 @skb_set_owner_r(i32* %297, %struct.sock* %298)
  br label %300

300:                                              ; preds = %294, %276
  br label %301

301:                                              ; preds = %300, %271, %262
  %302 = load %struct.sock*, %struct.sock** %20, align 8
  store %struct.sock* %302, %struct.sock** %7, align 8
  br label %316

303:                                              ; preds = %101
  %304 = load %struct.sock*, %struct.sock** %8, align 8
  %305 = call i32 @sock_net(%struct.sock* %304)
  %306 = load i32, i32* @LINUX_MIB_LISTENOVERFLOWS, align 4
  %307 = call i32 @__NET_INC_STATS(i32 %305, i32 %306)
  br label %308

308:                                              ; preds = %303, %121
  %309 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %310 = call i32 @dst_release(%struct.dst_entry* %309)
  br label %311

311:                                              ; preds = %308, %257, %112
  %312 = load %struct.sock*, %struct.sock** %8, align 8
  %313 = call i32 @sock_net(%struct.sock* %312)
  %314 = load i32, i32* @LINUX_MIB_LISTENDROPS, align 4
  %315 = call i32 @__NET_INC_STATS(i32 %313, i32 %314)
  store %struct.sock* null, %struct.sock** %7, align 8
  br label %316

316:                                              ; preds = %311, %301, %44, %43
  %317 = load %struct.sock*, %struct.sock** %7, align 8
  ret %struct.sock* %317
}

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local i8* @inet6_sk(%struct.sock*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.sock* @dccp_v4_request_recv_sock(%struct.sock*, %struct.sk_buff*, %struct.request_sock*, %struct.dst_entry*, %struct.request_sock*, i32*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @memcpy(%struct.ipv6_pinfo*, %struct.ipv6_pinfo*, i32) #1

declare dso_local %struct.TYPE_10__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @inet_iif(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_9__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dccp_sync_mss(%struct.sock*, i32) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local %struct.dst_entry* @inet6_csk_route_req(%struct.sock*, %struct.flowi6*, %struct.request_sock*, i32) #1

declare dso_local %struct.sock* @dccp_create_openreq_child(%struct.sock*, %struct.request_sock*, %struct.sk_buff*) #1

declare dso_local i32 @ip6_dst_store(%struct.sock*, %struct.dst_entry*, i32*, i32*) #1

declare dso_local i32 @inet6_iif(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ipv6_txoptions* @rcu_dereference(i32*) #1

declare dso_local %struct.ipv6_txoptions* @ipv6_dup_options(%struct.sock*, %struct.ipv6_txoptions*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32*, %struct.ipv6_txoptions*) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i64 @__inet_inherit_port(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @inet_csk_prepare_forced_close(%struct.sock*) #1

declare dso_local i32 @dccp_done(%struct.sock*) #1

declare dso_local i32 @inet_ehash_nolisten(%struct.sock*, i32) #1

declare dso_local i32 @req_to_sk(%struct.request_sock*) #1

declare dso_local i32* @skb_clone(i32*, i32) #1

declare dso_local i32 @consume_skb(i32*) #1

declare dso_local i32 @skb_set_owner_r(i32*, %struct.sock*) #1

declare dso_local i32 @__NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
