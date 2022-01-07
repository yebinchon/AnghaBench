; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_skbedit.c_tcf_skbedit_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_skbedit.c_tcf_skbedit_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_action_net = type { i32 }
%struct.tcf_skbedit_params = type { i32, i32, i32, i32, i8*, i8* }
%struct.tcf_chain = type { i32 }
%struct.tc_skbedit = type { i32, i32 }
%struct.tcf_skbedit = type { i32, i32 }

@skbedit_net_id = common dso_local global i32 0, align 4
@TCA_SKBEDIT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@skbedit_policy = common dso_local global i32 0, align 4
@TCA_SKBEDIT_PARMS = common dso_local global i64 0, align 8
@TCA_SKBEDIT_PRIORITY = common dso_local global i64 0, align 8
@SKBEDIT_F_PRIORITY = common dso_local global i32 0, align 4
@TCA_SKBEDIT_QUEUE_MAPPING = common dso_local global i64 0, align 8
@SKBEDIT_F_QUEUE_MAPPING = common dso_local global i32 0, align 4
@TCA_SKBEDIT_PTYPE = common dso_local global i64 0, align 8
@SKBEDIT_F_PTYPE = common dso_local global i32 0, align 4
@TCA_SKBEDIT_MARK = common dso_local global i64 0, align 8
@SKBEDIT_F_MARK = common dso_local global i32 0, align 4
@TCA_SKBEDIT_MASK = common dso_local global i64 0, align 8
@SKBEDIT_F_MASK = common dso_local global i32 0, align 4
@TCA_SKBEDIT_FLAGS = common dso_local global i64 0, align 8
@SKBEDIT_F_INHERITDSFIELD = common dso_local global i32 0, align 4
@act_skbedit_ops = common dso_local global i32 0, align 4
@ACT_P_CREATED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr*, %struct.nlattr*, %struct.tc_action**, i32, i32, i32, %struct.tcf_proto*, %struct.netlink_ext_ack*)* @tcf_skbedit_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_skbedit_init(%struct.net* %0, %struct.nlattr* %1, %struct.nlattr* %2, %struct.tc_action** %3, i32 %4, i32 %5, i32 %6, %struct.tcf_proto* %7, %struct.netlink_ext_ack* %8) #0 {
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
  %20 = alloca %struct.tc_action_net*, align 8
  %21 = alloca %struct.tcf_skbedit_params*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.tcf_chain*, align 8
  %25 = alloca %struct.tc_skbedit*, align 8
  %26 = alloca %struct.tcf_skbedit*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i8**, align 8
  %32 = alloca i8**, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32*, align 8
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.nlattr* %1, %struct.nlattr** %12, align 8
  store %struct.nlattr* %2, %struct.nlattr** %13, align 8
  store %struct.tc_action** %3, %struct.tc_action*** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.tcf_proto* %7, %struct.tcf_proto** %18, align 8
  store %struct.netlink_ext_ack* %8, %struct.netlink_ext_ack** %19, align 8
  %39 = load %struct.net*, %struct.net** %11, align 8
  %40 = load i32, i32* @skbedit_net_id, align 4
  %41 = call %struct.tc_action_net* @net_generic(%struct.net* %39, i32 %40)
  store %struct.tc_action_net* %41, %struct.tc_action_net** %20, align 8
  %42 = load i32, i32* @TCA_SKBEDIT_MAX, align 4
  %43 = add nsw i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %22, align 8
  %46 = alloca %struct.nlattr*, i64 %44, align 16
  store i64 %44, i64* %23, align 8
  store %struct.tcf_chain* null, %struct.tcf_chain** %24, align 8
  store i32 0, i32* %27, align 4
  store i32* null, i32** %28, align 8
  store i32* null, i32** %29, align 8
  store i32* null, i32** %30, align 8
  store i8** null, i8*** %31, align 8
  store i8** null, i8*** %32, align 8
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  %47 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %48 = icmp eq %struct.nlattr* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %9
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %382

52:                                               ; preds = %9
  %53 = load i32, i32* @TCA_SKBEDIT_MAX, align 4
  %54 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %55 = load i32, i32* @skbedit_policy, align 4
  %56 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %46, i32 %53, %struct.nlattr* %54, i32 %55, i32* null)
  store i32 %56, i32* %35, align 4
  %57 = load i32, i32* %35, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %35, align 4
  store i32 %60, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %382

61:                                               ; preds = %52
  %62 = load i64, i64* @TCA_SKBEDIT_PARMS, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = icmp eq %struct.nlattr* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %382

