; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_fq.c_fq_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_fq.c_fq_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.fq_sched_data = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@TCA_FQ_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@fq_policy = common dso_local global i32 0, align 4
@TCA_FQ_BUCKETS_LOG = common dso_local global i64 0, align 8
@TCA_FQ_PLIMIT = common dso_local global i64 0, align 8
@TCA_FQ_FLOW_PLIMIT = common dso_local global i64 0, align 8
@TCA_FQ_QUANTUM = common dso_local global i64 0, align 8
@TCA_FQ_INITIAL_QUANTUM = common dso_local global i64 0, align 8
@TCA_FQ_FLOW_DEFAULT_RATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"sch_fq: defrate %u ignored.\0A\00", align 1
@TCA_FQ_FLOW_MAX_RATE = common dso_local global i64 0, align 8
@TCA_FQ_LOW_RATE_THRESHOLD = common dso_local global i64 0, align 8
@TCA_FQ_RATE_ENABLE = common dso_local global i64 0, align 8
@TCA_FQ_FLOW_REFILL_DELAY = common dso_local global i64 0, align 8
@TCA_FQ_ORPHAN_MASK = common dso_local global i64 0, align 8
@TCA_FQ_CE_THRESHOLD = common dso_local global i64 0, align 8
@NSEC_PER_USEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @fq_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fq_change(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.fq_sched_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.sk_buff*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %22 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %23 = call %struct.fq_sched_data* @qdisc_priv(%struct.Qdisc* %22)
  store %struct.fq_sched_data* %23, %struct.fq_sched_data** %8, align 8
  %24 = load i32, i32* @TCA_FQ_MAX, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %9, align 8
  %28 = alloca %struct.nlattr*, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %29 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %30 = icmp ne %struct.nlattr* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %278

34:                                               ; preds = %3
  %35 = load i32, i32* @TCA_FQ_MAX, align 4
  %36 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %37 = load i32, i32* @fq_policy, align 4
  %38 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %28, i32 %35, %struct.nlattr* %36, i32 %37, i32* null)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %278

43:                                               ; preds = %34
  %44 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %45 = call i32 @sch_tree_lock(%struct.Qdisc* %44)
  %46 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %47 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %14, align 4
  %49 = load i64, i64* @TCA_FQ_BUCKETS_LOG, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = icmp ne %struct.nlattr* %51, null
  br i1 %52, label %53, label %70

53:                                               ; preds = %43
  %54 = load i64, i64* @TCA_FQ_BUCKETS_LOG, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = call i32 @nla_get_u32(%struct.nlattr* %56)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp sge i32 %58, 1
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @ilog2(i32 262144)
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %14, align 4
  br label %69

66:                                               ; preds = %60, %53
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %66, %64
  br label %70

70:                                               ; preds = %69, %43
  %71 = load i64, i64* @TCA_FQ_PLIMIT, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = icmp ne %struct.nlattr* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i64, i64* @TCA_FQ_PLIMIT, align 8
  %77 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %76
  %78 = load %struct.nlattr*, %struct.nlattr** %77, align 8
  %79 = call i32 @nla_get_u32(%struct.nlattr* %78)
  %80 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %81 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %75, %70
  %83 = load i64, i64* @TCA_FQ_FLOW_PLIMIT, align 8
  %84 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %83
  %85 = load %struct.nlattr*, %struct.nlattr** %84, align 8
  %86 = icmp ne %struct.nlattr* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i64, i64* @TCA_FQ_FLOW_PLIMIT, align 8
  %89 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %88
  %90 = load %struct.nlattr*, %struct.nlattr** %89, align 8
  %91 = call i32 @nla_get_u32(%struct.nlattr* %90)
  %92 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %93 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %87, %82
  %95 = load i64, i64* @TCA_FQ_QUANTUM, align 8
  %96 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %95
  %97 = load %struct.nlattr*, %struct.nlattr** %96, align 8
  %98 = icmp ne %struct.nlattr* %97, null
  br i1 %98, label %99, label %114

99:                                               ; preds = %94
  %100 = load i64, i64* @TCA_FQ_QUANTUM, align 8
  %101 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %100
  %102 = load %struct.nlattr*, %struct.nlattr** %101, align 8
  %103 = call i32 @nla_get_u32(%struct.nlattr* %102)
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load i32, i32* %17, align 4
  %108 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %109 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  br label %113

110:                                              ; preds = %99
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %110, %106
  br label %114

