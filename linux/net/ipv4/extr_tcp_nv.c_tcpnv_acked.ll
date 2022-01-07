; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_nv.c_tcpnv_acked.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_nv.c_tcpnv_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ack_sample = type { i32, i64 }
%struct.inet_connection_sock = type { i64 }
%struct.tcp_sock = type { i32, i32, i32, i32, i64 }
%struct.tcpnv = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@TCP_CA_Open = common dso_local global i64 0, align 8
@TCP_CA_Disorder = common dso_local global i64 0, align 8
@nv_min_cwnd = common dso_local global i32 0, align 4
@nv_rtt_factor = common dso_local global i32 0, align 4
@NV_INIT_RTT = common dso_local global i32 0, align 4
@nv_reset_period = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@NV_MIN_CWND = common dso_local global i32 0, align 4
@NV_TSO_CWND_BOUND = common dso_local global i32 0, align 4
@NV_MIN_CWND_GROW = common dso_local global i64 0, align 8
@nv_pad = common dso_local global i32 0, align 4
@nv_rtt_min_cnt = common dso_local global i32 0, align 4
@TCP_INFINITE_SSTHRESH = common dso_local global i32 0, align 4
@nv_ssthresh_eval_min_calls = common dso_local global i32 0, align 4
@nv_dec_eval_min_calls = common dso_local global i32 0, align 4
@nv_stop_rtt_cnt = common dso_local global i32 0, align 4
@nv_ssthresh_factor = common dso_local global i32 0, align 4
@nv_cong_dec_mult = common dso_local global i32 0, align 4
@nv_pad_buffer = common dso_local global i32 0, align 4
@nv_inc_eval_min_calls = common dso_local global i32 0, align 4
@nv_cwnd_growth_rate_neg = common dso_local global i64 0, align 8
@nv_cwnd_growth_rate_pos = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.ack_sample*)* @tcpnv_acked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpnv_acked(%struct.sock* %0, %struct.ack_sample* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.ack_sample*, align 8
  %5 = alloca %struct.inet_connection_sock*, align 8
  %6 = alloca %struct.tcp_sock*, align 8
  %7 = alloca %struct.tcpnv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.ack_sample* %1, %struct.ack_sample** %4, align 8
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %17)
  store %struct.inet_connection_sock* %18, %struct.inet_connection_sock** %5, align 8
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %19)
  store %struct.tcp_sock* %20, %struct.tcp_sock** %6, align 8
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = call %struct.tcpnv* @inet_csk_ca(%struct.sock* %21)
  store %struct.tcpnv* %22, %struct.tcpnv** %7, align 8
  %23 = load i64, i64* @jiffies, align 8
  store i64 %23, i64* %8, align 8
  store i32 0, i32* %14, align 4
  %24 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %25 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %488

29:                                               ; preds = %2
  %30 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %31 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TCP_CA_Open, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %37 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TCP_CA_Disorder, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %488

42:                                               ; preds = %35, %29
  %43 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %44 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %43, i32 0, i32 13
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %49 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @nv_min_cwnd, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %55 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %54, i32 0, i32 13
  store i64 0, i64* %55, align 8
  %56 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %57 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  br label %58

58:                                               ; preds = %53, %47, %42
  %59 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %60 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %63 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %61, %64
  store i32 %65, i32* %14, align 4
  %66 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %67 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %70 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %72 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %58
  br label %488

76:                                               ; preds = %58
  %77 = load i32, i32* @nv_rtt_factor, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %110

79:                                               ; preds = %76
  %80 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %81 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %79
  %85 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %86 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @nv_rtt_factor, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %91 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @nv_rtt_factor, align 4
  %94 = sub nsw i32 256, %93
  %95 = mul nsw i32 %92, %94
  %96 = add nsw i32 %89, %95
  %97 = ashr i32 %96, 8
  store i32 %97, i32* %13, align 4
  br label %106

98:                                               ; preds = %79
  %99 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %100 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = shl i32 %102, 1
  %104 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %105 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %98, %84
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %109 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  br label %114

