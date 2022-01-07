; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_syncookies.c_cookie_v4_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_syncookies.c_cookie_v4_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ip_options = type { i32, i64 }
%struct.tcp_options_received = type { i32, i64, i32, i32, i32, i64 }
%struct.inet_request_sock = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.tcp_request_sock = type { i32, i64, i32, i64, i8*, i8* }
%struct.tcp_sock = type { i64 }
%struct.tcphdr = type { i32, i32, i32, i64, i32, i32 }
%struct.request_sock = type { i32, i32, i32, i64, i32 }
%struct.rtable = type { i32 }
%struct.flowi4 = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.ip_options }
%struct.TYPE_28__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.flowi4 }

@LINUX_MIB_SYNCOOKIESFAILED = common dso_local global i32 0, align 4
@LINUX_MIB_SYNCOOKIESRECV = common dso_local global i32 0, align 4
@tcp_request_sock_ops = common dso_local global i32 0, align 4
@CONFIG_SMC = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@RTAX_WINDOW = common dso_local global i32 0, align 4
@RTAX_INITRWND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @cookie_v4_check(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ip_options*, align 8
  %6 = alloca %struct.tcp_options_received, align 8
  %7 = alloca %struct.inet_request_sock*, align 8
  %8 = alloca %struct.tcp_request_sock*, align 8
  %9 = alloca %struct.tcp_sock*, align 8
  %10 = alloca %struct.tcphdr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.request_sock*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.rtable*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.flowi4, align 4
  %18 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call %struct.TYPE_21__* @TCP_SKB_CB(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  store %struct.ip_options* %23, %struct.ip_options** %5, align 8
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %24)
  store %struct.tcp_sock* %25, %struct.tcp_sock** %9, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %26)
  store %struct.tcphdr* %27, %struct.tcphdr** %10, align 8
  %28 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %29 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @ntohl(i32 %30)
  %32 = getelementptr i8, i8* %31, i64 -1
  store i8* %32, i8** %11, align 8
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  store %struct.sock* %33, %struct.sock** %12, align 8
  store i64 0, i64* %18, align 8
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = call %struct.TYPE_28__* @sock_net(%struct.sock* %34)
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %2
  %41 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %42 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %47 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %40, %2
  br label %344