114:                                              ; preds = %113, %94
  %115 = load i64, i64* @TCA_FQ_INITIAL_QUANTUM, align 8
  %116 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %115
  %117 = load %struct.nlattr*, %struct.nlattr** %116, align 8
  %118 = icmp ne %struct.nlattr* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load i64, i64* @TCA_FQ_INITIAL_QUANTUM, align 8
  %121 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %120
  %122 = load %struct.nlattr*, %struct.nlattr** %121, align 8
  %123 = call i32 @nla_get_u32(%struct.nlattr* %122)
  %124 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %125 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %119, %114
  %127 = load i64, i64* @TCA_FQ_FLOW_DEFAULT_RATE, align 8
  %128 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %127
  %129 = load %struct.nlattr*, %struct.nlattr** %128, align 8
  %130 = icmp ne %struct.nlattr* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load i64, i64* @TCA_FQ_FLOW_DEFAULT_RATE, align 8
  %133 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %132
  %134 = load %struct.nlattr*, %struct.nlattr** %133, align 8
  %135 = call i32 @nla_get_u32(%struct.nlattr* %134)
  %136 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %131, %126
  %138 = load i64, i64* @TCA_FQ_FLOW_MAX_RATE, align 8
  %139 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %138
  %140 = load %struct.nlattr*, %struct.nlattr** %139, align 8
  %141 = icmp ne %struct.nlattr* %140, null
  br i1 %141, label %142, label %157

142:                                              ; preds = %137
  %143 = load i64, i64* @TCA_FQ_FLOW_MAX_RATE, align 8
  %144 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %143
  %145 = load %struct.nlattr*, %struct.nlattr** %144, align 8
  %146 = call i32 @nla_get_u32(%struct.nlattr* %145)
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %18, align 4
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %153

150:                                              ; preds = %142
  %151 = load i32, i32* %18, align 4
  %152 = sext i32 %151 to i64
  br label %153

153:                                              ; preds = %150, %149
  %154 = phi i64 [ -1, %149 ], [ %152, %150 ]
  %155 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %156 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %155, i32 0, i32 4
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %153, %137
  %158 = load i64, i64* @TCA_FQ_LOW_RATE_THRESHOLD, align 8
  %159 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %158
  %160 = load %struct.nlattr*, %struct.nlattr** %159, align 8
  %161 = icmp ne %struct.nlattr* %160, null
  br i1 %161, label %162, label %169

162:                                              ; preds = %157
  %163 = load i64, i64* @TCA_FQ_LOW_RATE_THRESHOLD, align 8
  %164 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %163
  %165 = load %struct.nlattr*, %struct.nlattr** %164, align 8
  %166 = call i32 @nla_get_u32(%struct.nlattr* %165)
  %167 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %168 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %162, %157
  %170 = load i64, i64* @TCA_FQ_RATE_ENABLE, align 8
  %171 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %170
  %172 = load %struct.nlattr*, %struct.nlattr** %171, align 8
  %173 = icmp ne %struct.nlattr* %172, null
  br i1 %173, label %174, label %189

174:                                              ; preds = %169
  %175 = load i64, i64* @TCA_FQ_RATE_ENABLE, align 8
  %176 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %175
  %177 = load %struct.nlattr*, %struct.nlattr** %176, align 8
  %178 = call i32 @nla_get_u32(%struct.nlattr* %177)
  store i32 %178, i32* %19, align 4
  %179 = load i32, i32* %19, align 4
  %180 = icmp sle i32 %179, 1
  br i1 %180, label %181, label %185

181:                                              ; preds = %174
  %182 = load i32, i32* %19, align 4
  %183 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %184 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %183, i32 0, i32 6
  store i32 %182, i32* %184, align 4
  br label %188

185:                                              ; preds = %174
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %11, align 4
  br label %188

188:                                              ; preds = %185, %181
  br label %189

189:                                              ; preds = %188, %169
  %190 = load i64, i64* @TCA_FQ_FLOW_REFILL_DELAY, align 8
  %191 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %190
  %192 = load %struct.nlattr*, %struct.nlattr** %191, align 8
  %193 = icmp ne %struct.nlattr* %192, null
  br i1 %193, label %194, label %203