69:                                               ; preds = %61
  %70 = load i64, i64* @TCA_SKBEDIT_PRIORITY, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = icmp ne %struct.nlattr* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load i32, i32* @SKBEDIT_F_PRIORITY, align 4
  %76 = load i32, i32* %27, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %27, align 4
  %78 = load i64, i64* @TCA_SKBEDIT_PRIORITY, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = call i8* @nla_data(%struct.nlattr* %80)
  %82 = bitcast i8* %81 to i32*
  store i32* %82, i32** %28, align 8
  br label %83

83:                                               ; preds = %74, %69
  %84 = load i64, i64* @TCA_SKBEDIT_QUEUE_MAPPING, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = icmp ne %struct.nlattr* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load i32, i32* @SKBEDIT_F_QUEUE_MAPPING, align 4
  %90 = load i32, i32* %27, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %27, align 4
  %92 = load i64, i64* @TCA_SKBEDIT_QUEUE_MAPPING, align 8
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = call i8* @nla_data(%struct.nlattr* %94)
  %96 = bitcast i8* %95 to i8**
  store i8** %96, i8*** %31, align 8
  br label %97

97:                                               ; preds = %88, %83
  %98 = load i64, i64* @TCA_SKBEDIT_PTYPE, align 8
  %99 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %98
  %100 = load %struct.nlattr*, %struct.nlattr** %99, align 8
  %101 = icmp ne %struct.nlattr* %100, null
  br i1 %101, label %102, label %119

