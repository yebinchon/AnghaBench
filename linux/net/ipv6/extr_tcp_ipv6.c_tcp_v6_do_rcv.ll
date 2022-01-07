; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_do_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_do_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.dst_entry* }
%struct.dst_entry = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* (%struct.dst_entry*, i32)* }
%struct.sk_buff = type { i64, i64 }
%struct.ipv6_pinfo = type { i32, i32, i64, i32, %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64 }
%struct.tcp_sock = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i32 0, align 4
@TCP_MIB_CSUMERRORS = common dso_local global i32 0, align 4
@TCP_MIB_INERRS = common dso_local global i32 0, align 4
@TCPF_CLOSE = common dso_local global i32 0, align 4
@TCPF_LISTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @tcp_v6_do_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_v6_do_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ipv6_pinfo*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tcp_sock*, align 8
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.ipv6_pinfo* @tcp_inet6_sk(%struct.sock* %11)
  store %struct.ipv6_pinfo* %12, %struct.ipv6_pinfo** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @ETH_P_IP, align 4
  %17 = call i64 @htons(i32 %16)
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @tcp_v4_do_rcv(%struct.sock* %20, %struct.sk_buff* %21)
  store i32 %22, i32* %3, align 4
  br label %283

23:                                               ; preds = %2
  %24 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %25 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call i32 @sk_gfp_mask(%struct.sock* %31, i32 %32)
  %34 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %30, i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %7, align 8
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @TCP_ESTABLISHED, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %88

41:                                               ; preds = %35
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 1
  %44 = load %struct.dst_entry*, %struct.dst_entry** %43, align 8
  store %struct.dst_entry* %44, %struct.dst_entry** %9, align 8
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @sock_rps_save_rxhash(%struct.sock* %45, %struct.sk_buff* %46)
  %48 = load %struct.sock*, %struct.sock** %4, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = call i32 @sk_mark_napi_id(%struct.sock* %48, %struct.sk_buff* %49)
  %51 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %52 = icmp ne %struct.dst_entry* %51, null
  br i1 %52, label %53, label %80

53:                                               ; preds = %41
  %54 = load %struct.sock*, %struct.sock** %4, align 8
  %55 = call %struct.TYPE_15__* @inet_sk(%struct.sock* %54)
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %74, label %62

62:                                               ; preds = %53
  %63 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %64 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32* (%struct.dst_entry*, i32)*, i32* (%struct.dst_entry*, i32)** %66, align 8
  %68 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %69 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %70 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = call i32* %67(%struct.dst_entry* %68, i32 %71)
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %62, %53
  %75 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %76 = call i32 @dst_release(%struct.dst_entry* %75)
  %77 = load %struct.sock*, %struct.sock** %4, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 1
  store %struct.dst_entry* null, %struct.dst_entry** %78, align 8
  br label %79

79:                                               ; preds = %74, %62
  br label %80

