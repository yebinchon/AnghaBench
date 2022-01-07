; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_mqprio.c_mqprio_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_mqprio.c_mqprio_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.mqprio_sched = type { i32, i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.tc_mqprio_qopt = type { i32, i32*, i32*, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.Qdisc* }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TC_MQPRIO_F_MODE = common dso_local global i32 0, align 4
@TCA_MQPRIO_MODE = common dso_local global i32 0, align 4
@TC_MQPRIO_F_SHAPER = common dso_local global i32 0, align 4
@TCA_MQPRIO_SHAPER = common dso_local global i32 0, align 4
@TC_MQPRIO_F_MIN_RATE = common dso_local global i32 0, align 4
@TC_MQPRIO_F_MAX_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @mqprio_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqprio_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mqprio_sched*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.tc_mqprio_qopt, align 8
  %10 = alloca %struct.Qdisc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %15 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %14)
  store %struct.net_device* %15, %struct.net_device** %6, align 8
  %16 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %17 = call %struct.mqprio_sched* @qdisc_priv(%struct.Qdisc* %16)
  store %struct.mqprio_sched* %17, %struct.mqprio_sched** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i64 @skb_tail_pointer(%struct.sk_buff* %18)
  %20 = inttoptr i64 %19 to %struct.nlattr*
  store %struct.nlattr* %20, %struct.nlattr** %8, align 8
  %21 = bitcast %struct.tc_mqprio_qopt* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 40, i1 false)
  %22 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %23 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %26 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %25, i32 0, i32 1
  %27 = call i32 @memset(%struct.TYPE_12__* %26, i32 0, i32 48)
  %28 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %29 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %28, i32 0, i32 0
  %30 = call i32 @memset(%struct.TYPE_12__* %29, i32 0, i32 48)
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %137, %2
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %140

