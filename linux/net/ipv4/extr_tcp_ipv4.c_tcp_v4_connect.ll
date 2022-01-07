; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i64, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.inet_sock = type { i64, i64, i32, i64, i64, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.flowi4 }
%struct.flowi4 = type { i64, i64 }
%struct.tcp_sock = type { i32, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i64, i64 }
%struct.rtable = type { i32, i32 }
%struct.ip_options_rcu = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64, i64 }
%struct.inet_timewait_death_row = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.inet_timewait_death_row }
%struct.TYPE_12__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTNOROUTES = common dso_local global i32 0, align 4
@RTCF_MULTICAST = common dso_local global i32 0, align 4
@RTCF_BROADCAST = common dso_local global i32 0, align 4
@TCP_MSS_DEFAULT = common dso_local global i32 0, align 4
@TCP_SYN_SENT = common dso_local global i32 0, align 4
@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_v4_connect(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.inet_sock*, align 8
  %10 = alloca %struct.tcp_sock*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.flowi4*, align 8
  %16 = alloca %struct.rtable*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ip_options_rcu*, align 8
  %19 = alloca %struct.inet_timewait_death_row*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %21 = bitcast %struct.sockaddr* %20 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %21, %struct.sockaddr_in** %8, align 8
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = call %struct.inet_sock* @inet_sk(%struct.sock* %22)
  store %struct.inet_sock* %23, %struct.inet_sock** %9, align 8
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %24)
  store %struct.tcp_sock* %25, %struct.tcp_sock** %10, align 8
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = call %struct.TYPE_20__* @sock_net(%struct.sock* %26)
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  store %struct.inet_timewait_death_row* %29, %struct.inet_timewait_death_row** %19, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %31, 24
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %334

36:                                               ; preds = %3
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AF_INET, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EAFNOSUPPORT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %334

45:                                               ; preds = %36
  %46 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %13, align 8
  store i64 %49, i64* %14, align 8
  %50 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %51 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sock*, %struct.sock** %5, align 8
  %54 = call i32 @lockdep_sock_is_held(%struct.sock* %53)
  %55 = call %struct.ip_options_rcu* @rcu_dereference_protected(i32 %52, i32 %54)
  store %struct.ip_options_rcu* %55, %struct.ip_options_rcu** %18, align 8
  %56 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %18, align 8
  %57 = icmp ne %struct.ip_options_rcu* %56, null
  br i1 %57, label %58, label %75

58:                                               ; preds = %45
  %59 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %18, align 8
  %60 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load i64, i64* %13, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %334

70:                                               ; preds = %64
  %71 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %18, align 8
  %72 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %14, align 8
  br label %75

