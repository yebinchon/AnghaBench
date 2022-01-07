; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_gred.c_gred_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_gred.c_gred_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.Qdisc = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.gred_sched_data = type { i64, i64, %struct.TYPE_8__, i32, %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.gred_sched = type { i64, i64, %struct.gred_sched_data** }

@GRED_VQ_MASK = common dso_local global i64 0, align 8
@NET_XMIT_CN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @gred_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gred_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.gred_sched_data*, align 8
  %9 = alloca %struct.gred_sched*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  store %struct.gred_sched_data* null, %struct.gred_sched_data** %8, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %14 = call %struct.gred_sched* @qdisc_priv(%struct.Qdisc* %13)
  store %struct.gred_sched* %14, %struct.gred_sched** %9, align 8
  store i64 0, i64* %10, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i64 @tc_index_to_dp(%struct.sk_buff* %15)
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load %struct.gred_sched*, %struct.gred_sched** %9, align 8
  %19 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp uge i64 %17, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = load %struct.gred_sched*, %struct.gred_sched** %9, align 8
  %24 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %23, i32 0, i32 2
  %25 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %24, align 8
  %26 = load i64, i64* %11, align 8
  %27 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %25, i64 %26
  %28 = load %struct.gred_sched_data*, %struct.gred_sched_data** %27, align 8
  store %struct.gred_sched_data* %28, %struct.gred_sched_data** %8, align 8
  %29 = icmp eq %struct.gred_sched_data* %28, null
  br i1 %29, label %30, label %73

30:                                               ; preds = %22, %3
  %31 = load %struct.gred_sched*, %struct.gred_sched** %9, align 8
  %32 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  %34 = load %struct.gred_sched*, %struct.gred_sched** %9, align 8
  %35 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %34, i32 0, i32 2
  %36 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %36, i64 %37
  %39 = load %struct.gred_sched_data*, %struct.gred_sched_data** %38, align 8
  store %struct.gred_sched_data* %39, %struct.gred_sched_data** %8, align 8
  %40 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %41 = icmp ne %struct.gred_sched_data* %40, null
  br i1 %41, label %62, label %42

42:                                               ; preds = %30
  %43 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %44 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i64 @qdisc_pkt_len(%struct.sk_buff* %47)
  %49 = add nsw i64 %46, %48
  %50 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %51 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sle i64 %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @likely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %42
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %60 = call i32 @qdisc_enqueue_tail(%struct.sk_buff* %58, %struct.Qdisc* %59)
  store i32 %60, i32* %4, align 4
  br label %292

61:                                               ; preds = %42
  br label %281

62:                                               ; preds = %30
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @GRED_VQ_MASK, align 8
  %67 = xor i64 %66, -1
  %68 = and i64 %65, %67
  %69 = load i64, i64* %11, align 8
  %70 = or i64 %68, %69
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %62, %22
  %74 = load %struct.gred_sched*, %struct.gred_sched** %9, align 8
  %75 = call i64 @gred_wred_mode(%struct.gred_sched* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %141, label %77

77:                                               ; preds = %73
  %78 = load %struct.gred_sched*, %struct.gred_sched** %9, align 8
  %79 = call i64 @gred_rio_mode(%struct.gred_sched* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %141

81:                                               ; preds = %77
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %137, %81
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.gred_sched*, %struct.gred_sched** %9, align 8
  %86 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ult i64 %84, %87
  br i1 %88, label %89, label %140

89:                                               ; preds = %82
  %90 = load %struct.gred_sched*, %struct.gred_sched** %9, align 8
  %91 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %90, i32 0, i32 2
  %92 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %92, i64 %94
  %96 = load %struct.gred_sched_data*, %struct.gred_sched_data** %95, align 8
  %97 = icmp ne %struct.gred_sched_data* %96, null
  br i1 %97, label %98, label %136

98:                                               ; preds = %89
  %99 = load %struct.gred_sched*, %struct.gred_sched** %9, align 8
  %100 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %99, i32 0, i32 2
  %101 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %101, i64 %103
  %105 = load %struct.gred_sched_data*, %struct.gred_sched_data** %104, align 8
  %106 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %109 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %107, %110
  br i1 %111, label %112, label %136

112:                                              ; preds = %98
  %113 = load %struct.gred_sched*, %struct.gred_sched** %9, align 8
  %114 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %113, i32 0, i32 2
  %115 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %115, i64 %117
  %119 = load %struct.gred_sched_data*, %struct.gred_sched_data** %118, align 8
  %120 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %119, i32 0, i32 4
  %121 = call i64 @red_is_idling(%struct.TYPE_9__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %136, label %123

123:                                              ; preds = %112
  %124 = load %struct.gred_sched*, %struct.gred_sched** %9, align 8
  %125 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %124, i32 0, i32 2
  %126 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %126, i64 %128
  %130 = load %struct.gred_sched_data*, %struct.gred_sched_data** %129, align 8
  %131 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %10, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %10, align 8
  br label %136

136:                                              ; preds = %123, %112, %98, %89
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %12, align 4
  br label %82

140:                                              ; preds = %82
  br label %141

141:                                              ; preds = %140, %77, %73
  %142 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %143 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %147 = call i64 @qdisc_pkt_len(%struct.sk_buff* %146)
  %148 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %149 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %147
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %149, align 4
  %154 = load %struct.gred_sched*, %struct.gred_sched** %9, align 8
  %155 = call i64 @gred_wred_mode(%struct.gred_sched* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %141
  %158 = load %struct.gred_sched*, %struct.gred_sched** %9, align 8
  %159 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %160 = call i32 @gred_load_wred_set(%struct.gred_sched* %158, %struct.gred_sched_data* %159)
  br label %161

161:                                              ; preds = %157, %141
  %162 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %163 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %162, i32 0, i32 5
  %164 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %165 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %164, i32 0, i32 4
  %166 = load %struct.gred_sched*, %struct.gred_sched** %9, align 8
  %167 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %168 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %169 = call i64 @gred_backlog(%struct.gred_sched* %166, %struct.gred_sched_data* %167, %struct.Qdisc* %168)
  %170 = call i64 @red_calc_qavg(i32* %163, %struct.TYPE_9__* %165, i64 %169)
  %171 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %172 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  store i64 %170, i64* %173, align 8
  %174 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %175 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %174, i32 0, i32 4
  %176 = call i64 @red_is_idling(%struct.TYPE_9__* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %161
  %179 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %180 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %179, i32 0, i32 4
  %181 = call i32 @red_end_of_idle_period(%struct.TYPE_9__* %180)
  br label %182

182:                                              ; preds = %178, %161
  %183 = load %struct.gred_sched*, %struct.gred_sched** %9, align 8
  %184 = call i64 @gred_wred_mode(%struct.gred_sched* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %182
  %187 = load %struct.gred_sched*, %struct.gred_sched** %9, align 8
  %188 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %189 = call i32 @gred_store_wred_set(%struct.gred_sched* %187, %struct.gred_sched_data* %188)
  br label %190

190:                                              ; preds = %186, %182
  %191 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %192 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %191, i32 0, i32 5
  %193 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %194 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %193, i32 0, i32 4
  %195 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %196 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* %10, align 8
  %200 = add i64 %198, %199
  %201 = call i32 @red_action(i32* %192, %struct.TYPE_9__* %194, i64 %200)
  switch i32 %201, label %251 [
    i32 130, label %202
    i32 128, label %203
    i32 129, label %225
  ]

202:                                              ; preds = %190
  br label %251

203:                                              ; preds = %190
  %204 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %205 = call i32 @qdisc_qstats_overlimit(%struct.Qdisc* %204)
  %206 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %207 = call i32 @gred_use_ecn(%struct.gred_sched_data* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %203
  %210 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %211 = call i32 @INET_ECN_set_ce(%struct.sk_buff* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %209, %203
  %214 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %215 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 8
  br label %286

219:                                              ; preds = %209
  %220 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %221 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 4
  br label %251

225:                                              ; preds = %190
  %226 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %227 = call i32 @qdisc_qstats_overlimit(%struct.Qdisc* %226)
  %228 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %229 = call i32 @gred_use_harddrop(%struct.gred_sched_data* %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %239, label %231

231:                                              ; preds = %225
  %232 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %233 = call i32 @gred_use_ecn(%struct.gred_sched_data* %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %237 = call i32 @INET_ECN_set_ce(%struct.sk_buff* %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %245, label %239

239:                                              ; preds = %235, %231, %225
  %240 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %241 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 8
  br label %286

245:                                              ; preds = %235
  %246 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %247 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 4
  br label %251

251:                                              ; preds = %190, %245, %219, %202
  %252 = load %struct.gred_sched*, %struct.gred_sched** %9, align 8
  %253 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %254 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %255 = call i64 @gred_backlog(%struct.gred_sched* %252, %struct.gred_sched_data* %253, %struct.Qdisc* %254)
  %256 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %257 = call i64 @qdisc_pkt_len(%struct.sk_buff* %256)
  %258 = add nsw i64 %255, %257
  %259 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %260 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = icmp sle i64 %258, %261
  br i1 %262, label %263, label %275

263:                                              ; preds = %251
  %264 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %265 = call i64 @qdisc_pkt_len(%struct.sk_buff* %264)
  %266 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %267 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %269, %265
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %267, align 4
  %272 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %273 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %274 = call i32 @qdisc_enqueue_tail(%struct.sk_buff* %272, %struct.Qdisc* %273)
  store i32 %274, i32* %4, align 4
  br label %292

275:                                              ; preds = %251
  %276 = load %struct.gred_sched_data*, %struct.gred_sched_data** %8, align 8
  %277 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %278, align 8
  br label %281

281:                                              ; preds = %275, %61
  %282 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %283 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %284 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %285 = call i32 @qdisc_drop(%struct.sk_buff* %282, %struct.Qdisc* %283, %struct.sk_buff** %284)
  store i32 %285, i32* %4, align 4
  br label %292

286:                                              ; preds = %239, %213
  %287 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %288 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %289 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %290 = call i32 @qdisc_drop(%struct.sk_buff* %287, %struct.Qdisc* %288, %struct.sk_buff** %289)
  %291 = load i32, i32* @NET_XMIT_CN, align 4
  store i32 %291, i32* %4, align 4
  br label %292

292:                                              ; preds = %286, %281, %263, %57
  %293 = load i32, i32* %4, align 4
  ret i32 %293
}

declare dso_local %struct.gred_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @tc_index_to_dp(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_enqueue_tail(%struct.sk_buff*, %struct.Qdisc*) #1

declare dso_local i64 @gred_wred_mode(%struct.gred_sched*) #1

declare dso_local i64 @gred_rio_mode(%struct.gred_sched*) #1

declare dso_local i64 @red_is_idling(%struct.TYPE_9__*) #1

declare dso_local i32 @gred_load_wred_set(%struct.gred_sched*, %struct.gred_sched_data*) #1

declare dso_local i64 @red_calc_qavg(i32*, %struct.TYPE_9__*, i64) #1

declare dso_local i64 @gred_backlog(%struct.gred_sched*, %struct.gred_sched_data*, %struct.Qdisc*) #1

declare dso_local i32 @red_end_of_idle_period(%struct.TYPE_9__*) #1

declare dso_local i32 @gred_store_wred_set(%struct.gred_sched*, %struct.gred_sched_data*) #1

declare dso_local i32 @red_action(i32*, %struct.TYPE_9__*, i64) #1

declare dso_local i32 @qdisc_qstats_overlimit(%struct.Qdisc*) #1

declare dso_local i32 @gred_use_ecn(%struct.gred_sched_data*) #1

declare dso_local i32 @INET_ECN_set_ce(%struct.sk_buff*) #1

declare dso_local i32 @gred_use_harddrop(%struct.gred_sched_data*) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