37:                                               ; preds = %31
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call %struct.TYPE_11__* @netdev_get_tx_queue(%struct.net_device* %38, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load %struct.Qdisc*, %struct.Qdisc** %41, align 8
  store %struct.Qdisc* %42, %struct.Qdisc** %10, align 8
  %43 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %44 = call i32 @qdisc_lock(%struct.Qdisc* %43)
  %45 = call i32 @spin_lock_bh(i32 %44)
  %46 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %47 = call i64 @qdisc_is_percpu_stats(%struct.Qdisc* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %37
  %50 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %51 = call i32 @qdisc_qlen_sum(%struct.Qdisc* %50)
  store i32 %51, i32* %13, align 4
  %52 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %53 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %52, i32 0, i32 1
  %54 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %55 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %58 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %57, i32 0, i32 1
  %59 = call i32 @__gnet_stats_copy_basic(i32* null, %struct.TYPE_12__* %53, i32 %56, %struct.TYPE_12__* %58)
  %60 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %61 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %60, i32 0, i32 0
  %62 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %63 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %66 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %65, i32 0, i32 0
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @__gnet_stats_copy_queue(%struct.TYPE_12__* %61, i32 %64, %struct.TYPE_12__* %66, i32 %67)
  br label %133

69:                                               ; preds = %37
  %70 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %71 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %75 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %73
  store i64 %78, i64* %76, align 8
  %79 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %80 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %84 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, %82
  store i64 %87, i64* %85, align 8
  %88 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %89 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %93 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %91
  store i64 %96, i64* %94, align 8
  %97 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %98 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %102 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %100
  store i64 %105, i64* %103, align 8
  %106 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %107 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %111 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %109
  store i64 %114, i64* %112, align 8
  %115 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %116 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %120 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, %118
  store i64 %123, i64* %121, align 8
  %124 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %125 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %129 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, %127
  store i64 %132, i64* %130, align 8
  br label %133

133:                                              ; preds = %69, %49
  %134 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %135 = call i32 @qdisc_lock(%struct.Qdisc* %134)
  %136 = call i32 @spin_unlock_bh(i32 %135)
  br label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %11, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %31

140:                                              ; preds = %31
  %141 = load %struct.net_device*, %struct.net_device** %6, align 8
  %142 = call i32 @netdev_get_num_tc(%struct.net_device* %141)
  %143 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %9, i32 0, i32 0
  store i32 %142, i32* %143, align 8
  %144 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %9, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.net_device*, %struct.net_device** %6, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @memcpy(i32 %145, i32 %148, i32 4)
  %150 = load %struct.mqprio_sched*, %struct.mqprio_sched** %7, align 8
  %151 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %9, i32 0, i32 3
  store i32 %152, i32* %153, align 8
  store i32 0, i32* %12, align 4
  br label %154

154:                                              ; preds = %186, %140
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.net_device*, %struct.net_device** %6, align 8
  %157 = call i32 @netdev_get_num_tc(%struct.net_device* %156)
  %158 = icmp ult i32 %155, %157
  br i1 %158, label %159, label %189

159:                                              ; preds = %154
  %160 = load %struct.net_device*, %struct.net_device** %6, align 8
  %161 = getelementptr inbounds %struct.net_device, %struct.net_device* %160, i32 0, i32 1
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %9, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %12, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %167, i32* %172, align 4
  %173 = load %struct.net_device*, %struct.net_device** %6, align 8
  %174 = getelementptr inbounds %struct.net_device, %struct.net_device* %173, i32 0, i32 1
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %9, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %12, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %180, i32* %185, align 4
  br label %186

186:                                              ; preds = %159
  %187 = load i32, i32* %12, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %12, align 4
  br label %154

189:                                              ; preds = %154
  %190 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %191 = load i32, i32* @TCA_OPTIONS, align 4
  %192 = call i32 @NLA_ALIGN(i32 40)
  %193 = call i64 @nla_put(%struct.sk_buff* %190, i32 %191, i32 %192, %struct.tc_mqprio_qopt* %9)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  br label %252

196:                                              ; preds = %189
  %197 = load %struct.mqprio_sched*, %struct.mqprio_sched** %7, align 8
  %198 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @TC_MQPRIO_F_MODE, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %196
  %204 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %205 = load i32, i32* @TCA_MQPRIO_MODE, align 4
  %206 = load %struct.mqprio_sched*, %struct.mqprio_sched** %7, align 8
  %207 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = call i64 @nla_put_u16(%struct.sk_buff* %204, i32 %205, i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %203
  br label %252

212:                                              ; preds = %203, %196
  %213 = load %struct.mqprio_sched*, %struct.mqprio_sched** %7, align 8
  %214 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @TC_MQPRIO_F_SHAPER, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %212
  %220 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %221 = load i32, i32* @TCA_MQPRIO_SHAPER, align 4
  %222 = load %struct.mqprio_sched*, %struct.mqprio_sched** %7, align 8
  %223 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i64 @nla_put_u16(%struct.sk_buff* %220, i32 %221, i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %219
  br label %252

228:                                              ; preds = %219, %212
  %229 = load %struct.mqprio_sched*, %struct.mqprio_sched** %7, align 8
  %230 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @TC_MQPRIO_F_MIN_RATE, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %242, label %235

235:                                              ; preds = %228
  %236 = load %struct.mqprio_sched*, %struct.mqprio_sched** %7, align 8
  %237 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @TC_MQPRIO_F_MAX_RATE, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %235, %228
  %243 = load %struct.mqprio_sched*, %struct.mqprio_sched** %7, align 8
  %244 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %245 = call i64 @dump_rates(%struct.mqprio_sched* %243, %struct.tc_mqprio_qopt* %9, %struct.sk_buff* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %242
  br label %252

248:                                              ; preds = %242, %235
  %249 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %250 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %251 = call i32 @nla_nest_end(%struct.sk_buff* %249, %struct.nlattr* %250)
  store i32 %251, i32* %3, align 4
  br label %256

252:                                              ; preds = %247, %227, %211, %195
  %253 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %254 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %255 = call i32 @nlmsg_trim(%struct.sk_buff* %253, %struct.nlattr* %254)
  store i32 -1, i32* %3, align 4
  br label %256

256:                                              ; preds = %252, %248
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.mqprio_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @skb_tail_pointer(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @spin_lock_bh(i32) #1

declare dso_local i32 @qdisc_lock(%struct.Qdisc*) #1

declare dso_local i64 @qdisc_is_percpu_stats(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_qlen_sum(%struct.Qdisc*) #1

declare dso_local i32 @__gnet_stats_copy_basic(i32*, %struct.TYPE_12__*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @__gnet_stats_copy_queue(%struct.TYPE_12__*, i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32) #1

declare dso_local i32 @netdev_get_num_tc(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_mqprio_qopt*) #1

declare dso_local i32 @NLA_ALIGN(i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @dump_rates(%struct.mqprio_sched*, %struct.tc_mqprio_qopt*, %struct.sk_buff*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
