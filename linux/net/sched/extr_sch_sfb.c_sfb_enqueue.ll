; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfb.c_sfb_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfb.c_sfb_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.sfb_sched_data = type { i64, i64, i64, i64, i32, i64, i64, i64, %struct.TYPE_7__, %struct.TYPE_5__*, i32, %struct.Qdisc* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.sfb_bucket**, i32 }
%struct.sfb_bucket = type { i64, i64 }
%struct.tcf_proto = type { i32 }
%struct.TYPE_8__ = type { i64* }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SFB_LEVELS = common dso_local global i32 0, align 4
@SFB_BUCKET_MASK = common dso_local global i64 0, align 8
@SFB_BUCKET_SHIFT = common dso_local global i64 0, align 8
@SFB_MAX_PROB = common dso_local global i64 0, align 8
@NET_XMIT_CN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @sfb_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfb_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.sfb_sched_data*, align 8
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca %struct.tcf_proto*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.sfb_bucket*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.sfb_bucket*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %24 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %25 = call %struct.sfb_sched_data* @qdisc_priv(%struct.Qdisc* %24)
  store %struct.sfb_sched_data* %25, %struct.sfb_sched_data** %8, align 8
  %26 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %27 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %26, i32 0, i32 11
  %28 = load %struct.Qdisc*, %struct.Qdisc** %27, align 8
  store %struct.Qdisc* %28, %struct.Qdisc** %9, align 8
  store i64 -1, i64* %12, align 8
  store i64 -1, i64* %13, align 8
  %29 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %30 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %16, align 8
  %32 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %33 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %17, align 4
  %35 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %36 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %40 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %3
  %47 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %48 = call i32 @qdisc_qstats_overlimit(%struct.Qdisc* %47)
  %49 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %50 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %49, i32 0, i32 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %429

54:                                               ; preds = %3
  %55 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %56 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ugt i64 %57, 0
  br i1 %58, label %59, label %107

59:                                               ; preds = %54
  %60 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %61 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %64 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %62, %65
  store i64 %66, i64* %18, align 8
  %67 = load i64, i64* @jiffies, align 8
  %68 = load i64, i64* %18, align 8
  %69 = call i32 @time_after(i64 %67, i64 %68)
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %74 = call i32 @sfb_swap_slot(%struct.sfb_sched_data* %73)
  %75 = load i64, i64* @jiffies, align 8
  %76 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %77 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %76, i32 0, i32 3
  store i64 %75, i64* %77, align 8
  br label %106

78:                                               ; preds = %59
  %79 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %80 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %78
  %84 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %85 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp ugt i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load i64, i64* @jiffies, align 8
  %90 = load i64, i64* %18, align 8
  %91 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %92 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = sub i64 %90, %93
  %95 = call i32 @time_after(i64 %89, i64 %94)
  %96 = icmp ne i32 %95, 0
  br label %97

97:                                               ; preds = %88, %83, %78
  %98 = phi i1 [ false, %83 ], [ false, %78 ], [ %96, %88 ]
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %104 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %103, i32 0, i32 4
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %97
  br label %106

106:                                              ; preds = %105, %72
  br label %107

107:                                              ; preds = %106, %54
  %108 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %109 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %108, i32 0, i32 10
  %110 = load i32, i32* %109, align 8
  %111 = call %struct.tcf_proto* @rcu_dereference_bh(i32 %110)
  store %struct.tcf_proto* %111, %struct.tcf_proto** %10, align 8
  %112 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %113 = icmp ne %struct.tcf_proto* %112, null
  br i1 %113, label %114, label %129

114:                                              ; preds = %107
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %117 = call i32 @sfb_classify(%struct.sk_buff* %115, %struct.tcf_proto* %116, i32* %17, i64* %19)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  br label %435

120:                                              ; preds = %114
  %121 = load i64, i64* %19, align 8
  %122 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %123 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %122, i32 0, i32 9
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = load i64, i64* %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = call i64 @siphash_1u32(i64 %121, i32* %127)
  store i64 %128, i64* %15, align 8
  br label %138

129:                                              ; preds = %107
  %130 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %131 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %132 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %131, i32 0, i32 9
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = load i64, i64* %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = call i64 @skb_get_hash_perturb(%struct.sk_buff* %130, i32* %136)
  store i64 %137, i64* %15, align 8
  br label %138

138:                                              ; preds = %129, %120
  %139 = load i64, i64* %15, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  store i64 1, i64* %15, align 8
  br label %142

