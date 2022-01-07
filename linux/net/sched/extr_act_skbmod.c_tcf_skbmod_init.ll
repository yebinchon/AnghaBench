; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_skbmod.c_tcf_skbmod_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_skbmod.c_tcf_skbmod_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_action_net = type { i32 }
%struct.tcf_skbmod_params = type { i32, i32, i32, i32 }
%struct.tcf_chain = type { i32 }
%struct.tc_skbmod = type { i32, i32, i32 }
%struct.tcf_skbmod = type { i32, i32 }

@skbmod_net_id = common dso_local global i32 0, align 4
@TCA_SKBMOD_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@skbmod_policy = common dso_local global i32 0, align 4
@TCA_SKBMOD_PARMS = common dso_local global i64 0, align 8
@TCA_SKBMOD_DMAC = common dso_local global i64 0, align 8
@SKBMOD_F_DMAC = common dso_local global i32 0, align 4
@TCA_SKBMOD_SMAC = common dso_local global i64 0, align 8
@SKBMOD_F_SMAC = common dso_local global i32 0, align 4
@TCA_SKBMOD_ETYPE = common dso_local global i64 0, align 8
@SKBMOD_F_ETYPE = common dso_local global i32 0, align 4
@SKBMOD_F_SWAPMAC = common dso_local global i32 0, align 4
@act_skbmod_ops = common dso_local global i32 0, align 4
@ACT_P_CREATED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr*, %struct.nlattr*, %struct.tc_action**, i32, i32, i32, %struct.tcf_proto*, %struct.netlink_ext_ack*)* @tcf_skbmod_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_skbmod_init(%struct.net* %0, %struct.nlattr* %1, %struct.nlattr* %2, %struct.tc_action** %3, i32 %4, i32 %5, i32 %6, %struct.tcf_proto* %7, %struct.netlink_ext_ack* %8) #0 {
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
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.tcf_skbmod_params*, align 8
  %24 = alloca %struct.tcf_skbmod_params*, align 8
  %25 = alloca %struct.tcf_chain*, align 8
  %26 = alloca %struct.tc_skbmod*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.tcf_skbmod*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.nlattr* %1, %struct.nlattr** %12, align 8
  store %struct.nlattr* %2, %struct.nlattr** %13, align 8
  store %struct.tc_action** %3, %struct.tc_action*** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.tcf_proto* %7, %struct.tcf_proto** %18, align 8
  store %struct.netlink_ext_ack* %8, %struct.netlink_ext_ack** %19, align 8
  %37 = load %struct.net*, %struct.net** %11, align 8
  %38 = load i32, i32* @skbmod_net_id, align 4
  %39 = call %struct.tc_action_net* @net_generic(%struct.net* %37, i32 %38)
  store %struct.tc_action_net* %39, %struct.tc_action_net** %20, align 8
  %40 = load i32, i32* @TCA_SKBMOD_MAX, align 4
  %41 = add nsw i32 %40, 1
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %21, align 8
  %44 = alloca %struct.nlattr*, i64 %42, align 16
  store i64 %42, i64* %22, align 8
  store %struct.tcf_chain* null, %struct.tcf_chain** %25, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %30, align 4
  store i32* null, i32** %31, align 8
  store i32* null, i32** %32, align 8
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  %45 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %9
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  store i32 1, i32* %36, align 4
  br label %317

50:                                               ; preds = %9
  %51 = load i32, i32* @TCA_SKBMOD_MAX, align 4
  %52 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %53 = load i32, i32* @skbmod_policy, align 4
  %54 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %44, i32 %51, %struct.nlattr* %52, i32 %53, i32* null)
  store i32 %54, i32* %35, align 4
  %55 = load i32, i32* %35, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %35, align 4
  store i32 %58, i32* %10, align 4
  store i32 1, i32* %36, align 4
  br label %317

59:                                               ; preds = %50
  %60 = load i64, i64* @TCA_SKBMOD_PARMS, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = icmp ne %struct.nlattr* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  store i32 1, i32* %36, align 4
  br label %317

67:                                               ; preds = %59
  %68 = load i64, i64* @TCA_SKBMOD_DMAC, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = icmp ne %struct.nlattr* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load i64, i64* @TCA_SKBMOD_DMAC, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = call i8* @nla_data(%struct.nlattr* %75)
  %77 = bitcast i8* %76 to i32*
  store i32* %77, i32** %31, align 8
  %78 = load i32, i32* @SKBMOD_F_DMAC, align 4
  %79 = load i32, i32* %27, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %27, align 4
  br label %81