102:                                              ; preds = %97
  %103 = load i64, i64* @TCA_SKBEDIT_PTYPE, align 8
  %104 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %103
  %105 = load %struct.nlattr*, %struct.nlattr** %104, align 8
  %106 = call i8* @nla_data(%struct.nlattr* %105)
  %107 = bitcast i8* %106 to i8**
  store i8** %107, i8*** %32, align 8
  %108 = load i8**, i8*** %32, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @skb_pkt_type_ok(i8* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %102
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %382

115:                                              ; preds = %102
  %116 = load i32, i32* @SKBEDIT_F_PTYPE, align 4
  %117 = load i32, i32* %27, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %27, align 4
  br label %119

119:                                              ; preds = %115, %97
  %120 = load i64, i64* @TCA_SKBEDIT_MARK, align 8
  %121 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %120
  %122 = load %struct.nlattr*, %struct.nlattr** %121, align 8
  %123 = icmp ne %struct.nlattr* %122, null
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load i32, i32* @SKBEDIT_F_MARK, align 4
  %126 = load i32, i32* %27, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %27, align 4
  %128 = load i64, i64* @TCA_SKBEDIT_MARK, align 8
  %129 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %128
  %130 = load %struct.nlattr*, %struct.nlattr** %129, align 8
  %131 = call i8* @nla_data(%struct.nlattr* %130)
  %132 = bitcast i8* %131 to i32*
  store i32* %132, i32** %29, align 8
  br label %133

133:                                              ; preds = %124, %119
  %134 = load i64, i64* @TCA_SKBEDIT_MASK, align 8
  %135 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %134
  %136 = load %struct.nlattr*, %struct.nlattr** %135, align 8
  %137 = icmp ne %struct.nlattr* %136, null
  br i1 %137, label %138, label %147

138:                                              ; preds = %133
  %139 = load i32, i32* @SKBEDIT_F_MASK, align 4
  %140 = load i32, i32* %27, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %27, align 4
  %142 = load i64, i64* @TCA_SKBEDIT_MASK, align 8
  %143 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %142
  %144 = load %struct.nlattr*, %struct.nlattr** %143, align 8
  %145 = call i8* @nla_data(%struct.nlattr* %144)
  %146 = bitcast i8* %145 to i32*
  store i32* %146, i32** %30, align 8
  br label %147

147:                                              ; preds = %138, %133
  %148 = load i64, i64* @TCA_SKBEDIT_FLAGS, align 8
  %149 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %148
  %150 = load %struct.nlattr*, %struct.nlattr** %149, align 8
  %151 = icmp ne %struct.nlattr* %150, null
  br i1 %151, label %152, label %168

152:                                              ; preds = %147
  %153 = load i64, i64* @TCA_SKBEDIT_FLAGS, align 8
  %154 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %153
  %155 = load %struct.nlattr*, %struct.nlattr** %154, align 8
  %156 = call i8* @nla_data(%struct.nlattr* %155)
  %157 = bitcast i8* %156 to i32*
  store i32* %157, i32** %38, align 8
  %158 = load i32*, i32** %38, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @SKBEDIT_F_INHERITDSFIELD, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %152
  %164 = load i32, i32* @SKBEDIT_F_INHERITDSFIELD, align 4
  %165 = load i32, i32* %27, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %27, align 4
  br label %167

167:                                              ; preds = %163, %152
  br label %168

168:                                              ; preds = %167, %147
  %169 = load i64, i64* @TCA_SKBEDIT_PARMS, align 8
  %170 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %169
  %171 = load %struct.nlattr*, %struct.nlattr** %170, align 8
  %172 = call i8* @nla_data(%struct.nlattr* %171)
  %173 = bitcast i8* %172 to %struct.tc_skbedit*
  store %struct.tc_skbedit* %173, %struct.tc_skbedit** %25, align 8
  %174 = load %struct.tc_skbedit*, %struct.tc_skbedit** %25, align 8
  %175 = getelementptr inbounds %struct.tc_skbedit, %struct.tc_skbedit* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %36, align 4
  %177 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %178 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %179 = load i32, i32* %16, align 4
  %180 = call i32 @tcf_idr_check_alloc(%struct.tc_action_net* %177, i32* %36, %struct.tc_action** %178, i32 %179)
  store i32 %180, i32* %35, align 4
  %181 = load i32, i32* %35, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %168
  %184 = load i32, i32* %35, align 4
  store i32 %184, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %382

185:                                              ; preds = %168
  %186 = load i32, i32* %35, align 4
  store i32 %186, i32* %33, align 4
  %187 = load i32, i32* %33, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load i32, i32* %16, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  store i32 0, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %382

193:                                              ; preds = %189, %185
  %194 = load i32, i32* %27, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %211, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %33, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %196
  %200 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %201 = load %struct.tc_action*, %struct.tc_action** %200, align 8
  %202 = load i32, i32* %16, align 4
  %203 = call i32 @tcf_idr_release(%struct.tc_action* %201, i32 %202)
  br label %208

204:                                              ; preds = %196
  %205 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %206 = load i32, i32* %36, align 4
  %207 = call i32 @tcf_idr_cleanup(%struct.tc_action_net* %205, i32 %206)
  br label %208

208:                                              ; preds = %204, %199
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %382

211:                                              ; preds = %193
  %212 = load i32, i32* %33, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %233, label %214

214:                                              ; preds = %211
  %215 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %216 = load i32, i32* %36, align 4
  %217 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %218 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %219 = load i32, i32* %16, align 4
  %220 = call i32 @tcf_idr_create(%struct.tc_action_net* %215, i32 %216, %struct.nlattr* %217, %struct.tc_action** %218, i32* @act_skbedit_ops, i32 %219, i32 1)
  store i32 %220, i32* %34, align 4
  %221 = load i32, i32* %34, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %214
  %224 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %225 = load i32, i32* %36, align 4
  %226 = call i32 @tcf_idr_cleanup(%struct.tc_action_net* %224, i32 %225)
  %227 = load i32, i32* %34, align 4
  store i32 %227, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %382

228:                                              ; preds = %214
  %229 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %230 = load %struct.tc_action*, %struct.tc_action** %229, align 8
  %231 = call %struct.tcf_skbedit* @to_skbedit(%struct.tc_action* %230)
  store %struct.tcf_skbedit* %231, %struct.tcf_skbedit** %26, align 8
  %232 = load i32, i32* @ACT_P_CREATED, align 4
  store i32 %232, i32* %34, align 4
  br label %247

233:                                              ; preds = %211
  %234 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %235 = load %struct.tc_action*, %struct.tc_action** %234, align 8
  %236 = call %struct.tcf_skbedit* @to_skbedit(%struct.tc_action* %235)
  store %struct.tcf_skbedit* %236, %struct.tcf_skbedit** %26, align 8
  %237 = load i32, i32* %15, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %246, label %239

239:                                              ; preds = %233
  %240 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %241 = load %struct.tc_action*, %struct.tc_action** %240, align 8
  %242 = load i32, i32* %16, align 4
  %243 = call i32 @tcf_idr_release(%struct.tc_action* %241, i32 %242)
  %244 = load i32, i32* @EEXIST, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %382

246:                                              ; preds = %233
  br label %247

247:                                              ; preds = %246, %228
  %248 = load %struct.tc_skbedit*, %struct.tc_skbedit** %25, align 8
  %249 = getelementptr inbounds %struct.tc_skbedit, %struct.tc_skbedit* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.tcf_proto*, %struct.tcf_proto** %18, align 8
  %252 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %253 = call i32 @tcf_action_check_ctrlact(i32 %250, %struct.tcf_proto* %251, %struct.tcf_chain** %24, %struct.netlink_ext_ack* %252)
  store i32 %253, i32* %35, align 4
  %254 = load i32, i32* %35, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %247
  br label %376

257:                                              ; preds = %247
  %258 = load i32, i32* @GFP_KERNEL, align 4
  %259 = call %struct.tcf_skbedit_params* @kzalloc(i32 32, i32 %258)
  store %struct.tcf_skbedit_params* %259, %struct.tcf_skbedit_params** %21, align 8
  %260 = load %struct.tcf_skbedit_params*, %struct.tcf_skbedit_params** %21, align 8
  %261 = icmp ne %struct.tcf_skbedit_params* %260, null
  %262 = xor i1 %261, true
  %263 = zext i1 %262 to i32
  %264 = call i64 @unlikely(i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %257
  %267 = load i32, i32* @ENOMEM, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %35, align 4
  br label %369

269:                                              ; preds = %257
  %270 = load i32, i32* %27, align 4
  %271 = load %struct.tcf_skbedit_params*, %struct.tcf_skbedit_params** %21, align 8
  %272 = getelementptr inbounds %struct.tcf_skbedit_params, %struct.tcf_skbedit_params* %271, i32 0, i32 0
  store i32 %270, i32* %272, align 8
  %273 = load i32, i32* %27, align 4
  %274 = load i32, i32* @SKBEDIT_F_PRIORITY, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %269
  %278 = load i32*, i32** %28, align 8
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.tcf_skbedit_params*, %struct.tcf_skbedit_params** %21, align 8
  %281 = getelementptr inbounds %struct.tcf_skbedit_params, %struct.tcf_skbedit_params* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 4
  br label %282

282:                                              ; preds = %277, %269
  %283 = load i32, i32* %27, align 4
  %284 = load i32, i32* @SKBEDIT_F_QUEUE_MAPPING, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %282
  %288 = load i8**, i8*** %31, align 8
  %289 = load i8*, i8** %288, align 8
  %290 = load %struct.tcf_skbedit_params*, %struct.tcf_skbedit_params** %21, align 8
  %291 = getelementptr inbounds %struct.tcf_skbedit_params, %struct.tcf_skbedit_params* %290, i32 0, i32 5
  store i8* %289, i8** %291, align 8
  br label %292

292:                                              ; preds = %287, %282
  %293 = load i32, i32* %27, align 4
  %294 = load i32, i32* @SKBEDIT_F_MARK, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %292
  %298 = load i32*, i32** %29, align 8
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.tcf_skbedit_params*, %struct.tcf_skbedit_params** %21, align 8
  %301 = getelementptr inbounds %struct.tcf_skbedit_params, %struct.tcf_skbedit_params* %300, i32 0, i32 2
  store i32 %299, i32* %301, align 8
  br label %302

302:                                              ; preds = %297, %292
  %303 = load i32, i32* %27, align 4
  %304 = load i32, i32* @SKBEDIT_F_PTYPE, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %302
  %308 = load i8**, i8*** %32, align 8
  %309 = load i8*, i8** %308, align 8
  %310 = load %struct.tcf_skbedit_params*, %struct.tcf_skbedit_params** %21, align 8
  %311 = getelementptr inbounds %struct.tcf_skbedit_params, %struct.tcf_skbedit_params* %310, i32 0, i32 4
  store i8* %309, i8** %311, align 8
  br label %312

312:                                              ; preds = %307, %302
  %313 = load %struct.tcf_skbedit_params*, %struct.tcf_skbedit_params** %21, align 8
  %314 = getelementptr inbounds %struct.tcf_skbedit_params, %struct.tcf_skbedit_params* %313, i32 0, i32 3
  store i32 -1, i32* %314, align 4
  %315 = load i32, i32* %27, align 4
  %316 = load i32, i32* @SKBEDIT_F_MASK, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %312
  %320 = load i32*, i32** %30, align 8
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.tcf_skbedit_params*, %struct.tcf_skbedit_params** %21, align 8
  %323 = getelementptr inbounds %struct.tcf_skbedit_params, %struct.tcf_skbedit_params* %322, i32 0, i32 3
  store i32 %321, i32* %323, align 4
  br label %324

324:                                              ; preds = %319, %312
  %325 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %26, align 8
  %326 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %325, i32 0, i32 0
  %327 = call i32 @spin_lock_bh(i32* %326)
  %328 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %329 = load %struct.tc_action*, %struct.tc_action** %328, align 8
  %330 = load %struct.tc_skbedit*, %struct.tc_skbedit** %25, align 8
  %331 = getelementptr inbounds %struct.tc_skbedit, %struct.tc_skbedit* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.tcf_chain*, %struct.tcf_chain** %24, align 8
  %334 = call %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action* %329, i32 %332, %struct.tcf_chain* %333)
  store %struct.tcf_chain* %334, %struct.tcf_chain** %24, align 8
  %335 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %26, align 8
  %336 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.tcf_skbedit_params*, %struct.tcf_skbedit_params** %21, align 8
  %339 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %26, align 8
  %340 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %339, i32 0, i32 0
  %341 = call i32 @lockdep_is_held(i32* %340)
  %342 = call i32 @rcu_swap_protected(i32 %337, %struct.tcf_skbedit_params* %338, i32 %341)
  %343 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %26, align 8
  %344 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %343, i32 0, i32 0
  %345 = call i32 @spin_unlock_bh(i32* %344)
  %346 = load %struct.tcf_skbedit_params*, %struct.tcf_skbedit_params** %21, align 8
  %347 = icmp ne %struct.tcf_skbedit_params* %346, null
  br i1 %347, label %348, label %352

348:                                              ; preds = %324
  %349 = load %struct.tcf_skbedit_params*, %struct.tcf_skbedit_params** %21, align 8
  %350 = load i32, i32* @rcu, align 4
  %351 = call i32 @kfree_rcu(%struct.tcf_skbedit_params* %349, i32 %350)
  br label %352

352:                                              ; preds = %348, %324
  %353 = load %struct.tcf_chain*, %struct.tcf_chain** %24, align 8
  %354 = icmp ne %struct.tcf_chain* %353, null
  br i1 %354, label %355, label %358

355:                                              ; preds = %352
  %356 = load %struct.tcf_chain*, %struct.tcf_chain** %24, align 8
  %357 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %356)
  br label %358