194:                                              ; preds = %189
  %195 = load i64, i64* @TCA_FQ_FLOW_REFILL_DELAY, align 8
  %196 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %195
  %197 = load %struct.nlattr*, %struct.nlattr** %196, align 8
  %198 = call i32 @nla_get_u32(%struct.nlattr* %197)
  store i32 %198, i32* %20, align 4
  %199 = load i32, i32* %20, align 4
  %200 = call i32 @usecs_to_jiffies(i32 %199)
  %201 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %202 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %201, i32 0, i32 9
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %194, %189
  %204 = load i64, i64* @TCA_FQ_ORPHAN_MASK, align 8
  %205 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %204
  %206 = load %struct.nlattr*, %struct.nlattr** %205, align 8
  %207 = icmp ne %struct.nlattr* %206, null
  br i1 %207, label %208, label %215

208:                                              ; preds = %203
  %209 = load i64, i64* @TCA_FQ_ORPHAN_MASK, align 8
  %210 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %209
  %211 = load %struct.nlattr*, %struct.nlattr** %210, align 8
  %212 = call i32 @nla_get_u32(%struct.nlattr* %211)
  %213 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %214 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %213, i32 0, i32 7
  store i32 %212, i32* %214, align 8
  br label %215

215:                                              ; preds = %208, %203
  %216 = load i64, i64* @TCA_FQ_CE_THRESHOLD, align 8
  %217 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %216
  %218 = load %struct.nlattr*, %struct.nlattr** %217, align 8
  %219 = icmp ne %struct.nlattr* %218, null
  br i1 %219, label %220, label %230

220:                                              ; preds = %215
  %221 = load i64, i64* @NSEC_PER_USEC, align 8
  %222 = trunc i64 %221 to i32
  %223 = load i64, i64* @TCA_FQ_CE_THRESHOLD, align 8
  %224 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %223
  %225 = load %struct.nlattr*, %struct.nlattr** %224, align 8
  %226 = call i32 @nla_get_u32(%struct.nlattr* %225)
  %227 = mul nsw i32 %222, %226
  %228 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %229 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %228, i32 0, i32 8
  store i32 %227, i32* %229, align 4
  br label %230

230:                                              ; preds = %220, %215
  %231 = load i32, i32* %11, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %241, label %233

233:                                              ; preds = %230
  %234 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %235 = call i32 @sch_tree_unlock(%struct.Qdisc* %234)
  %236 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %237 = load i32, i32* %14, align 4
  %238 = call i32 @fq_resize(%struct.Qdisc* %236, i32 %237)
  store i32 %238, i32* %11, align 4
  %239 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %240 = call i32 @sch_tree_lock(%struct.Qdisc* %239)
  br label %241

241:                                              ; preds = %233, %230
  br label %242

242:                                              ; preds = %258, %241
  %243 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %244 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %248 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = sext i32 %249 to i64
  %251 = icmp sgt i64 %246, %250
  br i1 %251, label %252, label %270

252:                                              ; preds = %242
  %253 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %254 = call %struct.sk_buff* @fq_dequeue(%struct.Qdisc* %253)
  store %struct.sk_buff* %254, %struct.sk_buff** %21, align 8
  %255 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %256 = icmp ne %struct.sk_buff* %255, null
  br i1 %256, label %258, label %257

257:                                              ; preds = %252
  br label %270

258:                                              ; preds = %252
  %259 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %260 = call i64 @qdisc_pkt_len(%struct.sk_buff* %259)
  %261 = load i32, i32* %13, align 4
  %262 = zext i32 %261 to i64
  %263 = add nsw i64 %262, %260
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %13, align 4
  %265 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %266 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %267 = call i32 @rtnl_kfree_skbs(%struct.sk_buff* %265, %struct.sk_buff* %266)
  %268 = load i32, i32* %12, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %12, align 4
  br label %242

270:                                              ; preds = %257, %242
  %271 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %272 = load i32, i32* %12, align 4
  %273 = load i32, i32* %13, align 4
  %274 = call i32 @qdisc_tree_reduce_backlog(%struct.Qdisc* %271, i32 %272, i32 %273)
  %275 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %276 = call i32 @sch_tree_unlock(%struct.Qdisc* %275)
  %277 = load i32, i32* %11, align 4
  store i32 %277, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %278

278:                                              ; preds = %270, %41, %31
  %279 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %279)
  %280 = load i32, i32* %4, align 4
  ret i32 %280
}

declare dso_local %struct.fq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

declare dso_local i32 @fq_resize(%struct.Qdisc*, i32) #1

declare dso_local %struct.sk_buff* @fq_dequeue(%struct.Qdisc*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_kfree_skbs(%struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_tree_reduce_backlog(%struct.Qdisc*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
