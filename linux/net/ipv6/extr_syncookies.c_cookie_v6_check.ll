; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_syncookies.c_cookie_v6_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_syncookies.c_cookie_v6_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, i32, %struct.TYPE_21__, %struct.TYPE_17__, i32, i32, i64, i32, i32, i32, i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.inet_request_sock = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_21__, %struct.TYPE_17__, i64, i64, i32, i32, %struct.sk_buff*, i32 }
%struct.tcp_request_sock = type { i32, i32, i64, i8*, i8*, i64 }
%struct.ipv6_pinfo = type { i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, i64, i64, i64 }
%struct.tcp_sock = type { i64 }
%struct.tcphdr = type { i32, i32, i32, i64, i32, i32 }
%struct.request_sock = type { i32, i32, i32, i32, i64 }
%struct.dst_entry = type { i32 }
%struct.in6_addr = type { i32 }
%struct.flowi6 = type { i32, i32, i32, i32, i32, %struct.TYPE_21__, %struct.TYPE_17__, i32, i32, i64, i32, i32, i32, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_21__, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@LINUX_MIB_SYNCOOKIESFAILED = common dso_local global i32 0, align 4
@LINUX_MIB_SYNCOOKIESRECV = common dso_local global i32 0, align 4
@tcp6_request_sock_ops = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@CONFIG_SMC = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@RTAX_WINDOW = common dso_local global i32 0, align 4
@RTAX_INITRWND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @cookie_v6_check(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcp_options_received, align 8
  %7 = alloca %struct.inet_request_sock*, align 8
  %8 = alloca %struct.tcp_request_sock*, align 8
  %9 = alloca %struct.ipv6_pinfo*, align 8
  %10 = alloca %struct.tcp_sock*, align 8
  %11 = alloca %struct.tcphdr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sock*, align 8
  %14 = alloca %struct.request_sock*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.dst_entry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.in6_addr*, align 8
  %20 = alloca %struct.in6_addr, align 4
  %21 = alloca %struct.flowi6, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %22)
  store %struct.ipv6_pinfo* %23, %struct.ipv6_pinfo** %9, align 8
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %24)
  store %struct.tcp_sock* %25, %struct.tcp_sock** %10, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %26)
  store %struct.tcphdr* %27, %struct.tcphdr** %11, align 8
  %28 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %29 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @ntohl(i32 %30)
  %32 = getelementptr i8, i8* %31, i64 -1
  store i8* %32, i8** %12, align 8
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  store %struct.sock* %33, %struct.sock** %13, align 8
  store i64 0, i64* %18, align 8
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = call %struct.TYPE_25__* @sock_net(%struct.sock* %34)
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %2
  %41 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %42 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %47 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %40, %2
  br label %383

