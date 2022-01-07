; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_police.c_tcf_police_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_police.c_tcf_police_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tcf_chain = type { i32 }
%struct.tc_police = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.tcf_police = type { i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qdisc_rate_table = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.tc_action_net = type { i32 }
%struct.tcf_police_params = type { i32, i32, i32, i32, i64, i32, i8*, i32, i32 }

@TC_ACT_OK = common dso_local global i32 0, align 4
@TCA_POLICE_MAX = common dso_local global i32 0, align 4
@police_net_id = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@police_policy = common dso_local global i32 0, align 4
@TCA_POLICE_TBF = common dso_local global i64 0, align 8
@act_police_ops = common dso_local global i32 0, align 4
@ACT_P_CREATED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TCA_POLICE_RATE = common dso_local global i64 0, align 8
@TCA_POLICE_PEAKRATE = common dso_local global i64 0, align 8
@TCA_POLICE_AVRATE = common dso_local global i64 0, align 8
@TCA_POLICE_RESULT = common dso_local global i64 0, align 8
@TC_ACT_GOTO_CHAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"goto chain not allowed on fallback\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@TCA_POLICE_RATE64 = common dso_local global i64 0, align 8
@TCA_POLICE_PEAKRATE64 = common dso_local global i64 0, align 8
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr*, %struct.nlattr*, %struct.tc_action**, i32, i32, i32, %struct.tcf_proto*, %struct.netlink_ext_ack*)* @tcf_police_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_police_init(%struct.net* %0, %struct.nlattr* %1, %struct.nlattr* %2, %struct.tc_action** %3, i32 %4, i32 %5, i32 %6, %struct.tcf_proto* %7, %struct.netlink_ext_ack* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca %struct.tc_action**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.tcf_proto*, align 8
  %19 = alloca %struct.netlink_ext_ack*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.tcf_chain*, align 8
  %27 = alloca %struct.tc_police*, align 8
  %28 = alloca %struct.tcf_police*, align 8
  %29 = alloca %struct.qdisc_rate_table*, align 8
  %30 = alloca %struct.qdisc_rate_table*, align 8
  %31 = alloca %struct.tc_action_net*, align 8
  %32 = alloca %struct.tcf_police_params*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.nlattr* %1, %struct.nlattr** %12, align 8
  store %struct.nlattr* %2, %struct.nlattr** %13, align 8
  store %struct.tc_action** %3, %struct.tc_action*** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.tcf_proto* %7, %struct.tcf_proto** %18, align 8
  store %struct.netlink_ext_ack* %8, %struct.netlink_ext_ack** %19, align 8
  store i32 0, i32* %20, align 4
  %38 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %38, i32* %21, align 4
  %39 = load i32, i32* @TCA_POLICE_MAX, align 4
  %40 = add nsw i32 %39, 1
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %24, align 8
  %43 = alloca %struct.nlattr*, i64 %41, align 16
  store i64 %41, i64* %25, align 8
  store %struct.tcf_chain* null, %struct.tcf_chain** %26, align 8
  store %struct.qdisc_rate_table* null, %struct.qdisc_rate_table** %29, align 8
  store %struct.qdisc_rate_table* null, %struct.qdisc_rate_table** %30, align 8
  %44 = load %struct.net*, %struct.net** %11, align 8
  %45 = load i32, i32* @police_net_id, align 4
  %46 = call %struct.tc_action_net* @net_generic(%struct.net* %44, i32 %45)
  store %struct.tc_action_net* %46, %struct.tc_action_net** %31, align 8
  store i32 0, i32* %33, align 4
  %47 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %48 = icmp eq %struct.nlattr* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %9
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %466

52:                                               ; preds = %9
  %53 = load i32, i32* @TCA_POLICE_MAX, align 4
  %54 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %55 = load i32, i32* @police_policy, align 4
  %56 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %43, i32 %53, %struct.nlattr* %54, i32 %55, i32* null)
  store i32 %56, i32* %22, align 4
  %57 = load i32, i32* %22, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %22, align 4
  store i32 %60, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %466

61:                                               ; preds = %52
  %62 = load i64, i64* @TCA_POLICE_TBF, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = icmp eq %struct.nlattr* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %466

69:                                               ; preds = %61
  %70 = load i64, i64* @TCA_POLICE_TBF, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = call i32 @nla_len(%struct.nlattr* %72)
  store i32 %73, i32* %23, align 4
  %74 = load i32, i32* %23, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp ne i64 %75, 40
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = load i32, i32* %23, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp ne i64 %79, 4
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %466