142:                                              ; preds = %141, %138
  %143 = load i64, i64* %15, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %145 = call %struct.TYPE_8__* @sfb_skb_cb(%struct.sk_buff* %144)
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* %16, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  store i64 %143, i64* %149, align 8
  store i32 0, i32* %11, align 4
  br label %150

150:                                              ; preds = %216, %142
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @SFB_LEVELS, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %219

154:                                              ; preds = %150
  %155 = load i64, i64* %15, align 8
  %156 = load i64, i64* @SFB_BUCKET_MASK, align 8
  %157 = and i64 %155, %156
  store i64 %157, i64* %20, align 8
  %158 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %159 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %158, i32 0, i32 9
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = load i64, i64* %16, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load %struct.sfb_bucket**, %struct.sfb_bucket*** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.sfb_bucket*, %struct.sfb_bucket** %164, i64 %166
  %168 = load %struct.sfb_bucket*, %struct.sfb_bucket** %167, align 8
  %169 = load i64, i64* %20, align 8
  %170 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %168, i64 %169
  store %struct.sfb_bucket* %170, %struct.sfb_bucket** %21, align 8
  %171 = load i64, i64* @SFB_BUCKET_SHIFT, align 8
  %172 = load i64, i64* %15, align 8
  %173 = lshr i64 %172, %171
  store i64 %173, i64* %15, align 8
  %174 = load %struct.sfb_bucket*, %struct.sfb_bucket** %21, align 8
  %175 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %154
  %179 = load %struct.sfb_bucket*, %struct.sfb_bucket** %21, align 8
  %180 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %181 = call i32 @decrement_prob(%struct.sfb_bucket* %179, %struct.sfb_sched_data* %180)
  br label %195

182:                                              ; preds = %154
  %183 = load %struct.sfb_bucket*, %struct.sfb_bucket** %21, align 8
  %184 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %187 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %186, i32 0, i32 6
  %188 = load i64, i64* %187, align 8
  %189 = icmp sge i64 %185, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %182
  %191 = load %struct.sfb_bucket*, %struct.sfb_bucket** %21, align 8
  %192 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %193 = call i32 @increment_prob(%struct.sfb_bucket* %191, %struct.sfb_sched_data* %192)
  br label %194

194:                                              ; preds = %190, %182
  br label %195

195:                                              ; preds = %194, %178
  %196 = load i64, i64* %13, align 8
  %197 = load %struct.sfb_bucket*, %struct.sfb_bucket** %21, align 8
  %198 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ugt i64 %196, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = load %struct.sfb_bucket*, %struct.sfb_bucket** %21, align 8
  %203 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %13, align 8
  br label %205

205:                                              ; preds = %201, %195
  %206 = load i64, i64* %12, align 8
  %207 = load %struct.sfb_bucket*, %struct.sfb_bucket** %21, align 8
  %208 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp ugt i64 %206, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %205
  %212 = load %struct.sfb_bucket*, %struct.sfb_bucket** %21, align 8
  %213 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %12, align 8
  br label %215

215:                                              ; preds = %211, %205
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %11, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %11, align 4
  br label %150