110:                                              ; preds = %76
  %111 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %112 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %110, %106
  %115 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %116 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = mul nsw i32 %118, 80000
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %125

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124, %123
  %126 = phi i32 [ %121, %123 ], [ 1, %124 ]
  %127 = call i32 @do_div(i32 %120, i32 %126)
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %10, align 4
  %129 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %130 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %125
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %137 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %134, %125
  %139 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %140 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %141, 255
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %145 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %143, %138
  %149 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @nv_get_bounded_rtt(%struct.tcpnv* %149, i32 %150)
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %154 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %148
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %160 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %157, %148
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %164 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load i32, i32* %13, align 4
  %169 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %170 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %169, i32 0, i32 6
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %167, %161
  %172 = load i64, i64* %8, align 8
  %173 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %174 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %173, i32 0, i32 7
  %175 = load i64, i64* %174, align 8
  %176 = call i64 @time_after_eq(i64 %172, i64 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %210

178:                                              ; preds = %171
  %179 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %180 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %183 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* @NV_INIT_RTT, align 4
  %185 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %186 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %185, i32 0, i32 6
  store i32 %184, i32* %186, align 8
  %187 = call i32 @get_random_bytes(i8* %15, i32 1)
  %188 = load i64, i64* %8, align 8
  %189 = load i32, i32* @nv_reset_period, align 4
  %190 = load i8, i8* %15, align 1
  %191 = zext i8 %190 to i32
  %192 = add nsw i32 384, %191
  %193 = mul nsw i32 %189, %192
  %194 = load i32, i32* @HZ, align 4
  %195 = mul nsw i32 %193, %194
  %196 = ashr i32 %195, 9
  %197 = sext i32 %196 to i64
  %198 = add i64 %188, %197
  %199 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %200 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %199, i32 0, i32 7
  store i64 %198, i64* %200, align 8
  %201 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %202 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %201, i32 0, i32 8
  %203 = load i32, i32* %202, align 8
  %204 = sdiv i32 %203, 2
  %205 = load i32, i32* @NV_MIN_CWND, align 4
  %206 = call i8* @max(i32 %204, i32 %205)
  %207 = ptrtoint i8* %206 to i32
  %208 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %209 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %208, i32 0, i32 8
  store i32 %207, i32* %209, align 8
  br label %210

210:                                              ; preds = %178, %171
  %211 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %212 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %211, i32 0, i32 12
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %215 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i64 @before(i64 %213, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %488

219:                                              ; preds = %210
  %220 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %221 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %224 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %223, i32 0, i32 12
  store i64 %222, i64* %224, align 8
  %225 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %226 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %225, i32 0, i32 9
  %227 = load i32, i32* %226, align 4
  %228 = icmp slt i32 %227, 255
  br i1 %228, label %229, label %234

229:                                              ; preds = %219
  %230 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %231 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %230, i32 0, i32 9
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %229, %219
  %235 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %236 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %239, label %287

239:                                              ; preds = %234
  %240 = load i32, i32* %14, align 4
  %241 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %242 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %241, i32 0, i32 8
  %243 = load i32, i32* %242, align 8
  %244 = sub nsw i32 %243, 1
  %245 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %246 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = mul nsw i32 %244, %247
  %249 = icmp sge i32 %240, %248
  br i1 %249, label %250, label %287

250:                                              ; preds = %239
  %251 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %252 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %251, i32 0, i32 8
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @NV_TSO_CWND_BOUND, align 4
  %255 = add nsw i32 %254, 1
  %256 = icmp slt i32 %253, %255
  br i1 %256, label %257, label %287

257:                                              ; preds = %250
  %258 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %259 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %258, i32 0, i32 8
  %260 = load i32, i32* %259, align 8
  %261 = sext i32 %260 to i64
  %262 = load i64, i64* @NV_MIN_CWND_GROW, align 8
  %263 = add nsw i64 %261, %262
  %264 = load i32, i32* @NV_TSO_CWND_BOUND, align 4
  %265 = add nsw i32 %264, 1
  %266 = call i32 @min(i64 %263, i32 %265)
  %267 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %268 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %267, i32 0, i32 8
  store i32 %266, i32* %268, align 8
  %269 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %270 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %269, i32 0, i32 4
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %273 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %272, i32 0, i32 8
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %276 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = mul nsw i32 %274, %277
  %279 = sext i32 %278 to i64
  %280 = add nsw i64 %271, %279
  %281 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %282 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %281, i32 0, i32 12
  store i64 %280, i64* %282, align 8
  %283 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %284 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %283, i32 0, i32 5
  store i32 0, i32* %284, align 4
  %285 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %286 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %285, i32 0, i32 0
  store i32 1, i32* %286, align 8
  br label %488

287:                                              ; preds = %250, %239, %234
  %288 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %289 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %292 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = mul nsw i32 %290, %293
  %295 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %296 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = sext i32 %297 to i64
  %299 = mul i64 80000, %298
  %300 = call i64 @div64_u64(i32 %294, i64 %299)
  %301 = trunc i64 %300 to i32
  store i32 %301, i32* %12, align 4
  %302 = load i32, i32* %12, align 4
  %303 = load i32, i32* @nv_pad, align 4
  %304 = add nsw i32 %302, %303
  store i32 %304, i32* %11, align 4
  %305 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %306 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* %11, align 4
  %309 = icmp sgt i32 %307, %308
  br i1 %309, label %310, label %404

310:                                              ; preds = %287
  %311 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %312 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %311, i32 0, i32 9
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @nv_rtt_min_cnt, align 4
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %316, label %317

316:                                              ; preds = %310
  br label %488

317:                                              ; preds = %310
  %318 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %319 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @TCP_INFINITE_SSTHRESH, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %331

323:                                              ; preds = %317
  %324 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %325 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %324, i32 0, i32 5
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @nv_ssthresh_eval_min_calls, align 4
  %328 = icmp slt i32 %326, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %323
  br label %488

330:                                              ; preds = %323
  br label %353

331:                                              ; preds = %317
  %332 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %333 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %332, i32 0, i32 5
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @nv_dec_eval_min_calls, align 4
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %337, label %352

337:                                              ; preds = %331
  %338 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %339 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %351

342:                                              ; preds = %337
  %343 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %344 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %343, i32 0, i32 9
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @nv_stop_rtt_cnt, align 4
  %347 = icmp sgt i32 %345, %346
  br i1 %347, label %348, label %351

348:                                              ; preds = %342
  %349 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %350 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %349, i32 0, i32 0
  store i32 0, i32* %350, align 8
  br label %351

351:                                              ; preds = %348, %342, %337
  br label %488

352:                                              ; preds = %331
  br label %353

353:                                              ; preds = %352, %330
  br label %354

354:                                              ; preds = %353
  %355 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %356 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %355, i32 0, i32 0
  store i32 0, i32* %356, align 8
  %357 = load i32, i32* @nv_ssthresh_factor, align 4
  %358 = load i32, i32* %11, align 4
  %359 = mul nsw i32 %357, %358
  %360 = ashr i32 %359, 3
  %361 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %362 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %361, i32 0, i32 3
  store i32 %360, i32* %362, align 4
  %363 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %364 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* %11, align 4
  %367 = sub nsw i32 %365, %366
  %368 = icmp sgt i32 %367, 2
  br i1 %368, label %369, label %385

369:                                              ; preds = %354
  %370 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %371 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* %11, align 4
  %374 = sub nsw i32 %372, %373
  %375 = load i32, i32* @nv_cong_dec_mult, align 4
  %376 = mul nsw i32 %374, %375
  %377 = ashr i32 %376, 7
  %378 = call i8* @max(i32 2, i32 %377)
  %379 = ptrtoint i8* %378 to i32
  store i32 %379, i32* %16, align 4
  %380 = load i32, i32* %16, align 4
  %381 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %382 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = sub nsw i32 %383, %380
  store i32 %384, i32* %382, align 8
  br label %393

385:                                              ; preds = %354
  %386 = load i32, i32* @nv_cong_dec_mult, align 4
  %387 = icmp sgt i32 %386, 0
  br i1 %387, label %388, label %392

388:                                              ; preds = %385
  %389 = load i32, i32* %11, align 4
  %390 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %391 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %390, i32 0, i32 0
  store i32 %389, i32* %391, align 8
  br label %392

392:                                              ; preds = %388, %385
  br label %393

393:                                              ; preds = %392, %369
  %394 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %395 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %394, i32 0, i32 10
  %396 = load i64, i64* %395, align 8
  %397 = icmp sgt i64 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %393
  %399 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %400 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %399, i32 0, i32 10
  store i64 0, i64* %400, align 8
  br label %401

401:                                              ; preds = %398, %393
  %402 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %403 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %402, i32 0, i32 11
  store i64 0, i64* %403, align 8
  br label %471

404:                                              ; preds = %287
  %405 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %406 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = load i32, i32* %11, align 4
  %409 = load i32, i32* @nv_pad_buffer, align 4
  %410 = sub nsw i32 %408, %409
  %411 = icmp sle i32 %407, %410
  br i1 %411, label %412, label %469

412:                                              ; preds = %404
  %413 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %414 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %413, i32 0, i32 5
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* @nv_inc_eval_min_calls, align 4
  %417 = icmp slt i32 %415, %416
  br i1 %417, label %418, label %419

418:                                              ; preds = %412
  br label %488

419:                                              ; preds = %412
  %420 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %421 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %420, i32 0, i32 0
  store i32 1, i32* %421, align 8
  %422 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %423 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %422, i32 0, i32 11
  %424 = load i64, i64* %423, align 8
  %425 = add nsw i64 %424, 1
  store i64 %425, i64* %423, align 8
  %426 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %427 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %426, i32 0, i32 10
  %428 = load i64, i64* %427, align 8
  %429 = icmp slt i64 %428, 0
  br i1 %429, label %430, label %446

430:                                              ; preds = %419
  %431 = load i64, i64* @nv_cwnd_growth_rate_neg, align 8
  %432 = icmp sgt i64 %431, 0
  br i1 %432, label %433, label %446

433:                                              ; preds = %430
  %434 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %435 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %434, i32 0, i32 11
  %436 = load i64, i64* %435, align 8
  %437 = load i64, i64* @nv_cwnd_growth_rate_neg, align 8
  %438 = icmp sgt i64 %436, %437
  br i1 %438, label %439, label %446

439:                                              ; preds = %433
  %440 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %441 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %440, i32 0, i32 10
  %442 = load i64, i64* %441, align 8
  %443 = add nsw i64 %442, 1
  store i64 %443, i64* %441, align 8
  %444 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %445 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %444, i32 0, i32 11
  store i64 0, i64* %445, align 8
  br label %468

446:                                              ; preds = %433, %430, %419
  %447 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %448 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %447, i32 0, i32 10
  %449 = load i64, i64* %448, align 8
  %450 = icmp sge i64 %449, 0
  br i1 %450, label %451, label %467

451:                                              ; preds = %446
  %452 = load i64, i64* @nv_cwnd_growth_rate_pos, align 8
  %453 = icmp sgt i64 %452, 0
  br i1 %453, label %454, label %467

454:                                              ; preds = %451
  %455 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %456 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %455, i32 0, i32 11
  %457 = load i64, i64* %456, align 8
  %458 = load i64, i64* @nv_cwnd_growth_rate_pos, align 8
  %459 = icmp sgt i64 %457, %458
  br i1 %459, label %460, label %467

460:                                              ; preds = %454
  %461 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %462 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %461, i32 0, i32 10
  %463 = load i64, i64* %462, align 8
  %464 = add nsw i64 %463, 1
  store i64 %464, i64* %462, align 8
  %465 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %466 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %465, i32 0, i32 11
  store i64 0, i64* %466, align 8
  br label %467

467:                                              ; preds = %460, %454, %451, %446
  br label %468

468:                                              ; preds = %467, %439
  br label %470

469:                                              ; preds = %404
  br label %488

470:                                              ; preds = %468
  br label %471

471:                                              ; preds = %470, %401
  %472 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %473 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %472, i32 0, i32 5
  store i32 0, i32* %473, align 4
  %474 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %475 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %474, i32 0, i32 9
  store i32 0, i32* %475, align 4
  %476 = load %struct.tcpnv*, %struct.tcpnv** %7, align 8
  %477 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %476, i32 0, i32 4
  store i32 0, i32* %477, align 8
  %478 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %479 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = load i32, i32* @nv_min_cwnd, align 4
  %482 = icmp slt i32 %480, %481
  br i1 %482, label %483, label %487

483:                                              ; preds = %471
  %484 = load i32, i32* @nv_min_cwnd, align 4
  %485 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %486 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %485, i32 0, i32 0
  store i32 %484, i32* %486, align 8
  br label %487

487:                                              ; preds = %483, %471
  br label %488

488:                                              ; preds = %28, %41, %75, %257, %316, %329, %351, %418, %469, %487, %210
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.tcpnv* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @nv_get_bounded_rtt(%struct.tcpnv*, i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @get_random_bytes(i8*, i32) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i64 @before(i64, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i64 @div64_u64(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