84:                                               ; preds = %77, %69
  %85 = load i64, i64* @TCA_POLICE_TBF, align 8
  %86 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %85
  %87 = load %struct.nlattr*, %struct.nlattr** %86, align 8
  %88 = call %struct.tc_police* @nla_data(%struct.nlattr* %87)
  store %struct.tc_police* %88, %struct.tc_police** %27, align 8
  %89 = load %struct.tc_police*, %struct.tc_police** %27, align 8
  %90 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %34, align 4
  %92 = load %struct.tc_action_net*, %struct.tc_action_net** %31, align 8
  %93 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @tcf_idr_check_alloc(%struct.tc_action_net* %92, i32* %34, %struct.tc_action** %93, i32 %94)
  store i32 %95, i32* %22, align 4
  %96 = load i32, i32* %22, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %84
  %99 = load i32, i32* %22, align 4
  store i32 %99, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %466

100:                                              ; preds = %84
  %101 = load i32, i32* %22, align 4
  store i32 %101, i32* %33, align 4
  %102 = load i32, i32* %33, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* %16, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 0, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %466

108:                                              ; preds = %104, %100
  %109 = load i32, i32* %33, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %131, label %111

111:                                              ; preds = %108
  %112 = load %struct.tc_action_net*, %struct.tc_action_net** %31, align 8
  %113 = load i32, i32* %34, align 4
  %114 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @tcf_idr_create(%struct.tc_action_net* %112, i32 %113, i32* null, %struct.tc_action** %114, i32* @act_police_ops, i32 %115, i32 1)
  store i32 %116, i32* %20, align 4
  %117 = load i32, i32* %20, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %111
  %120 = load %struct.tc_action_net*, %struct.tc_action_net** %31, align 8
  %121 = load i32, i32* %34, align 4
  %122 = call i32 @tcf_idr_cleanup(%struct.tc_action_net* %120, i32 %121)
  %123 = load i32, i32* %20, align 4
  store i32 %123, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %466

124:                                              ; preds = %111
  %125 = load i32, i32* @ACT_P_CREATED, align 4
  store i32 %125, i32* %20, align 4
  %126 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %127 = load %struct.tc_action*, %struct.tc_action** %126, align 8
  %128 = call %struct.tcf_police* @to_police(%struct.tc_action* %127)
  %129 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %128, i32 0, i32 2
  %130 = call i32 @spin_lock_init(i32* %129)
  br label %142

131:                                              ; preds = %108
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %131
  %135 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %136 = load %struct.tc_action*, %struct.tc_action** %135, align 8
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @tcf_idr_release(%struct.tc_action* %136, i32 %137)
  %139 = load i32, i32* @EEXIST, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %466

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %141, %124
  %143 = load %struct.tc_police*, %struct.tc_police** %27, align 8
  %144 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.tcf_proto*, %struct.tcf_proto** %18, align 8
  %147 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %148 = call i32 @tcf_action_check_ctrlact(i32 %145, %struct.tcf_proto* %146, %struct.tcf_chain** %26, %struct.netlink_ext_ack* %147)
  store i32 %148, i32* %22, align 4
  %149 = load i32, i32* %22, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %460

152:                                              ; preds = %142
  %153 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %154 = load %struct.tc_action*, %struct.tc_action** %153, align 8
  %155 = call %struct.tcf_police* @to_police(%struct.tc_action* %154)
  store %struct.tcf_police* %155, %struct.tcf_police** %28, align 8
  %156 = load %struct.tc_police*, %struct.tc_police** %27, align 8
  %157 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %191

161:                                              ; preds = %152
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %22, align 4
  %164 = load %struct.tc_police*, %struct.tc_police** %27, align 8
  %165 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %164, i32 0, i32 4
  %166 = load i64, i64* @TCA_POLICE_RATE, align 8
  %167 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %166
  %168 = load %struct.nlattr*, %struct.nlattr** %167, align 8
  %169 = call %struct.qdisc_rate_table* @qdisc_get_rtab(%struct.TYPE_5__* %165, %struct.nlattr* %168, i32* null)
  store %struct.qdisc_rate_table* %169, %struct.qdisc_rate_table** %29, align 8
  %170 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %29, align 8
  %171 = icmp eq %struct.qdisc_rate_table* %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %161
  br label %449