81:                                               ; preds = %72, %67
  %82 = load i64, i64* @TCA_SKBMOD_SMAC, align 8
  %83 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %82
  %84 = load %struct.nlattr*, %struct.nlattr** %83, align 8
  %85 = icmp ne %struct.nlattr* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load i64, i64* @TCA_SKBMOD_SMAC, align 8
  %88 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %87
  %89 = load %struct.nlattr*, %struct.nlattr** %88, align 8
  %90 = call i8* @nla_data(%struct.nlattr* %89)
  %91 = bitcast i8* %90 to i32*
  store i32* %91, i32** %32, align 8
  %92 = load i32, i32* @SKBMOD_F_SMAC, align 4
  %93 = load i32, i32* %27, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %27, align 4
  br label %95

95:                                               ; preds = %86, %81
  %96 = load i64, i64* @TCA_SKBMOD_ETYPE, align 8
  %97 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %96
  %98 = load %struct.nlattr*, %struct.nlattr** %97, align 8
  %99 = icmp ne %struct.nlattr* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load i64, i64* @TCA_SKBMOD_ETYPE, align 8
  %102 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %101
  %103 = load %struct.nlattr*, %struct.nlattr** %102, align 8
  %104 = call i32 @nla_get_u16(%struct.nlattr* %103)
  store i32 %104, i32* %33, align 4
  %105 = load i32, i32* @SKBMOD_F_ETYPE, align 4
  %106 = load i32, i32* %27, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %27, align 4
  br label %108

108:                                              ; preds = %100, %95
  %109 = load i64, i64* @TCA_SKBMOD_PARMS, align 8
  %110 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %109
  %111 = load %struct.nlattr*, %struct.nlattr** %110, align 8
  %112 = call i8* @nla_data(%struct.nlattr* %111)
  %113 = bitcast i8* %112 to %struct.tc_skbmod*
  store %struct.tc_skbmod* %113, %struct.tc_skbmod** %26, align 8
  %114 = load %struct.tc_skbmod*, %struct.tc_skbmod** %26, align 8
  %115 = getelementptr inbounds %struct.tc_skbmod, %struct.tc_skbmod* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %28, align 4
  %117 = load %struct.tc_skbmod*, %struct.tc_skbmod** %26, align 8
  %118 = getelementptr inbounds %struct.tc_skbmod, %struct.tc_skbmod* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @SKBMOD_F_SWAPMAC, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %108
  %124 = load i32, i32* @SKBMOD_F_SWAPMAC, align 4
  store i32 %124, i32* %27, align 4
  br label %125

125:                                              ; preds = %123, %108
  %126 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %127 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @tcf_idr_check_alloc(%struct.tc_action_net* %126, i32* %28, %struct.tc_action** %127, i32 %128)
  store i32 %129, i32* %35, align 4
  %130 = load i32, i32* %35, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* %35, align 4
  store i32 %133, i32* %10, align 4
  store i32 1, i32* %36, align 4
  br label %317

134:                                              ; preds = %125
  %135 = load i32, i32* %35, align 4
  store i32 %135, i32* %30, align 4
  %136 = load i32, i32* %30, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load i32, i32* %16, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 0, i32* %10, align 4
  store i32 1, i32* %36, align 4
  br label %317

142:                                              ; preds = %138, %134
  %143 = load i32, i32* %27, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %160, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %30, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %150 = load %struct.tc_action*, %struct.tc_action** %149, align 8
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @tcf_idr_release(%struct.tc_action* %150, i32 %151)
  br label %157