219:                                              ; preds = %150
  %220 = load i64, i64* %16, align 8
  %221 = xor i64 %220, 1
  store i64 %221, i64* %16, align 8
  %222 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %223 = call %struct.TYPE_8__* @sfb_skb_cb(%struct.sk_buff* %222)
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load i64*, i64** %224, align 8
  %226 = load i64, i64* %16, align 8
  %227 = getelementptr inbounds i64, i64* %225, i64 %226
  store i64 0, i64* %227, align 8
  %228 = load i64, i64* %13, align 8
  %229 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %230 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %229, i32 0, i32 7
  %231 = load i64, i64* %230, align 8
  %232 = icmp uge i64 %228, %231
  %233 = zext i1 %232 to i32
  %234 = call i64 @unlikely(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %219
  %237 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %238 = call i32 @qdisc_qstats_overlimit(%struct.Qdisc* %237)
  %239 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %240 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %239, i32 0, i32 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %241, align 8
  br label %429

244:                                              ; preds = %219
  %245 = load i64, i64* %12, align 8
  %246 = load i64, i64* @SFB_MAX_PROB, align 8
  %247 = icmp uge i64 %245, %246
  %248 = zext i1 %247 to i32
  %249 = call i64 @unlikely(i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %340

251:                                              ; preds = %244
  %252 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %253 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %326

256:                                              ; preds = %251
  %257 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %258 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %259 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %258, i32 0, i32 9
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %259, align 8
  %261 = load i64, i64* %16, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 1
  %264 = call i64 @skb_get_hash_perturb(%struct.sk_buff* %257, i32* %263)
  store i64 %264, i64* %15, align 8
  %265 = load i64, i64* %15, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %256
  store i64 1, i64* %15, align 8
  br label %268

268:                                              ; preds = %267, %256
  %269 = load i64, i64* %15, align 8
  %270 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %271 = call %struct.TYPE_8__* @sfb_skb_cb(%struct.sk_buff* %270)
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 0
  %273 = load i64*, i64** %272, align 8
  %274 = load i64, i64* %16, align 8
  %275 = getelementptr inbounds i64, i64* %273, i64 %274
  store i64 %269, i64* %275, align 8
  store i32 0, i32* %11, align 4
  br label %276

276:                                              ; preds = %322, %268
  %277 = load i32, i32* %11, align 4
  %278 = load i32, i32* @SFB_LEVELS, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %325

280:                                              ; preds = %276
  %281 = load i64, i64* %15, align 8
  %282 = load i64, i64* @SFB_BUCKET_MASK, align 8
  %283 = and i64 %281, %282
  store i64 %283, i64* %22, align 8
  %284 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %285 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %284, i32 0, i32 9
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %285, align 8
  %287 = load i64, i64* %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 0
  %290 = load %struct.sfb_bucket**, %struct.sfb_bucket*** %289, align 8
  %291 = load i32, i32* %11, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.sfb_bucket*, %struct.sfb_bucket** %290, i64 %292
  %294 = load %struct.sfb_bucket*, %struct.sfb_bucket** %293, align 8
  %295 = load i64, i64* %22, align 8
  %296 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %294, i64 %295
  store %struct.sfb_bucket* %296, %struct.sfb_bucket** %23, align 8
  %297 = load i64, i64* @SFB_BUCKET_SHIFT, align 8
  %298 = load i64, i64* %15, align 8
  %299 = lshr i64 %298, %297
  store i64 %299, i64* %15, align 8
  %300 = load %struct.sfb_bucket*, %struct.sfb_bucket** %23, align 8
  %301 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %280
  %305 = load %struct.sfb_bucket*, %struct.sfb_bucket** %23, align 8
  %306 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %307 = call i32 @decrement_prob(%struct.sfb_bucket* %305, %struct.sfb_sched_data* %306)
  br label %321

308:                                              ; preds = %280
  %309 = load %struct.sfb_bucket*, %struct.sfb_bucket** %23, align 8
  %310 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %313 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %312, i32 0, i32 6
  %314 = load i64, i64* %313, align 8
  %315 = icmp sge i64 %311, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %308
  %317 = load %struct.sfb_bucket*, %struct.sfb_bucket** %23, align 8
  %318 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %319 = call i32 @increment_prob(%struct.sfb_bucket* %317, %struct.sfb_sched_data* %318)
  br label %320

320:                                              ; preds = %316, %308
  br label %321

321:                                              ; preds = %320, %304
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %11, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %11, align 4
  br label %276

325:                                              ; preds = %276
  br label %326

326:                                              ; preds = %325, %251
  %327 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %328 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %329 = call i64 @sfb_rate_limit(%struct.sk_buff* %327, %struct.sfb_sched_data* %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %339

331:                                              ; preds = %326
  %332 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %333 = call i32 @qdisc_qstats_overlimit(%struct.Qdisc* %332)
  %334 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %335 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %334, i32 0, i32 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %336, align 4
  br label %429

339:                                              ; preds = %326
  br label %391

340:                                              ; preds = %244
  %341 = call i64 (...) @prandom_u32()
  %342 = load i64, i64* @SFB_MAX_PROB, align 8
  %343 = and i64 %341, %342
  store i64 %343, i64* %14, align 8
  %344 = load i64, i64* %14, align 8
  %345 = load i64, i64* %12, align 8
  %346 = icmp ult i64 %344, %345
  %347 = zext i1 %346 to i32
  %348 = call i64 @unlikely(i32 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %390

350:                                              ; preds = %340
  %351 = load i64, i64* %12, align 8
  %352 = load i64, i64* @SFB_MAX_PROB, align 8
  %353 = udiv i64 %352, 2
  %354 = icmp ugt i64 %351, %353
  %355 = zext i1 %354 to i32
  %356 = call i64 @unlikely(i32 %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %373

358:                                              ; preds = %350
  %359 = load i64, i64* %14, align 8
  %360 = load i64, i64* %12, align 8
  %361 = load i64, i64* @SFB_MAX_PROB, align 8
  %362 = udiv i64 %361, 2
  %363 = sub i64 %360, %362
  %364 = mul i64 %363, 2
  %365 = icmp ult i64 %359, %364
  br i1 %365, label %366, label %372

366:                                              ; preds = %358
  %367 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %368 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %367, i32 0, i32 8
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %369, align 4
  br label %429

372:                                              ; preds = %358
  br label %373

373:                                              ; preds = %372, %350
  %374 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %375 = call i64 @INET_ECN_set_ce(%struct.sk_buff* %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %383

377:                                              ; preds = %373
  %378 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %379 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %378, i32 0, i32 8
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %380, align 8
  br label %389

383:                                              ; preds = %373
  %384 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %385 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %384, i32 0, i32 8
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %386, align 4
  br label %429

389:                                              ; preds = %377
  br label %390

390:                                              ; preds = %389, %340
  br label %391

391:                                              ; preds = %390, %339
  %392 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %393 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %394 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %395 = call i32 @qdisc_enqueue(%struct.sk_buff* %392, %struct.Qdisc* %393, %struct.sk_buff** %394)
  store i32 %395, i32* %17, align 4
  %396 = load i32, i32* %17, align 4
  %397 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %398 = icmp eq i32 %396, %397
  %399 = zext i1 %398 to i32
  %400 = call i64 @likely(i32 %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %414

402:                                              ; preds = %391
  %403 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %404 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %405 = call i32 @qdisc_qstats_backlog_inc(%struct.Qdisc* %403, %struct.sk_buff* %404)
  %406 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %407 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = add nsw i64 %409, 1
  store i64 %410, i64* %408, align 8
  %411 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %412 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %413 = call i32 @increment_qlen(%struct.sk_buff* %411, %struct.sfb_sched_data* %412)
  br label %427

414:                                              ; preds = %391
  %415 = load i32, i32* %17, align 4
  %416 = call i64 @net_xmit_drop_count(i32 %415)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %426

418:                                              ; preds = %414
  %419 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %420 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %419, i32 0, i32 8
  %421 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %421, align 8
  %424 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %425 = call i32 @qdisc_qstats_drop(%struct.Qdisc* %424)
  br label %426

426:                                              ; preds = %418, %414
  br label %427

427:                                              ; preds = %426, %402
  %428 = load i32, i32* %17, align 4
  store i32 %428, i32* %4, align 4
  br label %447

429:                                              ; preds = %383, %366, %331, %236, %46
  %430 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %431 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %432 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %433 = call i32 @qdisc_drop(%struct.sk_buff* %430, %struct.Qdisc* %431, %struct.sk_buff** %432)
  %434 = load i32, i32* @NET_XMIT_CN, align 4
  store i32 %434, i32* %4, align 4
  br label %447

435:                                              ; preds = %119
  %436 = load i32, i32* %17, align 4
  %437 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %438 = and i32 %436, %437
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %443

440:                                              ; preds = %435
  %441 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %442 = call i32 @qdisc_qstats_drop(%struct.Qdisc* %441)
  br label %443

443:                                              ; preds = %440, %435
  %444 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %445 = call i32 @kfree_skb(%struct.sk_buff* %444)
  %446 = load i32, i32* %17, align 4
  store i32 %446, i32* %4, align 4
  br label %447

447:                                              ; preds = %443, %429, %427
  %448 = load i32, i32* %4, align 4
  ret i32 %448
}

declare dso_local %struct.sfb_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qdisc_qstats_overlimit(%struct.Qdisc*) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @sfb_swap_slot(%struct.sfb_sched_data*) #1

declare dso_local %struct.tcf_proto* @rcu_dereference_bh(i32) #1

declare dso_local i32 @sfb_classify(%struct.sk_buff*, %struct.tcf_proto*, i32*, i64*) #1

declare dso_local i64 @siphash_1u32(i64, i32*) #1

declare dso_local i64 @skb_get_hash_perturb(%struct.sk_buff*, i32*) #1

declare dso_local %struct.TYPE_8__* @sfb_skb_cb(%struct.sk_buff*) #1

declare dso_local i32 @decrement_prob(%struct.sfb_bucket*, %struct.sfb_sched_data*) #1

declare dso_local i32 @increment_prob(%struct.sfb_bucket*, %struct.sfb_sched_data*) #1

declare dso_local i64 @sfb_rate_limit(%struct.sk_buff*, %struct.sfb_sched_data*) #1

declare dso_local i64 @prandom_u32(...) #1

declare dso_local i64 @INET_ECN_set_ce(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_enqueue(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @qdisc_qstats_backlog_inc(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @increment_qlen(%struct.sk_buff*, %struct.sfb_sched_data*) #1

declare dso_local i64 @net_xmit_drop_count(i32) #1

declare dso_local i32 @qdisc_qstats_drop(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