173:                                              ; preds = %161
  %174 = load %struct.tc_police*, %struct.tc_police** %27, align 8
  %175 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %173
  %180 = load %struct.tc_police*, %struct.tc_police** %27, align 8
  %181 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %180, i32 0, i32 3
  %182 = load i64, i64* @TCA_POLICE_PEAKRATE, align 8
  %183 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %182
  %184 = load %struct.nlattr*, %struct.nlattr** %183, align 8
  %185 = call %struct.qdisc_rate_table* @qdisc_get_rtab(%struct.TYPE_5__* %181, %struct.nlattr* %184, i32* null)
  store %struct.qdisc_rate_table* %185, %struct.qdisc_rate_table** %30, align 8
  %186 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %30, align 8
  %187 = icmp eq %struct.qdisc_rate_table* %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %179
  br label %449

189:                                              ; preds = %179
  br label %190

190:                                              ; preds = %189, %173
  br label %191

191:                                              ; preds = %190, %152
  %192 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %193 = icmp ne %struct.nlattr* %192, null
  br i1 %193, label %194, label %211

194:                                              ; preds = %191
  %195 = load %struct.tcf_police*, %struct.tcf_police** %28, align 8
  %196 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %195, i32 0, i32 8
  %197 = load %struct.tcf_police*, %struct.tcf_police** %28, align 8
  %198 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %197, i32 0, i32 7
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.tcf_police*, %struct.tcf_police** %28, align 8
  %202 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %201, i32 0, i32 6
  %203 = load %struct.tcf_police*, %struct.tcf_police** %28, align 8
  %204 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %203, i32 0, i32 0
  %205 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %206 = call i32 @gen_replace_estimator(i32* %196, i32 %200, i32* %202, i32* %204, i32* null, %struct.nlattr* %205)
  store i32 %206, i32* %22, align 4
  %207 = load i32, i32* %22, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %194
  br label %449

210:                                              ; preds = %194
  br label %229

211:                                              ; preds = %191
  %212 = load i64, i64* @TCA_POLICE_AVRATE, align 8
  %213 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %212
  %214 = load %struct.nlattr*, %struct.nlattr** %213, align 8
  %215 = icmp ne %struct.nlattr* %214, null
  br i1 %215, label %216, label %228

216:                                              ; preds = %211
  %217 = load i32, i32* %20, align 4
  %218 = load i32, i32* @ACT_P_CREATED, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %225, label %220