153:                                              ; preds = %145
  %154 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %155 = load i32, i32* %28, align 4
  %156 = call i32 @tcf_idr_cleanup(%struct.tc_action_net* %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %148
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %10, align 4
  store i32 1, i32* %36, align 4
  br label %317

160:                                              ; preds = %142
  %161 = load i32, i32* %30, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %179, label %163

163:                                              ; preds = %160
  %164 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %165 = load i32, i32* %28, align 4
  %166 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %167 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @tcf_idr_create(%struct.tc_action_net* %164, i32 %165, %struct.nlattr* %166, %struct.tc_action** %167, i32* @act_skbmod_ops, i32 %168, i32 1)
  store i32 %169, i32* %34, align 4
  %170 = load i32, i32* %34, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %163
  %173 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %174 = load i32, i32* %28, align 4
  %175 = call i32 @tcf_idr_cleanup(%struct.tc_action_net* %173, i32 %174)
  %176 = load i32, i32* %34, align 4
  store i32 %176, i32* %10, align 4
  store i32 1, i32* %36, align 4
  br label %317

177:                                              ; preds = %163
  %178 = load i32, i32* @ACT_P_CREATED, align 4
  store i32 %178, i32* %34, align 4
  br label %190

179:                                              ; preds = %160
  %180 = load i32, i32* %15, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %179
  %183 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %184 = load %struct.tc_action*, %struct.tc_action** %183, align 8
  %185 = load i32, i32* %16, align 4
  %186 = call i32 @tcf_idr_release(%struct.tc_action* %184, i32 %185)
  %187 = load i32, i32* @EEXIST, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %10, align 4
  store i32 1, i32* %36, align 4
  br label %317

189:                                              ; preds = %179
  br label %190

190:                                              ; preds = %189, %177
  %191 = load %struct.tc_skbmod*, %struct.tc_skbmod** %26, align 8
  %192 = getelementptr inbounds %struct.tc_skbmod, %struct.tc_skbmod* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.tcf_proto*, %struct.tcf_proto** %18, align 8
  %195 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %196 = call i32 @tcf_action_check_ctrlact(i32 %193, %struct.tcf_proto* %194, %struct.tcf_chain** %25, %struct.netlink_ext_ack* %195)
  store i32 %196, i32* %35, align 4
  %197 = load i32, i32* %35, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %190
  br label %311

200:                                              ; preds = %190
  %201 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %202 = load %struct.tc_action*, %struct.tc_action** %201, align 8
  %203 = call %struct.tcf_skbmod* @to_skbmod(%struct.tc_action* %202)
  store %struct.tcf_skbmod* %203, %struct.tcf_skbmod** %29, align 8
  %204 = load i32, i32* @GFP_KERNEL, align 4
  %205 = call %struct.tcf_skbmod_params* @kzalloc(i32 16, i32 %204)
  store %struct.tcf_skbmod_params* %205, %struct.tcf_skbmod_params** %23, align 8
  %206 = load %struct.tcf_skbmod_params*, %struct.tcf_skbmod_params** %23, align 8
  %207 = icmp ne %struct.tcf_skbmod_params* %206, null
  %208 = xor i1 %207, true
  %209 = zext i1 %208 to i32
  %210 = call i64 @unlikely(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %200
  %213 = load i32, i32* @ENOMEM, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %35, align 4
  br label %304

215:                                              ; preds = %200
  %216 = load i32, i32* %27, align 4
  %217 = load %struct.tcf_skbmod_params*, %struct.tcf_skbmod_params** %23, align 8
  %218 = getelementptr inbounds %struct.tcf_skbmod_params, %struct.tcf_skbmod_params* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* %15, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %215
  %222 = load %struct.tcf_skbmod*, %struct.tcf_skbmod** %29, align 8
  %223 = getelementptr inbounds %struct.tcf_skbmod, %struct.tcf_skbmod* %222, i32 0, i32 0
  %224 = call i32 @spin_lock_bh(i32* %223)
  br label %225

225:                                              ; preds = %221, %215
  %226 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %227 = load %struct.tc_action*, %struct.tc_action** %226, align 8
  %228 = load %struct.tc_skbmod*, %struct.tc_skbmod** %26, align 8
  %229 = getelementptr inbounds %struct.tc_skbmod, %struct.tc_skbmod* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.tcf_chain*, %struct.tcf_chain** %25, align 8
  %232 = call %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action* %227, i32 %230, %struct.tcf_chain* %231)
  store %struct.tcf_chain* %232, %struct.tcf_chain** %25, align 8
  %233 = load %struct.tcf_skbmod*, %struct.tcf_skbmod** %29, align 8
  %234 = getelementptr inbounds %struct.tcf_skbmod, %struct.tcf_skbmod* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call %struct.tcf_skbmod_params* @rcu_dereference_protected(i32 %235, i32 1)
  store %struct.tcf_skbmod_params* %236, %struct.tcf_skbmod_params** %24, align 8
  %237 = load i32, i32* %27, align 4
  %238 = load i32, i32* @SKBMOD_F_DMAC, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %225
  %242 = load %struct.tcf_skbmod_params*, %struct.tcf_skbmod_params** %23, align 8
  %243 = getelementptr inbounds %struct.tcf_skbmod_params, %struct.tcf_skbmod_params* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load i32*, i32** %31, align 8
  %246 = call i32 @ether_addr_copy(i32 %244, i32* %245)
  br label %247

247:                                              ; preds = %241, %225
  %248 = load i32, i32* %27, align 4
  %249 = load i32, i32* @SKBMOD_F_SMAC, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %247
  %253 = load %struct.tcf_skbmod_params*, %struct.tcf_skbmod_params** %23, align 8
  %254 = getelementptr inbounds %struct.tcf_skbmod_params, %struct.tcf_skbmod_params* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = load i32*, i32** %32, align 8
  %257 = call i32 @ether_addr_copy(i32 %255, i32* %256)
  br label %258

258:                                              ; preds = %252, %247
  %259 = load i32, i32* %27, align 4
  %260 = load i32, i32* @SKBMOD_F_ETYPE, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %258
  %264 = load i32, i32* %33, align 4
  %265 = call i32 @htons(i32 %264)
  %266 = load %struct.tcf_skbmod_params*, %struct.tcf_skbmod_params** %23, align 8
  %267 = getelementptr inbounds %struct.tcf_skbmod_params, %struct.tcf_skbmod_params* %266, i32 0, i32 1
  store i32 %265, i32* %267, align 4
  br label %268

268:                                              ; preds = %263, %258
  %269 = load %struct.tcf_skbmod*, %struct.tcf_skbmod** %29, align 8
  %270 = getelementptr inbounds %struct.tcf_skbmod, %struct.tcf_skbmod* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.tcf_skbmod_params*, %struct.tcf_skbmod_params** %23, align 8
  %273 = call i32 @rcu_assign_pointer(i32 %271, %struct.tcf_skbmod_params* %272)
  %274 = load i32, i32* %15, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %268
  %277 = load %struct.tcf_skbmod*, %struct.tcf_skbmod** %29, align 8
  %278 = getelementptr inbounds %struct.tcf_skbmod, %struct.tcf_skbmod* %277, i32 0, i32 0
  %279 = call i32 @spin_unlock_bh(i32* %278)
  br label %280

280:                                              ; preds = %276, %268
  %281 = load %struct.tcf_skbmod_params*, %struct.tcf_skbmod_params** %24, align 8
  %282 = icmp ne %struct.tcf_skbmod_params* %281, null
  br i1 %282, label %283, label %287

283:                                              ; preds = %280
  %284 = load %struct.tcf_skbmod_params*, %struct.tcf_skbmod_params** %24, align 8
  %285 = load i32, i32* @rcu, align 4
  %286 = call i32 @kfree_rcu(%struct.tcf_skbmod_params* %284, i32 %285)
  br label %287

287:                                              ; preds = %283, %280
  %288 = load %struct.tcf_chain*, %struct.tcf_chain** %25, align 8
  %289 = icmp ne %struct.tcf_chain* %288, null
  br i1 %289, label %290, label %293

290:                                              ; preds = %287
  %291 = load %struct.tcf_chain*, %struct.tcf_chain** %25, align 8
  %292 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %291)
  br label %293