358:                                              ; preds = %355, %352
  %359 = load i32, i32* %34, align 4
  %360 = load i32, i32* @ACT_P_CREATED, align 4
  %361 = icmp eq i32 %359, %360
  br i1 %361, label %362, label %367

362:                                              ; preds = %358
  %363 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %364 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %365 = load %struct.tc_action*, %struct.tc_action** %364, align 8
  %366 = call i32 @tcf_idr_insert(%struct.tc_action_net* %363, %struct.tc_action* %365)
  br label %367

367:                                              ; preds = %362, %358
  %368 = load i32, i32* %34, align 4
  store i32 %368, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %382

369:                                              ; preds = %266
  %370 = load %struct.tcf_chain*, %struct.tcf_chain** %24, align 8
  %371 = icmp ne %struct.tcf_chain* %370, null
  br i1 %371, label %372, label %375

372:                                              ; preds = %369
  %373 = load %struct.tcf_chain*, %struct.tcf_chain** %24, align 8
  %374 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %373)
  br label %375

375:                                              ; preds = %372, %369
  br label %376

376:                                              ; preds = %375, %256
  %377 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %378 = load %struct.tc_action*, %struct.tc_action** %377, align 8
  %379 = load i32, i32* %16, align 4
  %380 = call i32 @tcf_idr_release(%struct.tc_action* %378, i32 %379)
  %381 = load i32, i32* %35, align 4
  store i32 %381, i32* %10, align 4
  store i32 1, i32* %37, align 4
  br label %382