220:                                              ; preds = %216
  %221 = load %struct.tcf_police*, %struct.tcf_police** %28, align 8
  %222 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %221, i32 0, i32 6
  %223 = call i32 @gen_estimator_active(i32* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %220, %216
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %22, align 4
  br label %449

228:                                              ; preds = %220, %211
  br label %229

229:                                              ; preds = %228, %210
  %230 = load i64, i64* @TCA_POLICE_RESULT, align 8
  %231 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %230
  %232 = load %struct.nlattr*, %struct.nlattr** %231, align 8
  %233 = icmp ne %struct.nlattr* %232, null
  br i1 %233, label %234, label %250

234:                                              ; preds = %229
  %235 = load i64, i64* @TCA_POLICE_RESULT, align 8
  %236 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %235
  %237 = load %struct.nlattr*, %struct.nlattr** %236, align 8
  %238 = call i8* @nla_get_u32(%struct.nlattr* %237)
  %239 = ptrtoint i8* %238 to i32
  store i32 %239, i32* %21, align 4
  %240 = load i32, i32* %21, align 4
  %241 = load i32, i32* @TC_ACT_GOTO_CHAIN, align 4
  %242 = call i64 @TC_ACT_EXT_CMP(i32 %240, i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %234
  %245 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %246 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %245, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %247 = load i32, i32* @EINVAL, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %22, align 4
  br label %449

249:                                              ; preds = %234
  br label %250

250:                                              ; preds = %249, %229
  %251 = load i32, i32* @GFP_KERNEL, align 4
  %252 = call %struct.tcf_police_params* @kzalloc(i32 48, i32 %251)
  store %struct.tcf_police_params* %252, %struct.tcf_police_params** %32, align 8
  %253 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %254 = icmp ne %struct.tcf_police_params* %253, null
  %255 = xor i1 %254, true
  %256 = zext i1 %255 to i32
  %257 = call i64 @unlikely(i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %250
  %260 = load i32, i32* @ENOMEM, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %22, align 4
  br label %449

262:                                              ; preds = %250
  %263 = load i32, i32* %21, align 4
  %264 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %265 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  %266 = load %struct.tc_police*, %struct.tc_police** %27, align 8
  %267 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %270 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %269, i32 0, i32 1
  store i32 %268, i32* %270, align 4
  %271 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %272 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %289, label %275

275:                                              ; preds = %262
  %276 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %277 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %276, i32 0, i32 1
  store i32 -1, i32* %277, align 4
  %278 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %29, align 8
  %279 = icmp ne %struct.qdisc_rate_table* %278, null
  br i1 %279, label %280, label %288

280:                                              ; preds = %275
  %281 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %29, align 8
  %282 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = shl i32 255, %284
  %286 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %287 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %286, i32 0, i32 1
  store i32 %285, i32* %287, align 4
  br label %288

288:                                              ; preds = %280, %275
  br label %289

289:                                              ; preds = %288, %262
  %290 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %29, align 8
  %291 = icmp ne %struct.qdisc_rate_table* %290, null
  br i1 %291, label %292, label %315

292:                                              ; preds = %289
  %293 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %294 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %293, i32 0, i32 2
  store i32 1, i32* %294, align 8
  %295 = load i64, i64* @TCA_POLICE_RATE64, align 8
  %296 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %295
  %297 = load %struct.nlattr*, %struct.nlattr** %296, align 8
  %298 = icmp ne %struct.nlattr* %297, null
  br i1 %298, label %299, label %304

299:                                              ; preds = %292
  %300 = load i64, i64* @TCA_POLICE_RATE64, align 8
  %301 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %300
  %302 = load %struct.nlattr*, %struct.nlattr** %301, align 8
  %303 = call i32 @nla_get_u64(%struct.nlattr* %302)
  br label %305

304:                                              ; preds = %292
  br label %305

305:                                              ; preds = %304, %299
  %306 = phi i32 [ %303, %299 ], [ 0, %304 ]
  store i32 %306, i32* %35, align 4
  %307 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %308 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %307, i32 0, i32 8
  %309 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %29, align 8
  %310 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %309, i32 0, i32 0
  %311 = load i32, i32* %35, align 4
  %312 = call i32 @psched_ratecfg_precompute(i32* %308, %struct.TYPE_6__* %310, i32 %311)
  %313 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %29, align 8
  %314 = call i32 @qdisc_put_rtab(%struct.qdisc_rate_table* %313)
  br label %318

315:                                              ; preds = %289
  %316 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %317 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %316, i32 0, i32 2
  store i32 0, i32* %317, align 8
  br label %318

318:                                              ; preds = %315, %305
  %319 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %30, align 8
  %320 = icmp ne %struct.qdisc_rate_table* %319, null
  br i1 %320, label %321, label %344

321:                                              ; preds = %318
  %322 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %323 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %322, i32 0, i32 3
  store i32 1, i32* %323, align 4
  %324 = load i64, i64* @TCA_POLICE_PEAKRATE64, align 8
  %325 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %324
  %326 = load %struct.nlattr*, %struct.nlattr** %325, align 8
  %327 = icmp ne %struct.nlattr* %326, null
  br i1 %327, label %328, label %333

328:                                              ; preds = %321
  %329 = load i64, i64* @TCA_POLICE_PEAKRATE64, align 8
  %330 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %329
  %331 = load %struct.nlattr*, %struct.nlattr** %330, align 8
  %332 = call i32 @nla_get_u64(%struct.nlattr* %331)
  br label %334

333:                                              ; preds = %321
  br label %334

334:                                              ; preds = %333, %328
  %335 = phi i32 [ %332, %328 ], [ 0, %333 ]
  store i32 %335, i32* %36, align 4
  %336 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %337 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %336, i32 0, i32 7
  %338 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %30, align 8
  %339 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %338, i32 0, i32 0
  %340 = load i32, i32* %36, align 4
  %341 = call i32 @psched_ratecfg_precompute(i32* %337, %struct.TYPE_6__* %339, i32 %340)
  %342 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %30, align 8
  %343 = call i32 @qdisc_put_rtab(%struct.qdisc_rate_table* %342)
  br label %347

344:                                              ; preds = %318
  %345 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %346 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %345, i32 0, i32 3
  store i32 0, i32* %346, align 4
  br label %347

347:                                              ; preds = %344, %334
  %348 = load %struct.tc_police*, %struct.tc_police** %27, align 8
  %349 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @PSCHED_TICKS2NS(i32 %350)
  %352 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %353 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %352, i32 0, i32 5
  store i32 %351, i32* %353, align 8
  %354 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %355 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %367

358:                                              ; preds = %347
  %359 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %360 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %359, i32 0, i32 7
  %361 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %362 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = call i64 @psched_l2t_ns(i32* %360, i32 %363)
  %365 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %366 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %365, i32 0, i32 4
  store i64 %364, i64* %366, align 8
  br label %367

367:                                              ; preds = %358, %347
  %368 = load i64, i64* @TCA_POLICE_AVRATE, align 8
  %369 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %368
  %370 = load %struct.nlattr*, %struct.nlattr** %369, align 8
  %371 = icmp ne %struct.nlattr* %370, null
  br i1 %371, label %372, label %379

372:                                              ; preds = %367
  %373 = load i64, i64* @TCA_POLICE_AVRATE, align 8
  %374 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %373
  %375 = load %struct.nlattr*, %struct.nlattr** %374, align 8
  %376 = call i8* @nla_get_u32(%struct.nlattr* %375)
  %377 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %378 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %377, i32 0, i32 6
  store i8* %376, i8** %378, align 8
  br label %379

379:                                              ; preds = %372, %367
  %380 = load %struct.tcf_police*, %struct.tcf_police** %28, align 8
  %381 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %380, i32 0, i32 0
  %382 = call i32 @spin_lock_bh(i32* %381)
  %383 = load %struct.tcf_police*, %struct.tcf_police** %28, align 8
  %384 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %383, i32 0, i32 2
  %385 = call i32 @spin_lock_bh(i32* %384)
  %386 = call i32 (...) @ktime_get_ns()
  %387 = load %struct.tcf_police*, %struct.tcf_police** %28, align 8
  %388 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %387, i32 0, i32 5
  store i32 %386, i32* %388, align 4
  %389 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %390 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %389, i32 0, i32 5
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.tcf_police*, %struct.tcf_police** %28, align 8
  %393 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %392, i32 0, i32 4
  store i32 %391, i32* %393, align 8
  %394 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %395 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %394, i32 0, i32 3
  %396 = load i32, i32* %395, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %404

398:                                              ; preds = %379
  %399 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %400 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %399, i32 0, i32 4
  %401 = load i64, i64* %400, align 8
  %402 = load %struct.tcf_police*, %struct.tcf_police** %28, align 8
  %403 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %402, i32 0, i32 3
  store i64 %401, i64* %403, align 8
  br label %404

404:                                              ; preds = %398, %379
  %405 = load %struct.tcf_police*, %struct.tcf_police** %28, align 8
  %406 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %405, i32 0, i32 2
  %407 = call i32 @spin_unlock_bh(i32* %406)
  %408 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %409 = load %struct.tc_action*, %struct.tc_action** %408, align 8
  %410 = load %struct.tc_police*, %struct.tc_police** %27, align 8
  %411 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.tcf_chain*, %struct.tcf_chain** %26, align 8
  %414 = call %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action* %409, i32 %412, %struct.tcf_chain* %413)
  store %struct.tcf_chain* %414, %struct.tcf_chain** %26, align 8
  %415 = load %struct.tcf_police*, %struct.tcf_police** %28, align 8
  %416 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %419 = load %struct.tcf_police*, %struct.tcf_police** %28, align 8
  %420 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %419, i32 0, i32 0
  %421 = call i32 @lockdep_is_held(i32* %420)
  %422 = call i32 @rcu_swap_protected(i32 %417, %struct.tcf_police_params* %418, i32 %421)
  %423 = load %struct.tcf_police*, %struct.tcf_police** %28, align 8
  %424 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %423, i32 0, i32 0
  %425 = call i32 @spin_unlock_bh(i32* %424)
  %426 = load %struct.tcf_chain*, %struct.tcf_chain** %26, align 8
  %427 = icmp ne %struct.tcf_chain* %426, null
  br i1 %427, label %428, label %431

428:                                              ; preds = %404
  %429 = load %struct.tcf_chain*, %struct.tcf_chain** %26, align 8
  %430 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %429)
  br label %431

431:                                              ; preds = %428, %404
  %432 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %433 = icmp ne %struct.tcf_police_params* %432, null
  br i1 %433, label %434, label %438

434:                                              ; preds = %431
  %435 = load %struct.tcf_police_params*, %struct.tcf_police_params** %32, align 8
  %436 = load i32, i32* @rcu, align 4
  %437 = call i32 @kfree_rcu(%struct.tcf_police_params* %435, i32 %436)
  br label %438

438:                                              ; preds = %434, %431
  %439 = load i32, i32* %20, align 4
  %440 = load i32, i32* @ACT_P_CREATED, align 4
  %441 = icmp eq i32 %439, %440
  br i1 %441, label %442, label %447

442:                                              ; preds = %438
  %443 = load %struct.tc_action_net*, %struct.tc_action_net** %31, align 8
  %444 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %445 = load %struct.tc_action*, %struct.tc_action** %444, align 8
  %446 = call i32 @tcf_idr_insert(%struct.tc_action_net* %443, %struct.tc_action* %445)
  br label %447

447:                                              ; preds = %442, %438
  %448 = load i32, i32* %20, align 4
  store i32 %448, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %466

449:                                              ; preds = %259, %244, %225, %209, %188, %172
  %450 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %30, align 8
  %451 = call i32 @qdisc_put_rtab(%struct.qdisc_rate_table* %450)
  %452 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %29, align 8
  %453 = call i32 @qdisc_put_rtab(%struct.qdisc_rate_table* %452)
  %454 = load %struct.tcf_chain*, %struct.tcf_chain** %26, align 8
  %455 = icmp ne %struct.tcf_chain* %454, null
  br i1 %455, label %456, label %459

456:                                              ; preds = %449
  %457 = load %struct.tcf_chain*, %struct.tcf_chain** %26, align 8
  %458 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %457)
  br label %459