293:                                              ; preds = %290, %287
  %294 = load i32, i32* %34, align 4
  %295 = load i32, i32* @ACT_P_CREATED, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %302

297:                                              ; preds = %293
  %298 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %299 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %300 = load %struct.tc_action*, %struct.tc_action** %299, align 8
  %301 = call i32 @tcf_idr_insert(%struct.tc_action_net* %298, %struct.tc_action* %300)
  br label %302

302:                                              ; preds = %297, %293
  %303 = load i32, i32* %34, align 4
  store i32 %303, i32* %10, align 4
  store i32 1, i32* %36, align 4
  br label %317

304:                                              ; preds = %212
  %305 = load %struct.tcf_chain*, %struct.tcf_chain** %25, align 8
  %306 = icmp ne %struct.tcf_chain* %305, null
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = load %struct.tcf_chain*, %struct.tcf_chain** %25, align 8
  %309 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %308)
  br label %310

310:                                              ; preds = %307, %304
  br label %311

311:                                              ; preds = %310, %199
  %312 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %313 = load %struct.tc_action*, %struct.tc_action** %312, align 8
  %314 = load i32, i32* %16, align 4
  %315 = call i32 @tcf_idr_release(%struct.tc_action* %313, i32 %314)
  %316 = load i32, i32* %35, align 4
  store i32 %316, i32* %10, align 4
  store i32 1, i32* %36, align 4
  br label %317

317:                                              ; preds = %311, %302, %182, %172, %157, %141, %132, %64, %57, %47
  %318 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %318)
  %319 = load i32, i32* %10, align 4
  ret i32 %319
}

declare dso_local %struct.tc_action_net* @net_generic(%struct.net*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @tcf_idr_check_alloc(%struct.tc_action_net*, i32*, %struct.tc_action**, i32) #1

declare dso_local i32 @tcf_idr_release(%struct.tc_action*, i32) #1

declare dso_local i32 @tcf_idr_cleanup(%struct.tc_action_net*, i32) #1

declare dso_local i32 @tcf_idr_create(%struct.tc_action_net*, i32, %struct.nlattr*, %struct.tc_action**, i32*, i32, i32) #1

declare dso_local i32 @tcf_action_check_ctrlact(i32, %struct.tcf_proto*, %struct.tcf_chain**, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tcf_skbmod* @to_skbmod(%struct.tc_action*) #1

declare dso_local %struct.tcf_skbmod_params* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action*, i32, %struct.tcf_chain*) #1

declare dso_local %struct.tcf_skbmod_params* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.tcf_skbmod_params*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.tcf_skbmod_params*, i32) #1

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