75:                                               ; preds = %70, %58, %45
  %76 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %77 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %11, align 8
  %79 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %80 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %12, align 8
  %82 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %83 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  store %struct.flowi4* %86, %struct.flowi4** %15, align 8
  %87 = load %struct.flowi4*, %struct.flowi4** %15, align 8
  %88 = load i64, i64* %14, align 8
  %89 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %90 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.sock*, %struct.sock** %5, align 8
  %93 = call i32 @RT_CONN_FLAGS(%struct.sock* %92)
  %94 = load %struct.sock*, %struct.sock** %5, align 8
  %95 = getelementptr inbounds %struct.sock, %struct.sock* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @IPPROTO_TCP, align 4
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load %struct.sock*, %struct.sock** %5, align 8
  %101 = call %struct.rtable* @ip_route_connect(%struct.flowi4* %87, i64 %88, i64 %91, i32 %93, i32 %96, i32 %97, i64 %98, i64 %99, %struct.sock* %100)
  store %struct.rtable* %101, %struct.rtable** %16, align 8
  %102 = load %struct.rtable*, %struct.rtable** %16, align 8
  %103 = call i64 @IS_ERR(%struct.rtable* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %75
  %106 = load %struct.rtable*, %struct.rtable** %16, align 8
  %107 = call i32 @PTR_ERR(%struct.rtable* %106)
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* @ENETUNREACH, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load %struct.sock*, %struct.sock** %5, align 8
  %114 = call %struct.TYPE_20__* @sock_net(%struct.sock* %113)
  %115 = load i32, i32* @IPSTATS_MIB_OUTNOROUTES, align 4
  %116 = call i32 @IP_INC_STATS(%struct.TYPE_20__* %114, i32 %115)
  br label %117

117:                                              ; preds = %112, %105
  %118 = load i32, i32* %17, align 4
  store i32 %118, i32* %4, align 4
  br label %334

119:                                              ; preds = %75
  %120 = load %struct.rtable*, %struct.rtable** %16, align 8
  %121 = getelementptr inbounds %struct.rtable, %struct.rtable* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @RTCF_MULTICAST, align 4
  %124 = load i32, i32* @RTCF_BROADCAST, align 4
  %125 = or i32 %123, %124
  %126 = and i32 %122, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %119
  %129 = load %struct.rtable*, %struct.rtable** %16, align 8
  %130 = call i32 @ip_rt_put(%struct.rtable* %129)
  %131 = load i32, i32* @ENETUNREACH, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %334

133:                                              ; preds = %119
  %134 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %18, align 8
  %135 = icmp ne %struct.ip_options_rcu* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %18, align 8
  %138 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %136, %133
  %143 = load %struct.flowi4*, %struct.flowi4** %15, align 8
  %144 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %13, align 8
  br label %146

146:                                              ; preds = %142, %136
  %147 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %148 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %146
  %152 = load %struct.flowi4*, %struct.flowi4** %15, align 8
  %153 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %156 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %155, i32 0, i32 3
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %151, %146
  %158 = load %struct.sock*, %struct.sock** %5, align 8
  %159 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %160 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @sk_rcv_saddr_set(%struct.sock* %158, i64 %161)
  %163 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %164 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %195

168:                                              ; preds = %157
  %169 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %170 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %13, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %195

174:                                              ; preds = %168
  %175 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %176 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 2
  store i64 0, i64* %177, align 8
  %178 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %179 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 1
  store i64 0, i64* %180, align 8
  %181 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %182 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = call i64 @likely(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %174
  %190 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %191 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @WRITE_ONCE(i32 %192, i32 0)
  br label %194

194:                                              ; preds = %189, %174
  br label %195

195:                                              ; preds = %194, %168, %157
  %196 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %197 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %200 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %199, i32 0, i32 1
  store i64 %198, i64* %200, align 8
  %201 = load %struct.sock*, %struct.sock** %5, align 8
  %202 = load i64, i64* %13, align 8
  %203 = call i32 @sk_daddr_set(%struct.sock* %201, i64 %202)
  %204 = load %struct.sock*, %struct.sock** %5, align 8
  %205 = call %struct.TYPE_12__* @inet_csk(%struct.sock* %204)
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  store i64 0, i64* %206, align 8
  %207 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %18, align 8
  %208 = icmp ne %struct.ip_options_rcu* %207, null
  br i1 %208, label %209, label %217

209:                                              ; preds = %195
  %210 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %18, align 8
  %211 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.sock*, %struct.sock** %5, align 8
  %215 = call %struct.TYPE_12__* @inet_csk(%struct.sock* %214)
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  store i64 %213, i64* %216, align 8
  br label %217

217:                                              ; preds = %209, %195
  %218 = load i32, i32* @TCP_MSS_DEFAULT, align 4
  %219 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %220 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 0
  store i32 %218, i32* %221, align 8
  %222 = load %struct.sock*, %struct.sock** %5, align 8
  %223 = load i32, i32* @TCP_SYN_SENT, align 4
  %224 = call i32 @tcp_set_state(%struct.sock* %222, i32 %223)
  %225 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %19, align 8
  %226 = load %struct.sock*, %struct.sock** %5, align 8
  %227 = call i32 @inet_hash_connect(%struct.inet_timewait_death_row* %225, %struct.sock* %226)
  store i32 %227, i32* %17, align 4
  %228 = load i32, i32* %17, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %217
  br label %323

231:                                              ; preds = %217
  %232 = load %struct.sock*, %struct.sock** %5, align 8
  %233 = call i32 @sk_set_txhash(%struct.sock* %232)
  %234 = load %struct.flowi4*, %struct.flowi4** %15, align 8
  %235 = load %struct.rtable*, %struct.rtable** %16, align 8
  %236 = load i64, i64* %11, align 8
  %237 = load i64, i64* %12, align 8
  %238 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %239 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %242 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.sock*, %struct.sock** %5, align 8
  %245 = call %struct.rtable* @ip_route_newports(%struct.flowi4* %234, %struct.rtable* %235, i64 %236, i64 %237, i64 %240, i64 %243, %struct.sock* %244)
  store %struct.rtable* %245, %struct.rtable** %16, align 8
  %246 = load %struct.rtable*, %struct.rtable** %16, align 8
  %247 = call i64 @IS_ERR(%struct.rtable* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %231
  %250 = load %struct.rtable*, %struct.rtable** %16, align 8
  %251 = call i32 @PTR_ERR(%struct.rtable* %250)
  store i32 %251, i32* %17, align 4
  store %struct.rtable* null, %struct.rtable** %16, align 8
  br label %323

252:                                              ; preds = %231
  %253 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %254 = load %struct.sock*, %struct.sock** %5, align 8
  %255 = getelementptr inbounds %struct.sock, %struct.sock* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 8
  %256 = load %struct.sock*, %struct.sock** %5, align 8
  %257 = load %struct.rtable*, %struct.rtable** %16, align 8
  %258 = getelementptr inbounds %struct.rtable, %struct.rtable* %257, i32 0, i32 1
  %259 = call i32 @sk_setup_caps(%struct.sock* %256, i32* %258)
  store %struct.rtable* null, %struct.rtable** %16, align 8
  %260 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %261 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  %264 = xor i1 %263, true
  %265 = zext i1 %264 to i32
  %266 = call i64 @likely(i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %303

268:                                              ; preds = %252
  %269 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %270 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %291, label %273

273:                                              ; preds = %268
  %274 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %275 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %278 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %277, i32 0, i32 3
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %281 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %284 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %283, i32 0, i32 4
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %287 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = call i32 @secure_tcp_seq(i64 %279, i64 %282, i64 %285, i64 %288)
  %290 = call i32 @WRITE_ONCE(i32 %276, i32 %289)
  br label %291

291:                                              ; preds = %273, %268
  %292 = load %struct.sock*, %struct.sock** %5, align 8
  %293 = call %struct.TYPE_20__* @sock_net(%struct.sock* %292)
  %294 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %295 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %294, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %298 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = call i32 @secure_tcp_ts_off(%struct.TYPE_20__* %293, i64 %296, i64 %299)
  %301 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %302 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %301, i32 0, i32 0
  store i32 %300, i32* %302, align 8
  br label %303

303:                                              ; preds = %291, %252
  %304 = call i32 (...) @prandom_u32()
  %305 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %306 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %305, i32 0, i32 2
  store i32 %304, i32* %306, align 8
  %307 = load %struct.sock*, %struct.sock** %5, align 8
  %308 = call i64 @tcp_fastopen_defer_connect(%struct.sock* %307, i32* %17)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %303
  %311 = load i32, i32* %17, align 4
  store i32 %311, i32* %4, align 4
  br label %334

312:                                              ; preds = %303
  %313 = load i32, i32* %17, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %312
  br label %323

316:                                              ; preds = %312
  %317 = load %struct.sock*, %struct.sock** %5, align 8
  %318 = call i32 @tcp_connect(%struct.sock* %317)
  store i32 %318, i32* %17, align 4
  %319 = load i32, i32* %17, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %316
  br label %323

322:                                              ; preds = %316
  store i32 0, i32* %4, align 4
  br label %334

323:                                              ; preds = %321, %315, %249, %230
  %324 = load %struct.sock*, %struct.sock** %5, align 8
  %325 = load i32, i32* @TCP_CLOSE, align 4
  %326 = call i32 @tcp_set_state(%struct.sock* %324, i32 %325)
  %327 = load %struct.rtable*, %struct.rtable** %16, align 8
  %328 = call i32 @ip_rt_put(%struct.rtable* %327)
  %329 = load %struct.sock*, %struct.sock** %5, align 8
  %330 = getelementptr inbounds %struct.sock, %struct.sock* %329, i32 0, i32 0
  store i64 0, i64* %330, align 8
  %331 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %332 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %331, i32 0, i32 1
  store i64 0, i64* %332, align 8
  %333 = load i32, i32* %17, align 4
  store i32 %333, i32* %4, align 4
  br label %334

334:                                              ; preds = %323, %322, %310, %128, %117, %67, %42, %33
  %335 = load i32, i32* %4, align 4
  ret i32 %335
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_20__* @sock_net(%struct.sock*) #1

declare dso_local %struct.ip_options_rcu* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_sock_is_held(%struct.sock*) #1

declare dso_local %struct.rtable* @ip_route_connect(%struct.flowi4*, i64, i64, i32, i32, i32, i64, i64, %struct.sock*) #1

declare dso_local i32 @RT_CONN_FLAGS(%struct.sock*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @PTR_ERR(%struct.rtable*) #1

declare dso_local i32 @IP_INC_STATS(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i32 @sk_rcv_saddr_set(%struct.sock*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @sk_daddr_set(%struct.sock*, i64) #1

declare dso_local %struct.TYPE_12__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @tcp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @inet_hash_connect(%struct.inet_timewait_death_row*, %struct.sock*) #1

declare dso_local i32 @sk_set_txhash(%struct.sock*) #1

declare dso_local %struct.rtable* @ip_route_newports(%struct.flowi4*, %struct.rtable*, i64, i64, i64, i64, %struct.sock*) #1

declare dso_local i32 @sk_setup_caps(%struct.sock*, i32*) #1

declare dso_local i32 @secure_tcp_seq(i64, i64, i64, i64) #1

declare dso_local i32 @secure_tcp_ts_off(%struct.TYPE_20__*, i64, i64) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i64 @tcp_fastopen_defer_connect(%struct.sock*, i32*) #1

declare dso_local i32 @tcp_connect(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