80:                                               ; preds = %79, %41
  %81 = load %struct.sock*, %struct.sock** %4, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = call i32 @tcp_rcv_established(%struct.sock* %81, %struct.sk_buff* %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = icmp ne %struct.sk_buff* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %162

87:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %283

88:                                               ; preds = %35
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = call i64 @tcp_checksum_complete(%struct.sk_buff* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %153

93:                                               ; preds = %88
  %94 = load %struct.sock*, %struct.sock** %4, align 8
  %95 = getelementptr inbounds %struct.sock, %struct.sock* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @TCP_LISTEN, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %125

99:                                               ; preds = %93
  %100 = load %struct.sock*, %struct.sock** %4, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = call %struct.sock* @tcp_v6_cookie_check(%struct.sock* %100, %struct.sk_buff* %101)
  store %struct.sock* %102, %struct.sock** %10, align 8
  %103 = load %struct.sock*, %struct.sock** %10, align 8
  %104 = icmp ne %struct.sock* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  br label %144

106:                                              ; preds = %99
  %107 = load %struct.sock*, %struct.sock** %10, align 8
  %108 = load %struct.sock*, %struct.sock** %4, align 8
  %109 = icmp ne %struct.sock* %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %106
  %111 = load %struct.sock*, %struct.sock** %4, align 8
  %112 = load %struct.sock*, %struct.sock** %10, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = call i64 @tcp_child_process(%struct.sock* %111, %struct.sock* %112, %struct.sk_buff* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %140

117:                                              ; preds = %110
  %118 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %119 = icmp ne %struct.sk_buff* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %122 = call i32 @__kfree_skb(%struct.sk_buff* %121)
  br label %123

123:                                              ; preds = %120, %117
  store i32 0, i32* %3, align 4
  br label %283

124:                                              ; preds = %106
  br label %129

125:                                              ; preds = %93
  %126 = load %struct.sock*, %struct.sock** %4, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = call i32 @sock_rps_save_rxhash(%struct.sock* %126, %struct.sk_buff* %127)
  br label %129

129:                                              ; preds = %125, %124
  %130 = load %struct.sock*, %struct.sock** %4, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = call i64 @tcp_rcv_state_process(%struct.sock* %130, %struct.sk_buff* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %140

135:                                              ; preds = %129
  %136 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %137 = icmp ne %struct.sk_buff* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  br label %162

139:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  br label %283

140:                                              ; preds = %134, %116
  %141 = load %struct.sock*, %struct.sock** %4, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %143 = call i32 @tcp_v6_send_reset(%struct.sock* %141, %struct.sk_buff* %142)
  br label %144

144:                                              ; preds = %153, %140, %105
  %145 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %146 = icmp ne %struct.sk_buff* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %149 = call i32 @__kfree_skb(%struct.sk_buff* %148)
  br label %150

150:                                              ; preds = %147, %144
  %151 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %152 = call i32 @kfree_skb(%struct.sk_buff* %151)
  store i32 0, i32* %3, align 4
  br label %283

153:                                              ; preds = %92
  %154 = load %struct.sock*, %struct.sock** %4, align 8
  %155 = call i32 @sock_net(%struct.sock* %154)
  %156 = load i32, i32* @TCP_MIB_CSUMERRORS, align 4
  %157 = call i32 @TCP_INC_STATS(i32 %155, i32 %156)
  %158 = load %struct.sock*, %struct.sock** %4, align 8
  %159 = call i32 @sock_net(%struct.sock* %158)
  %160 = load i32, i32* @TCP_MIB_INERRS, align 4
  %161 = call i32 @TCP_INC_STATS(i32 %159, i32 %160)
  br label %144

162:                                              ; preds = %138, %86
  %163 = load %struct.sock*, %struct.sock** %4, align 8
  %164 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %163)
  store %struct.tcp_sock* %164, %struct.tcp_sock** %8, align 8
  %165 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %166 = call %struct.TYPE_16__* @TCP_SKB_CB(%struct.sk_buff* %165)
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %170 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %168, %171
  br i1 %172, label %173, label %280

173:                                              ; preds = %162
  %174 = load %struct.sock*, %struct.sock** %4, align 8
  %175 = getelementptr inbounds %struct.sock, %struct.sock* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = shl i32 1, %176
  %178 = load i32, i32* @TCPF_CLOSE, align 4
  %179 = load i32, i32* @TCPF_LISTEN, align 4
  %180 = or i32 %178, %179
  %181 = and i32 %177, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %280, label %183

183:                                              ; preds = %173
  %184 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %185 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %197, label %190

190:                                              ; preds = %183
  %191 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %192 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %190, %183
  %198 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %199 = call i32 @tcp_v6_iif(%struct.sk_buff* %198)
  %200 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %201 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %200, i32 0, i32 6
  store i32 %199, i32* %201, align 4
  br label %202

202:                                              ; preds = %197, %190
  %203 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %204 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %216, label %209

209:                                              ; preds = %202
  %210 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %211 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %209, %202
  %217 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %218 = call %struct.TYPE_14__* @ipv6_hdr(%struct.sk_buff* %217)
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %222 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %221, i32 0, i32 5
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %216, %209
  %224 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %225 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %237, label %230

230:                                              ; preds = %223
  %231 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %232 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %230, %223
  %238 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %239 = call %struct.TYPE_14__* @ipv6_hdr(%struct.sk_buff* %238)
  %240 = call i32 @ip6_flowinfo(%struct.TYPE_14__* %239)
  %241 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %242 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %241, i32 0, i32 3
  store i32 %240, i32* %242, align 8
  br label %243

243:                                              ; preds = %237, %230
  %244 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %245 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %243
  %249 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %250 = call %struct.TYPE_14__* @ipv6_hdr(%struct.sk_buff* %249)
  %251 = call i32 @ip6_flowlabel(%struct.TYPE_14__* %250)
  %252 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %253 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 4
  br label %254

254:                                              ; preds = %248, %243
  %255 = load %struct.sock*, %struct.sock** %4, align 8
  %256 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %257 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %258 = call %struct.TYPE_16__* @TCP_SKB_CB(%struct.sk_buff* %257)
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 0
  %261 = call i64 @ipv6_opt_accepted(%struct.sock* %255, %struct.sk_buff* %256, i32* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %273

263:                                              ; preds = %254
  %264 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %265 = load %struct.sock*, %struct.sock** %4, align 8
  %266 = call i32 @skb_set_owner_r(%struct.sk_buff* %264, %struct.sock* %265)
  %267 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %268 = call i32 @tcp_v6_restore_cb(%struct.sk_buff* %267)
  %269 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %270 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %269, i32 0, i32 0
  %271 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %272 = call %struct.sk_buff* @xchg(i32* %270, %struct.sk_buff* %271)
  store %struct.sk_buff* %272, %struct.sk_buff** %7, align 8
  br label %279

273:                                              ; preds = %254
  %274 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %275 = call i32 @__kfree_skb(%struct.sk_buff* %274)
  %276 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %277 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %276, i32 0, i32 0
  %278 = call %struct.sk_buff* @xchg(i32* %277, %struct.sk_buff* null)
  store %struct.sk_buff* %278, %struct.sk_buff** %7, align 8
  br label %279

279:                                              ; preds = %273, %263
  br label %280

280:                                              ; preds = %279, %173, %162
  %281 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %282 = call i32 @kfree_skb(%struct.sk_buff* %281)
  store i32 0, i32* %3, align 4
  br label %283

283:                                              ; preds = %280, %150, %139, %123, %87, %19
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

declare dso_local %struct.ipv6_pinfo* @tcp_inet6_sk(%struct.sock*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @tcp_v4_do_rcv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @sk_gfp_mask(%struct.sock*, i32) #1

declare dso_local i32 @sock_rps_save_rxhash(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_mark_napi_id(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_15__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @tcp_rcv_established(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @tcp_checksum_complete(%struct.sk_buff*) #1

declare dso_local %struct.sock* @tcp_v6_cookie_check(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @tcp_child_process(%struct.sock*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @tcp_rcv_state_process(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_v6_send_reset(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @TCP_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_16__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @tcp_v6_iif(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_14__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip6_flowinfo(%struct.TYPE_14__*) #1

declare dso_local i32 @ip6_flowlabel(%struct.TYPE_14__*) #1

declare dso_local i64 @ipv6_opt_accepted(%struct.sock*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @tcp_v6_restore_cb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @xchg(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