459:                                              ; preds = %456, %449
  br label %460

460:                                              ; preds = %459, %151
  %461 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %462 = load %struct.tc_action*, %struct.tc_action** %461, align 8
  %463 = load i32, i32* %16, align 4
  %464 = call i32 @tcf_idr_release(%struct.tc_action* %462, i32 %463)
  %465 = load i32, i32* %22, align 4
  store i32 %465, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %466

466:                                              ; preds = %460, %447, %134, %119, %107, %98, %81, %66, %59, %49
  %467 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %467)
  %468 = load i32, i32* %10, align 4
  ret i32 %468
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tc_action_net* @net_generic(%struct.net*, i32) #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local %struct.tc_police* @nla_data(%struct.nlattr*) #2

declare dso_local i32 @tcf_idr_check_alloc(%struct.tc_action_net*, i32*, %struct.tc_action**, i32) #2

declare dso_local i32 @tcf_idr_create(%struct.tc_action_net*, i32, i32*, %struct.tc_action**, i32*, i32, i32) #2

declare dso_local i32 @tcf_idr_cleanup(%struct.tc_action_net*, i32) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local %struct.tcf_police* @to_police(%struct.tc_action*) #2

declare dso_local i32 @tcf_idr_release(%struct.tc_action*, i32) #2