51:                                               ; preds = %45
  %52 = load %struct.sock*, %struct.sock** %4, align 8
  %53 = call i64 @tcp_synq_no_recent_overflow(%struct.sock* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %383

56:                                               ; preds = %51
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = call %struct.TYPE_26__* @ipv6_hdr(%struct.sk_buff* %57)
  %59 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @__cookie_v6_check(%struct.TYPE_26__* %58, %struct.tcphdr* %59, i8* %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.sock*, %struct.sock** %4, align 8
  %66 = call %struct.TYPE_25__* @sock_net(%struct.sock* %65)
  %67 = load i32, i32* @LINUX_MIB_SYNCOOKIESFAILED, align 4
  %68 = call i32 @__NET_INC_STATS(%struct.TYPE_25__* %66, i32 %67)
  br label %383

69:                                               ; preds = %56
  %70 = load %struct.sock*, %struct.sock** %4, align 8
  %71 = call %struct.TYPE_25__* @sock_net(%struct.sock* %70)
  %72 = load i32, i32* @LINUX_MIB_SYNCOOKIESRECV, align 4
  %73 = call i32 @__NET_INC_STATS(%struct.TYPE_25__* %71, i32 %72)
  %74 = call i32 @memset(%struct.tcp_options_received* %6, i32 0, i32 72)
  %75 = load %struct.sock*, %struct.sock** %4, align 8
  %76 = call %struct.TYPE_25__* @sock_net(%struct.sock* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = call i32 @tcp_parse_options(%struct.TYPE_25__* %76, %struct.sk_buff* %77, %struct.tcp_options_received* %6, i32 0, i32* null)
  %79 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %6, i32 0, i32 9
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %6, i32 0, i32 13
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %82
  %87 = load %struct.sock*, %struct.sock** %4, align 8
  %88 = call %struct.TYPE_25__* @sock_net(%struct.sock* %87)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = call %struct.TYPE_26__* @ipv6_hdr(%struct.sk_buff* %89)
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = call %struct.TYPE_26__* @ipv6_hdr(%struct.sk_buff* %94)
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @secure_tcpv6_ts_off(%struct.TYPE_25__* %88, i32 %93, i32 %98)
  store i64 %99, i64* %18, align 8
  %100 = load i64, i64* %18, align 8
  %101 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %6, i32 0, i32 13
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %102, %100
  store i64 %103, i64* %101, align 8
  br label %104

104:                                              ; preds = %86, %82, %69
  %105 = load %struct.sock*, %struct.sock** %4, align 8
  %106 = call %struct.TYPE_25__* @sock_net(%struct.sock* %105)
  %107 = call i32 @cookie_timestamp_decode(%struct.TYPE_25__* %106, %struct.tcp_options_received* %6)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  br label %383

110:                                              ; preds = %104
  store %struct.sock* null, %struct.sock** %13, align 8
  %111 = load %struct.sock*, %struct.sock** %4, align 8
  %112 = call %struct.request_sock* @inet_reqsk_alloc(i32* @tcp6_request_sock_ops, %struct.sock* %111, i32 0)
  store %struct.request_sock* %112, %struct.request_sock** %14, align 8
  %113 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %114 = icmp ne %struct.request_sock* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  br label %383

116:                                              ; preds = %110
  %117 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %118 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %117)
  store %struct.inet_request_sock* %118, %struct.inet_request_sock** %7, align 8
  %119 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %120 = call %struct.tcp_request_sock* @tcp_rsk(%struct.request_sock* %119)
  store %struct.tcp_request_sock* %120, %struct.tcp_request_sock** %8, align 8
  %121 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %8, align 8
  %122 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %121, i32 0, i32 0
  store i32 0, i32* %122, align 8
  %123 = load %struct.sock*, %struct.sock** %4, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %126 = call i64 @security_inet_conn_request(%struct.sock* %123, %struct.sk_buff* %124, %struct.request_sock* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  br label %385

129:                                              ; preds = %116
  %130 = load i32, i32* %15, align 4
  %131 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %132 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %134 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %137 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %139 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ntohs(i32 %140)
  %142 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %143 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %142, i32 0, i32 13
  store i32 %141, i32* %143, align 8
  %144 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %145 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %144, i32 0, i32 7
  %146 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %147 = call %struct.TYPE_26__* @ipv6_hdr(%struct.sk_buff* %146)
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 1
  %149 = bitcast %struct.TYPE_17__* %145 to i8*
  %150 = bitcast %struct.TYPE_17__* %148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %149, i8* align 4 %150, i64 4, i1 false)
  %151 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %152 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %151, i32 0, i32 6
  %153 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %154 = call %struct.TYPE_26__* @ipv6_hdr(%struct.sk_buff* %153)
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 0
  %156 = bitcast %struct.TYPE_21__* %152 to i8*
  %157 = bitcast %struct.TYPE_21__* %155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %156, i8* align 4 %157, i64 4, i1 false)
  %158 = load %struct.sock*, %struct.sock** %4, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %161 = call %struct.TYPE_19__* @TCP_SKB_CB(%struct.sk_buff* %160)
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 0
  %164 = call i64 @ipv6_opt_accepted(%struct.sock* %158, %struct.sk_buff* %159, i32* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %194, label %166

166:                                              ; preds = %129
  %167 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %168 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %194, label %173

173:                                              ; preds = %166
  %174 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %175 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %194, label %180

180:                                              ; preds = %173
  %181 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %182 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %194, label %187

187:                                              ; preds = %180
  %188 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %189 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %187, %180, %173, %166, %129
  %195 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %196 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %195, i32 0, i32 0
  %197 = call i32 @refcount_inc(i32* %196)
  %198 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %199 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %200 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %199, i32 0, i32 12
  store %struct.sk_buff* %198, %struct.sk_buff** %200, align 8
  br label %201

201:                                              ; preds = %194, %187
  %202 = load %struct.sock*, %struct.sock** %4, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %204 = call i32 @inet_request_bound_dev_if(%struct.sock* %202, %struct.sk_buff* %203)
  %205 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %206 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %205, i32 0, i32 5
  store i32 %204, i32* %206, align 4
  %207 = load %struct.sock*, %struct.sock** %4, align 8
  %208 = getelementptr inbounds %struct.sock, %struct.sock* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %223, label %211

211:                                              ; preds = %201
  %212 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %213 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %212, i32 0, i32 7
  %214 = call i32 @ipv6_addr_type(%struct.TYPE_17__* %213)
  %215 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %211
  %219 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %220 = call i32 @tcp_v6_iif(%struct.sk_buff* %219)
  %221 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %222 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %221, i32 0, i32 5
  store i32 %220, i32* %222, align 4
  br label %223

223:                                              ; preds = %218, %211, %201
  %224 = load %struct.sock*, %struct.sock** %4, align 8
  %225 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %226 = call i32 @inet_request_mark(%struct.sock* %224, %struct.sk_buff* %225)
  %227 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %228 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %227, i32 0, i32 4
  store i32 %226, i32* %228, align 8
  %229 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %230 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %229, i32 0, i32 4
  store i64 0, i64* %230, align 8
  %231 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %6, i32 0, i32 12
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %234 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %233, i32 0, i32 11
  store i32 %232, i32* %234, align 4
  %235 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %6, i32 0, i32 11
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %238 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %237, i32 0, i32 10
  store i32 %236, i32* %238, align 8
  %239 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %6, i32 0, i32 10
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %242 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 8
  %243 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %6, i32 0, i32 9
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %246 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %245, i32 0, i32 9
  store i64 %244, i64* %246, align 8
  %247 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %6, i32 0, i32 9
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %223
  %251 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %6, i32 0, i32 8
  %252 = load i32, i32* %251, align 8
  br label %254

253:                                              ; preds = %223
  br label %254

254:                                              ; preds = %253, %250
  %255 = phi i32 [ %252, %250 ], [ 0, %253 ]
  %256 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %257 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %256, i32 0, i32 3
  store i32 %255, i32* %257, align 4
  %258 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %8, align 8
  %259 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %258, i32 0, i32 5
  store i64 0, i64* %259, align 8
  %260 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %261 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = call i8* @ntohl(i32 %262)
  %264 = getelementptr i8, i8* %263, i64 -1
  %265 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %8, align 8
  %266 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %265, i32 0, i32 4
  store i8* %264, i8** %266, align 8
  %267 = load i8*, i8** %12, align 8
  %268 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %8, align 8
  %269 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %268, i32 0, i32 3
  store i8* %267, i8** %269, align 8
  %270 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %8, align 8
  %271 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %270, i32 0, i32 2
  store i64 0, i64* %271, align 8
  %272 = call i32 (...) @net_tx_rndhash()
  %273 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %8, align 8
  %274 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 4
  %275 = load i32, i32* @CONFIG_SMC, align 4
  %276 = call i64 @IS_ENABLED(i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %254
  %279 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %280 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %279, i32 0, i32 8
  store i64 0, i64* %280, align 8
  br label %281

281:                                              ; preds = %278, %254
  %282 = bitcast %struct.flowi6* %21 to %struct.tcp_options_received*
  %283 = call i32 @memset(%struct.tcp_options_received* %282, i32 0, i32 72)
  %284 = load i32, i32* @IPPROTO_TCP, align 4
  %285 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %21, i32 0, i32 7
  store i32 %284, i32* %285, align 4
  %286 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %21, i32 0, i32 6
  %287 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %288 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %287, i32 0, i32 7
  %289 = bitcast %struct.TYPE_17__* %286 to i8*
  %290 = bitcast %struct.TYPE_17__* %288 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %289, i8* align 4 %290, i64 4, i1 false)
  %291 = bitcast %struct.flowi6* %21 to %struct.tcp_options_received*
  %292 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %293 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @rcu_dereference(i32 %294)
  %296 = call %struct.in6_addr* @fl6_update_dst(%struct.tcp_options_received* %291, i32 %295, %struct.in6_addr* %20)
  store %struct.in6_addr* %296, %struct.in6_addr** %19, align 8
  %297 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %21, i32 0, i32 5
  %298 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %299 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %298, i32 0, i32 6
  %300 = bitcast %struct.TYPE_21__* %297 to i8*
  %301 = bitcast %struct.TYPE_21__* %299 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %300, i8* align 8 %301, i64 4, i1 false)
  %302 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %303 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 4
  %305 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %21, i32 0, i32 4
  store i32 %304, i32* %305, align 8
  %306 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %307 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  %309 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %21, i32 0, i32 3
  store i32 %308, i32* %309, align 4
  %310 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %311 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %21, i32 0, i32 2
  store i32 %312, i32* %313, align 8
  %314 = load %struct.sock*, %struct.sock** %4, align 8
  %315 = call %struct.TYPE_18__* @inet_sk(%struct.sock* %314)
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %21, i32 0, i32 1
  store i32 %317, i32* %318, align 4
  %319 = load %struct.sock*, %struct.sock** %4, align 8
  %320 = getelementptr inbounds %struct.sock, %struct.sock* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %21, i32 0, i32 0
  store i32 %321, i32* %322, align 8
  %323 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %324 = bitcast %struct.flowi6* %21 to %struct.tcp_options_received*
  %325 = call i32 @flowi6_to_flowi(%struct.tcp_options_received* %324)
  %326 = call i32 @security_req_classify_flow(%struct.request_sock* %323, i32 %325)
  %327 = load %struct.sock*, %struct.sock** %4, align 8
  %328 = bitcast %struct.flowi6* %21 to %struct.tcp_options_received*
  %329 = load %struct.in6_addr*, %struct.in6_addr** %19, align 8
  %330 = call %struct.dst_entry* @ip6_dst_lookup_flow(%struct.sock* %327, %struct.tcp_options_received* %328, %struct.in6_addr* %329)
  store %struct.dst_entry* %330, %struct.dst_entry** %16, align 8
  %331 = load %struct.dst_entry*, %struct.dst_entry** %16, align 8
  %332 = call i64 @IS_ERR(%struct.dst_entry* %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %281
  br label %385

335:                                              ; preds = %281
  %336 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %337 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %335
  br label %346

341:                                              ; preds = %335
  %342 = load %struct.dst_entry*, %struct.dst_entry** %16, align 8
  %343 = load i32, i32* @RTAX_WINDOW, align 4
  %344 = call i32 @dst_metric(%struct.dst_entry* %342, i32 %343)
  %345 = sext i32 %344 to i64
  br label %346

346:                                              ; preds = %341, %340
  %347 = phi i64 [ %338, %340 ], [ %345, %341 ]
  %348 = trunc i64 %347 to i32
  %349 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %350 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %349, i32 0, i32 1
  store i32 %348, i32* %350, align 4
  %351 = load %struct.sock*, %struct.sock** %4, align 8
  %352 = load %struct.sock*, %struct.sock** %4, align 8
  %353 = call i32 @tcp_full_space(%struct.sock* %352)
  %354 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %355 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %358 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %357, i32 0, i32 2
  %359 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %360 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %359, i32 0, i32 1
  %361 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %362 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 8
  %364 = load %struct.dst_entry*, %struct.dst_entry** %16, align 8
  %365 = load i32, i32* @RTAX_INITRWND, align 4
  %366 = call i32 @dst_metric(%struct.dst_entry* %364, i32 %365)
  %367 = call i32 @tcp_select_initial_window(%struct.sock* %351, i32 %353, i32 %356, i32* %358, i32* %360, i32 %363, i32* %17, i32 %366)
  %368 = load i32, i32* %17, align 4
  %369 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %370 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %369, i32 0, i32 1
  store i32 %368, i32* %370, align 4
  %371 = load %struct.sock*, %struct.sock** %4, align 8
  %372 = call %struct.TYPE_25__* @sock_net(%struct.sock* %371)
  %373 = load %struct.dst_entry*, %struct.dst_entry** %16, align 8
  %374 = call i32 @cookie_ecn_ok(%struct.tcp_options_received* %6, %struct.TYPE_25__* %372, %struct.dst_entry* %373)
  %375 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %376 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %375, i32 0, i32 0
  store i32 %374, i32* %376, align 8
  %377 = load %struct.sock*, %struct.sock** %4, align 8
  %378 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %379 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %380 = load %struct.dst_entry*, %struct.dst_entry** %16, align 8
  %381 = load i64, i64* %18, align 8
  %382 = call %struct.sock* @tcp_get_cookie_sock(%struct.sock* %377, %struct.sk_buff* %378, %struct.request_sock* %379, %struct.dst_entry* %380, i64 %381)
  store %struct.sock* %382, %struct.sock** %13, align 8
  br label %383

383:                                              ; preds = %346, %115, %109, %64, %55, %50
  %384 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %384, %struct.sock** %3, align 8
  br label %388

385:                                              ; preds = %334, %128
  %386 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %387 = call i32 @reqsk_free(%struct.request_sock* %386)
  store %struct.sock* null, %struct.sock** %3, align 8
  br label %388

388:                                              ; preds = %385, %383
  %389 = load %struct.sock*, %struct.sock** %3, align 8
  ret %struct.sock* %389
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local %struct.TYPE_25__* @sock_net(%struct.sock*) #1

declare dso_local i64 @tcp_synq_no_recent_overflow(%struct.sock*) #1

declare dso_local i32 @__cookie_v6_check(%struct.TYPE_26__*, %struct.tcphdr*, i8*) #1

declare dso_local %struct.TYPE_26__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @__NET_INC_STATS(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @memset(%struct.tcp_options_received*, i32, i32) #1

declare dso_local i32 @tcp_parse_options(%struct.TYPE_25__*, %struct.sk_buff*, %struct.tcp_options_received*, i32, i32*) #1

declare dso_local i64 @secure_tcpv6_ts_off(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @cookie_timestamp_decode(%struct.TYPE_25__*, %struct.tcp_options_received*) #1

declare dso_local %struct.request_sock* @inet_reqsk_alloc(i32*, %struct.sock*, i32) #1

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.tcp_request_sock* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i64 @security_inet_conn_request(%struct.sock*, %struct.sk_buff*, %struct.request_sock*) #1

declare dso_local i32 @ntohs(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ipv6_opt_accepted(%struct.sock*, %struct.sk_buff*, i32*) #1

declare dso_local %struct.TYPE_19__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @inet_request_bound_dev_if(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_type(%struct.TYPE_17__*) #1

declare dso_local i32 @tcp_v6_iif(%struct.sk_buff*) #1

declare dso_local i32 @inet_request_mark(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @net_tx_rndhash(...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.in6_addr* @fl6_update_dst(%struct.tcp_options_received*, i32, %struct.in6_addr*) #1

declare dso_local i32 @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_18__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @security_req_classify_flow(%struct.request_sock*, i32) #1

declare dso_local i32 @flowi6_to_flowi(%struct.tcp_options_received*) #1

declare dso_local %struct.dst_entry* @ip6_dst_lookup_flow(%struct.sock*, %struct.tcp_options_received*, %struct.in6_addr*) #1

declare dso_local i64 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @dst_metric(%struct.dst_entry*, i32) #1

declare dso_local i32 @tcp_select_initial_window(%struct.sock*, i32, i32, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @tcp_full_space(%struct.sock*) #1

declare dso_local i32 @cookie_ecn_ok(%struct.tcp_options_received*, %struct.TYPE_25__*, %struct.dst_entry*) #1

declare dso_local %struct.sock* @tcp_get_cookie_sock(%struct.sock*, %struct.sk_buff*, %struct.request_sock*, %struct.dst_entry*, i64) #1

declare dso_local i32 @reqsk_free(%struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