51:                                               ; preds = %45
  %52 = load %struct.sock*, %struct.sock** %3, align 8
  %53 = call i64 @tcp_synq_no_recent_overflow(%struct.sock* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %344

56:                                               ; preds = %51
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call %struct.TYPE_19__* @ip_hdr(%struct.sk_buff* %57)
  %59 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @__cookie_v4_check(%struct.TYPE_19__* %58, %struct.tcphdr* %59, i8* %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.sock*, %struct.sock** %3, align 8
  %66 = call %struct.TYPE_28__* @sock_net(%struct.sock* %65)
  %67 = load i32, i32* @LINUX_MIB_SYNCOOKIESFAILED, align 4
  %68 = call i32 @__NET_INC_STATS(%struct.TYPE_28__* %66, i32 %67)
  br label %344

69:                                               ; preds = %56
  %70 = load %struct.sock*, %struct.sock** %3, align 8
  %71 = call %struct.TYPE_28__* @sock_net(%struct.sock* %70)
  %72 = load i32, i32* @LINUX_MIB_SYNCOOKIESRECV, align 4
  %73 = call i32 @__NET_INC_STATS(%struct.TYPE_28__* %71, i32 %72)
  %74 = call i32 @memset(%struct.tcp_options_received* %6, i32 0, i32 40)
  %75 = load %struct.sock*, %struct.sock** %3, align 8
  %76 = call %struct.TYPE_28__* @sock_net(%struct.sock* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = call i32 @tcp_parse_options(%struct.TYPE_28__* %76, %struct.sk_buff* %77, %struct.tcp_options_received* %6, i32 0, i32* null)
  %79 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %6, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %6, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load %struct.sock*, %struct.sock** %3, align 8
  %88 = call %struct.TYPE_28__* @sock_net(%struct.sock* %87)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = call %struct.TYPE_19__* @ip_hdr(%struct.sk_buff* %89)
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = call %struct.TYPE_19__* @ip_hdr(%struct.sk_buff* %93)
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @secure_tcp_ts_off(%struct.TYPE_28__* %88, i32 %92, i32 %96)
  store i64 %97, i64* %18, align 8
  %98 = load i64, i64* %18, align 8
  %99 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %6, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %100, %98
  store i64 %101, i64* %99, align 8
  br label %102

102:                                              ; preds = %86, %82, %69
  %103 = load %struct.sock*, %struct.sock** %3, align 8
  %104 = call %struct.TYPE_28__* @sock_net(%struct.sock* %103)
  %105 = call i32 @cookie_timestamp_decode(%struct.TYPE_28__* %104, %struct.tcp_options_received* %6)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  br label %344

108:                                              ; preds = %102
  store %struct.sock* null, %struct.sock** %12, align 8
  %109 = load %struct.sock*, %struct.sock** %3, align 8
  %110 = call %struct.request_sock* @inet_reqsk_alloc(i32* @tcp_request_sock_ops, %struct.sock* %109, i32 0)
  store %struct.request_sock* %110, %struct.request_sock** %13, align 8
  %111 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %112 = icmp ne %struct.request_sock* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  br label %344

114:                                              ; preds = %108
  %115 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %116 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %115)
  store %struct.inet_request_sock* %116, %struct.inet_request_sock** %7, align 8
  %117 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %118 = call %struct.tcp_request_sock* @tcp_rsk(%struct.request_sock* %117)
  store %struct.tcp_request_sock* %118, %struct.tcp_request_sock** %8, align 8
  %119 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %120 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i8* @ntohl(i32 %121)
  %123 = getelementptr i8, i8* %122, i64 -1
  %124 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %8, align 8
  %125 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %124, i32 0, i32 5
  store i8* %123, i8** %125, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %8, align 8
  %128 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %127, i32 0, i32 4
  store i8* %126, i8** %128, align 8
  %129 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %8, align 8
  %130 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %129, i32 0, i32 3
  store i64 0, i64* %130, align 8
  %131 = call i32 (...) @net_tx_rndhash()
  %132 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %8, align 8
  %133 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %14, align 4
  %135 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %136 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %138 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @ntohs(i32 %139)
  %141 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %142 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %141, i32 0, i32 13
  store i32 %140, i32* %142, align 4
  %143 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %144 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %147 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %146, i32 0, i32 12
  store i32 %145, i32* %147, align 8
  %148 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %149 = call i32 @req_to_sk(%struct.request_sock* %148)
  %150 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %151 = call %struct.TYPE_19__* @ip_hdr(%struct.sk_buff* %150)
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @sk_rcv_saddr_set(i32 %149, i32 %153)
  %155 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %156 = call i32 @req_to_sk(%struct.request_sock* %155)
  %157 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %158 = call %struct.TYPE_19__* @ip_hdr(%struct.sk_buff* %157)
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @sk_daddr_set(i32 %156, i32 %160)
  %162 = load %struct.sock*, %struct.sock** %3, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %164 = call i32 @inet_request_mark(%struct.sock* %162, %struct.sk_buff* %163)
  %165 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %166 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 4
  %167 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %6, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %170 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %169, i32 0, i32 11
  store i32 %168, i32* %170, align 4
  %171 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %6, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %174 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %173, i32 0, i32 10
  store i32 %172, i32* %174, align 8
  %175 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %6, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %178 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 8
  %179 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %6, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %182 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %181, i32 0, i32 9
  store i64 %180, i64* %182, align 8
  %183 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %6, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %114
  %187 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %6, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  br label %190

189:                                              ; preds = %114
  br label %190

190:                                              ; preds = %189, %186
  %191 = phi i32 [ %188, %186 ], [ 0, %189 ]
  %192 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %193 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %192, i32 0, i32 4
  store i32 %191, i32* %193, align 8
  %194 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %8, align 8
  %195 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %194, i32 0, i32 1
  store i64 0, i64* %195, align 8
  %196 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %8, align 8
  %197 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %196, i32 0, i32 0
  store i32 0, i32* %197, align 8
  %198 = load i32, i32* @CONFIG_SMC, align 4
  %199 = call i64 @IS_ENABLED(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %190
  %202 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %203 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %202, i32 0, i32 8
  store i64 0, i64* %203, align 8
  br label %204

204:                                              ; preds = %201, %190
  %205 = load %struct.sock*, %struct.sock** %3, align 8
  %206 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %207 = call i32 @inet_request_bound_dev_if(%struct.sock* %205, %struct.sk_buff* %206)
  %208 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %209 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %208, i32 0, i32 6
  store i32 %207, i32* %209, align 8
  %210 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %211 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %210, i32 0, i32 7
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.sock*, %struct.sock** %3, align 8
  %214 = call %struct.TYPE_28__* @sock_net(%struct.sock* %213)
  %215 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %216 = call i32 @tcp_v4_save_options(%struct.TYPE_28__* %214, %struct.sk_buff* %215)
  %217 = call i32 @RCU_INIT_POINTER(i32 %212, i32 %216)
  %218 = load %struct.sock*, %struct.sock** %3, align 8
  %219 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %220 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %221 = call i64 @security_inet_conn_request(%struct.sock* %218, %struct.sk_buff* %219, %struct.request_sock* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %204
  %224 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %225 = call i32 @reqsk_free(%struct.request_sock* %224)
  br label %344

226:                                              ; preds = %204
  %227 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %228 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %227, i32 0, i32 3
  store i64 0, i64* %228, align 8
  %229 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %230 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %233 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.sock*, %struct.sock** %3, align 8
  %236 = call i32 @RT_CONN_FLAGS(%struct.sock* %235)
  %237 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %238 = load i32, i32* @IPPROTO_TCP, align 4
  %239 = load %struct.sock*, %struct.sock** %3, align 8
  %240 = call i32 @inet_sk_flowi_flags(%struct.sock* %239)
  %241 = load %struct.ip_options*, %struct.ip_options** %5, align 8
  %242 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %226
  %246 = load %struct.ip_options*, %struct.ip_options** %5, align 8
  %247 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  br label %253

249:                                              ; preds = %226
  %250 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %251 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  br label %253

253:                                              ; preds = %249, %245
  %254 = phi i32 [ %248, %245 ], [ %252, %249 ]
  %255 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %256 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %259 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %262 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.sock*, %struct.sock** %3, align 8
  %265 = getelementptr inbounds %struct.sock, %struct.sock* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @flowi4_init_output(%struct.flowi4* %17, i32 %231, i32 %234, i32 %236, i32 %237, i32 %238, i32 %240, i32 %254, i32 %257, i32 %260, i32 %263, i32 %266)
  %268 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %269 = call i32 @flowi4_to_flowi(%struct.flowi4* %17)
  %270 = call i32 @security_req_classify_flow(%struct.request_sock* %268, i32 %269)
  %271 = load %struct.sock*, %struct.sock** %3, align 8
  %272 = call %struct.TYPE_28__* @sock_net(%struct.sock* %271)
  %273 = call %struct.rtable* @ip_route_output_key(%struct.TYPE_28__* %272, %struct.flowi4* %17)
  store %struct.rtable* %273, %struct.rtable** %15, align 8
  %274 = load %struct.rtable*, %struct.rtable** %15, align 8
  %275 = call i64 @IS_ERR(%struct.rtable* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %253
  %278 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %279 = call i32 @reqsk_free(%struct.request_sock* %278)
  br label %344

280:                                              ; preds = %253
  %281 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %282 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %280
  br label %292

286:                                              ; preds = %280
  %287 = load %struct.rtable*, %struct.rtable** %15, align 8
  %288 = getelementptr inbounds %struct.rtable, %struct.rtable* %287, i32 0, i32 0
  %289 = load i32, i32* @RTAX_WINDOW, align 4
  %290 = call i32 @dst_metric(i32* %288, i32 %289)
  %291 = sext i32 %290 to i64
  br label %292

292:                                              ; preds = %286, %285
  %293 = phi i64 [ %283, %285 ], [ %291, %286 ]
  %294 = trunc i64 %293 to i32
  %295 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %296 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %295, i32 0, i32 1
  store i32 %294, i32* %296, align 4
  %297 = load %struct.sock*, %struct.sock** %3, align 8
  %298 = load %struct.sock*, %struct.sock** %3, align 8
  %299 = call i32 @tcp_full_space(%struct.sock* %298)
  %300 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %301 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %304 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %303, i32 0, i32 2
  %305 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %306 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %305, i32 0, i32 1
  %307 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %308 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.rtable*, %struct.rtable** %15, align 8
  %311 = getelementptr inbounds %struct.rtable, %struct.rtable* %310, i32 0, i32 0
  %312 = load i32, i32* @RTAX_INITRWND, align 4
  %313 = call i32 @dst_metric(i32* %311, i32 %312)
  %314 = call i32 @tcp_select_initial_window(%struct.sock* %297, i32 %299, i32 %302, i32* %304, i32* %306, i32 %309, i32* %16, i32 %313)
  %315 = load i32, i32* %16, align 4
  %316 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %317 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %316, i32 0, i32 1
  store i32 %315, i32* %317, align 4
  %318 = load %struct.sock*, %struct.sock** %3, align 8
  %319 = call %struct.TYPE_28__* @sock_net(%struct.sock* %318)
  %320 = load %struct.rtable*, %struct.rtable** %15, align 8
  %321 = getelementptr inbounds %struct.rtable, %struct.rtable* %320, i32 0, i32 0
  %322 = call i32 @cookie_ecn_ok(%struct.tcp_options_received* %6, %struct.TYPE_28__* %319, i32* %321)
  %323 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %324 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %323, i32 0, i32 0
  store i32 %322, i32* %324, align 8
  %325 = load %struct.sock*, %struct.sock** %3, align 8
  %326 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %327 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %328 = load %struct.rtable*, %struct.rtable** %15, align 8
  %329 = getelementptr inbounds %struct.rtable, %struct.rtable* %328, i32 0, i32 0
  %330 = load i64, i64* %18, align 8
  %331 = call %struct.sock* @tcp_get_cookie_sock(%struct.sock* %325, %struct.sk_buff* %326, %struct.request_sock* %327, i32* %329, i64 %330)
  store %struct.sock* %331, %struct.sock** %12, align 8
  %332 = load %struct.sock*, %struct.sock** %12, align 8
  %333 = icmp ne %struct.sock* %332, null
  br i1 %333, label %334, label %343

334:                                              ; preds = %292
  %335 = load %struct.sock*, %struct.sock** %12, align 8
  %336 = call %struct.TYPE_20__* @inet_sk(%struct.sock* %335)
  %337 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %339, i32 0, i32 0
  %341 = bitcast %struct.flowi4* %340 to i8*
  %342 = bitcast %struct.flowi4* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %341, i8* align 4 %342, i64 4, i1 false)
  br label %343

343:                                              ; preds = %334, %292
  br label %344

344:                                              ; preds = %343, %277, %223, %113, %107, %64, %55, %50
  %345 = load %struct.sock*, %struct.sock** %12, align 8
  ret %struct.sock* %345
}

declare dso_local %struct.TYPE_21__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local %struct.TYPE_28__* @sock_net(%struct.sock*) #1

declare dso_local i64 @tcp_synq_no_recent_overflow(%struct.sock*) #1

declare dso_local i32 @__cookie_v4_check(%struct.TYPE_19__*, %struct.tcphdr*, i8*) #1

declare dso_local %struct.TYPE_19__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @__NET_INC_STATS(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @memset(%struct.tcp_options_received*, i32, i32) #1

declare dso_local i32 @tcp_parse_options(%struct.TYPE_28__*, %struct.sk_buff*, %struct.tcp_options_received*, i32, i32*) #1

declare dso_local i64 @secure_tcp_ts_off(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @cookie_timestamp_decode(%struct.TYPE_28__*, %struct.tcp_options_received*) #1

declare dso_local %struct.request_sock* @inet_reqsk_alloc(i32*, %struct.sock*, i32) #1

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.tcp_request_sock* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i32 @net_tx_rndhash(...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sk_rcv_saddr_set(i32, i32) #1

declare dso_local i32 @req_to_sk(%struct.request_sock*) #1

declare dso_local i32 @sk_daddr_set(i32, i32) #1

declare dso_local i32 @inet_request_mark(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @inet_request_bound_dev_if(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32) #1

declare dso_local i32 @tcp_v4_save_options(%struct.TYPE_28__*, %struct.sk_buff*) #1

declare dso_local i64 @security_inet_conn_request(%struct.sock*, %struct.sk_buff*, %struct.request_sock*) #1

declare dso_local i32 @reqsk_free(%struct.request_sock*) #1

declare dso_local i32 @flowi4_init_output(%struct.flowi4*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RT_CONN_FLAGS(%struct.sock*) #1

declare dso_local i32 @inet_sk_flowi_flags(%struct.sock*) #1

declare dso_local i32 @security_req_classify_flow(%struct.request_sock*, i32) #1

declare dso_local i32 @flowi4_to_flowi(%struct.flowi4*) #1

declare dso_local %struct.rtable* @ip_route_output_key(%struct.TYPE_28__*, %struct.flowi4*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @dst_metric(i32*, i32) #1

declare dso_local i32 @tcp_select_initial_window(%struct.sock*, i32, i32, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @tcp_full_space(%struct.sock*) #1

declare dso_local i32 @cookie_ecn_ok(%struct.tcp_options_received*, %struct.TYPE_28__*, i32*) #1

declare dso_local %struct.sock* @tcp_get_cookie_sock(%struct.sock*, %struct.sk_buff*, %struct.request_sock*, i32*, i64) #1

declare dso_local %struct.TYPE_20__* @inet_sk(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