382:                                              ; preds = %376, %367, %239, %223, %208, %192, %183, %112, %66, %59, %49
  %383 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %383)
  %384 = load i32, i32* %10, align 4
  ret i32 %384
}

declare dso_local %struct.tc_action_net* @net_generic(%struct.net*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @skb_pkt_type_ok(i8*) #1

declare dso_local i32 @tcf_idr_check_alloc(%struct.tc_action_net*, i32*, %struct.tc_action**, i32) #1

declare dso_local i32 @tcf_idr_release(%struct.tc_action*, i32) #1

declare dso_local i32 @tcf_idr_cleanup(%struct.tc_action_net*, i32) #1

declare dso_local i32 @tcf_idr_create(%struct.tc_action_net*, i32, %struct.nlattr*, %struct.tc_action**, i32*, i32, i32) #1

declare dso_local %struct.tcf_skbedit* @to_skbedit(%struct.tc_action*) #1

declare dso_local i32 @tcf_action_check_ctrlact(i32, %struct.tcf_proto*, %struct.tcf_chain**, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tcf_skbedit_params* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action*, i32, %struct.tcf_chain*) #1

declare dso_local i32 @rcu_swap_protected(i32, %struct.tcf_skbedit_params*, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.tcf_skbedit_params*, i32) #1

declare dso_local i32 @tcf_chain_put_by_act(%struct.tcf_chain*) #1

declare dso_local i32 @tcf_idr_insert(%struct.tc_action_net*, %struct.tc_action*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