declare dso_local i32 @tcf_action_check_ctrlact(i32, %struct.tcf_proto*, %struct.tcf_chain**, %struct.netlink_ext_ack*) #2

declare dso_local %struct.qdisc_rate_table* @qdisc_get_rtab(%struct.TYPE_5__*, %struct.nlattr*, i32*) #2

declare dso_local i32 @gen_replace_estimator(i32*, i32, i32*, i32*, i32*, %struct.nlattr*) #2

declare dso_local i32 @gen_estimator_active(i32*) #2

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #2

declare dso_local i64 @TC_ACT_EXT_CMP(i32, i32) #2

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #2

declare dso_local %struct.tcf_police_params* @kzalloc(i32, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @nla_get_u64(%struct.nlattr*) #2

declare dso_local i32 @psched_ratecfg_precompute(i32*, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @qdisc_put_rtab(%struct.qdisc_rate_table*) #2

declare dso_local i32 @PSCHED_TICKS2NS(i32) #2

declare dso_local i64 @psched_l2t_ns(i32*, i32) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @ktime_get_ns(...) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action*, i32, %struct.tcf_chain*) #2

declare dso_local i32 @rcu_swap_protected(i32, %struct.tcf_police_params*, i32) #2

declare dso_local i32 @lockdep_is_held(i32*) #2

declare dso_local i32 @tcf_chain_put_by_act(%struct.tcf_chain*) #2

declare dso_local i32 @kfree_rcu(%struct.tcf_police_params*, i32) #2

declare dso_local i32 @tcf_idr_insert(%struct.tc_action_net*, %struct.tc_action*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
