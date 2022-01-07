; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_tcf_ife_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_tcf_ife_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_action_net = type { i32 }
%struct.tcf_chain = type { i32 }
%struct.tcf_ife_params = type { i32, i32, i32, i32 }
%struct.tcf_ife_info = type { i32, i32, i32 }
%struct.tc_ife = type { i32, i32, i32 }

@ife_net_id = common dso_local global i32 0, align 4
@TCA_IFE_MAX = common dso_local global i32 0, align 4
@IFE_META_MAX = common dso_local global i32 0, align 4
@ETH_P_IFE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"IFE requires attributes to be passed\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ife_policy = common dso_local global i32* null, align 8
@TCA_IFE_PARMS = common dso_local global i64 0, align 8
@IFE_ENCODE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@act_ife_ops = common dso_local global i32 0, align 4
@ACT_P_CREATED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@TCA_IFE_TYPE = common dso_local global i64 0, align 8
@TCA_IFE_DMAC = common dso_local global i64 0, align 8
@TCA_IFE_SMAC = common dso_local global i64 0, align 8
@TCA_IFE_METALST = common dso_local global i64 0, align 8
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr*, %struct.nlattr*, %struct.tc_action**, i32, i32, i32, %struct.tcf_proto*, %struct.netlink_ext_ack*)* @tcf_ife_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_ife_init(%struct.net* %0, %struct.nlattr* %1, %struct.nlattr* %2, %struct.tc_action** %3, i32 %4, i32 %5, i32 %6, %struct.tcf_proto* %7, %struct.netlink_ext_ack* %8) #0 {
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
  %23 = alloca i64, align 8
  %24 = alloca %struct.tcf_chain*, align 8
  %25 = alloca %struct.tcf_ife_params*, align 8
  %26 = alloca %struct.tcf_ife_info*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.tc_ife*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.nlattr* %1, %struct.nlattr** %12, align 8
  store %struct.nlattr* %2, %struct.nlattr** %13, align 8
  store %struct.tc_action** %3, %struct.tc_action*** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.tcf_proto* %7, %struct.tcf_proto** %18, align 8
  store %struct.netlink_ext_ack* %8, %struct.netlink_ext_ack** %19, align 8
  %36 = load %struct.net*, %struct.net** %11, align 8
  %37 = load i32, i32* @ife_net_id, align 4
  %38 = call %struct.tc_action_net* @net_generic(%struct.net* %36, i32 %37)
  store %struct.tc_action_net* %38, %struct.tc_action_net** %20, align 8
  %39 = load i32, i32* @TCA_IFE_MAX, align 4
  %40 = add nsw i32 %39, 1
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %21, align 8
  %43 = alloca %struct.nlattr*, i64 %41, align 16
  store i64 %41, i64* %22, align 8
  %44 = load i32, i32* @IFE_META_MAX, align 4
  %45 = add nsw i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = alloca %struct.nlattr*, i64 %46, align 16
  store i64 %46, i64* %23, align 8
  store %struct.tcf_chain* null, %struct.tcf_chain** %24, align 8
  %48 = load i32, i32* @ETH_P_IFE, align 4
  store i32 %48, i32* %27, align 4
  store i32* null, i32** %29, align 8
  store i32* null, i32** %30, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  %49 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %50 = icmp ne %struct.nlattr* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %9
  %52 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %53 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %10, align 4
  store i32 1, i32* %35, align 4
  br label %356

56:                                               ; preds = %9
  %57 = load i32, i32* @TCA_IFE_MAX, align 4
  %58 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %59 = load i32*, i32** @ife_policy, align 8
  %60 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %43, i32 %57, %struct.nlattr* %58, i32* %59, i32* null)
  store i32 %60, i32* %34, align 4
  %61 = load i32, i32* %34, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %34, align 4
  store i32 %64, i32* %10, align 4
  store i32 1, i32* %35, align 4
  br label %356

65:                                               ; preds = %56
  %66 = load i64, i64* @TCA_IFE_PARMS, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  %69 = icmp ne %struct.nlattr* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  store i32 1, i32* %35, align 4
  br label %356

73:                                               ; preds = %65
  %74 = load i64, i64* @TCA_IFE_PARMS, align 8
  %75 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %74
  %76 = load %struct.nlattr*, %struct.nlattr** %75, align 8
  %77 = call i8* @nla_data(%struct.nlattr* %76)
  %78 = bitcast i8* %77 to %struct.tc_ife*
  store %struct.tc_ife* %78, %struct.tc_ife** %28, align 8
  %79 = load %struct.tc_ife*, %struct.tc_ife** %28, align 8
  %80 = getelementptr inbounds %struct.tc_ife, %struct.tc_ife* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IFE_ENCODE, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %73
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %10, align 4
  store i32 1, i32* %35, align 4
  br label %356

89:                                               ; preds = %73
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call %struct.tcf_ife_params* @kzalloc(i32 16, i32 %90)
  store %struct.tcf_ife_params* %91, %struct.tcf_ife_params** %25, align 8
  %92 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %25, align 8
  %93 = icmp ne %struct.tcf_ife_params* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %10, align 4
  store i32 1, i32* %35, align 4
  br label %356

97:                                               ; preds = %89
  %98 = load %struct.tc_ife*, %struct.tc_ife** %28, align 8
  %99 = getelementptr inbounds %struct.tc_ife, %struct.tc_ife* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %33, align 4
  %101 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %102 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @tcf_idr_check_alloc(%struct.tc_action_net* %101, i32* %33, %struct.tc_action** %102, i32 %103)
  store i32 %104, i32* %34, align 4
  %105 = load i32, i32* %34, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %97
  %108 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %25, align 8
  %109 = call i32 @kfree(%struct.tcf_ife_params* %108)
  %110 = load i32, i32* %34, align 4
  store i32 %110, i32* %10, align 4
  store i32 1, i32* %35, align 4
  br label %356

111:                                              ; preds = %97
  %112 = load i32, i32* %34, align 4
  store i32 %112, i32* %31, align 4
  %113 = load i32, i32* %31, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i32, i32* %16, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %25, align 8
  %120 = call i32 @kfree(%struct.tcf_ife_params* %119)
  store i32 0, i32* %10, align 4
  store i32 1, i32* %35, align 4
  br label %356

121:                                              ; preds = %115, %111
  %122 = load i32, i32* %31, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %142, label %124

124:                                              ; preds = %121
  %125 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %126 = load i32, i32* %33, align 4
  %127 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %128 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %129 = load i32, i32* %16, align 4
  %130 = call i32 @tcf_idr_create(%struct.tc_action_net* %125, i32 %126, %struct.nlattr* %127, %struct.tc_action** %128, i32* @act_ife_ops, i32 %129, i32 1)
  store i32 %130, i32* %32, align 4
  %131 = load i32, i32* %32, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %124
  %134 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %135 = load i32, i32* %33, align 4
  %136 = call i32 @tcf_idr_cleanup(%struct.tc_action_net* %134, i32 %135)
  %137 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %25, align 8
  %138 = call i32 @kfree(%struct.tcf_ife_params* %137)
  %139 = load i32, i32* %32, align 4
  store i32 %139, i32* %10, align 4
  store i32 1, i32* %35, align 4
  br label %356

140:                                              ; preds = %124
  %141 = load i32, i32* @ACT_P_CREATED, align 4
  store i32 %141, i32* %32, align 4
  br label %155

142:                                              ; preds = %121
  %143 = load i32, i32* %15, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %154, label %145

145:                                              ; preds = %142
  %146 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %147 = load %struct.tc_action*, %struct.tc_action** %146, align 8
  %148 = load i32, i32* %16, align 4
  %149 = call i32 @tcf_idr_release(%struct.tc_action* %147, i32 %148)
  %150 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %25, align 8
  %151 = call i32 @kfree(%struct.tcf_ife_params* %150)
  %152 = load i32, i32* @EEXIST, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %10, align 4
  store i32 1, i32* %35, align 4
  br label %356

154:                                              ; preds = %142
  br label %155

155:                                              ; preds = %154, %140
  %156 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %157 = load %struct.tc_action*, %struct.tc_action** %156, align 8
  %158 = call %struct.tcf_ife_info* @to_ife(%struct.tc_action* %157)
  store %struct.tcf_ife_info* %158, %struct.tcf_ife_info** %26, align 8
  %159 = load %struct.tc_ife*, %struct.tc_ife** %28, align 8
  %160 = getelementptr inbounds %struct.tc_ife, %struct.tc_ife* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.tcf_proto*, %struct.tcf_proto** %18, align 8
  %163 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %164 = call i32 @tcf_action_check_ctrlact(i32 %161, %struct.tcf_proto* %162, %struct.tcf_chain** %24, %struct.netlink_ext_ack* %163)
  store i32 %164, i32* %34, align 4
  %165 = load i32, i32* %34, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %155
  br label %348

168:                                              ; preds = %155
  %169 = load %struct.tc_ife*, %struct.tc_ife** %28, align 8
  %170 = getelementptr inbounds %struct.tc_ife, %struct.tc_ife* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %25, align 8
  %173 = getelementptr inbounds %struct.tcf_ife_params, %struct.tcf_ife_params* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 4
  %174 = load %struct.tc_ife*, %struct.tc_ife** %28, align 8
  %175 = getelementptr inbounds %struct.tc_ife, %struct.tc_ife* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @IFE_ENCODE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %213

180:                                              ; preds = %168
  %181 = load i64, i64* @TCA_IFE_TYPE, align 8
  %182 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %181
  %183 = load %struct.nlattr*, %struct.nlattr** %182, align 8
  %184 = icmp ne %struct.nlattr* %183, null
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load i64, i64* @TCA_IFE_TYPE, align 8
  %187 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %186
  %188 = load %struct.nlattr*, %struct.nlattr** %187, align 8
  %189 = call i32 @nla_get_u16(%struct.nlattr* %188)
  store i32 %189, i32* %27, align 4
  br label %190

190:                                              ; preds = %185, %180
  %191 = load i64, i64* @TCA_IFE_DMAC, align 8
  %192 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %191
  %193 = load %struct.nlattr*, %struct.nlattr** %192, align 8
  %194 = icmp ne %struct.nlattr* %193, null
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load i64, i64* @TCA_IFE_DMAC, align 8
  %197 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %196
  %198 = load %struct.nlattr*, %struct.nlattr** %197, align 8
  %199 = call i8* @nla_data(%struct.nlattr* %198)
  %200 = bitcast i8* %199 to i32*
  store i32* %200, i32** %29, align 8
  br label %201

201:                                              ; preds = %195, %190
  %202 = load i64, i64* @TCA_IFE_SMAC, align 8
  %203 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %202
  %204 = load %struct.nlattr*, %struct.nlattr** %203, align 8
  %205 = icmp ne %struct.nlattr* %204, null
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load i64, i64* @TCA_IFE_SMAC, align 8
  %208 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %207
  %209 = load %struct.nlattr*, %struct.nlattr** %208, align 8
  %210 = call i8* @nla_data(%struct.nlattr* %209)
  %211 = bitcast i8* %210 to i32*
  store i32* %211, i32** %30, align 8
  br label %212

212:                                              ; preds = %206, %201
  br label %213

213:                                              ; preds = %212, %168
  %214 = load %struct.tc_ife*, %struct.tc_ife** %28, align 8
  %215 = getelementptr inbounds %struct.tc_ife, %struct.tc_ife* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @IFE_ENCODE, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %252

220:                                              ; preds = %213
  %221 = load i32*, i32** %29, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %229

223:                                              ; preds = %220
  %224 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %25, align 8
  %225 = getelementptr inbounds %struct.tcf_ife_params, %struct.tcf_ife_params* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** %29, align 8
  %228 = call i32 @ether_addr_copy(i32 %226, i32* %227)
  br label %234

229:                                              ; preds = %220
  %230 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %25, align 8
  %231 = getelementptr inbounds %struct.tcf_ife_params, %struct.tcf_ife_params* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @eth_zero_addr(i32 %232)
  br label %234

234:                                              ; preds = %229, %223
  %235 = load i32*, i32** %30, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %237, label %243

237:                                              ; preds = %234
  %238 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %25, align 8
  %239 = getelementptr inbounds %struct.tcf_ife_params, %struct.tcf_ife_params* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** %30, align 8
  %242 = call i32 @ether_addr_copy(i32 %240, i32* %241)
  br label %248

243:                                              ; preds = %234
  %244 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %25, align 8
  %245 = getelementptr inbounds %struct.tcf_ife_params, %struct.tcf_ife_params* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @eth_zero_addr(i32 %246)
  br label %248

248:                                              ; preds = %243, %237
  %249 = load i32, i32* %27, align 4
  %250 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %25, align 8
  %251 = getelementptr inbounds %struct.tcf_ife_params, %struct.tcf_ife_params* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 4
  br label %252

252:                                              ; preds = %248, %213
  %253 = load i32, i32* %32, align 4
  %254 = load i32, i32* @ACT_P_CREATED, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %26, align 8
  %258 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %257, i32 0, i32 2
  %259 = call i32 @INIT_LIST_HEAD(i32* %258)
  br label %260

260:                                              ; preds = %256, %252
  %261 = load i64, i64* @TCA_IFE_METALST, align 8
  %262 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %261
  %263 = load %struct.nlattr*, %struct.nlattr** %262, align 8
  %264 = icmp ne %struct.nlattr* %263, null
  br i1 %264, label %265, label %283

265:                                              ; preds = %260
  %266 = load i32, i32* @IFE_META_MAX, align 4
  %267 = load i64, i64* @TCA_IFE_METALST, align 8
  %268 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %267
  %269 = load %struct.nlattr*, %struct.nlattr** %268, align 8
  %270 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %47, i32 %266, %struct.nlattr* %269, i32* null, i32* null)
  store i32 %270, i32* %34, align 4
  %271 = load i32, i32* %34, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %265
  br label %341

274:                                              ; preds = %265
  %275 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %26, align 8
  %276 = load i32, i32* %31, align 4
  %277 = load i32, i32* %17, align 4
  %278 = call i32 @populate_metalist(%struct.tcf_ife_info* %275, %struct.nlattr** %47, i32 %276, i32 %277)
  store i32 %278, i32* %34, align 4
  %279 = load i32, i32* %34, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %274
  br label %341

282:                                              ; preds = %274
  br label %291

283:                                              ; preds = %260
  %284 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %26, align 8
  %285 = load i32, i32* %31, align 4
  %286 = call i32 @use_all_metadata(%struct.tcf_ife_info* %284, i32 %285)
  store i32 %286, i32* %34, align 4
  %287 = load i32, i32* %34, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %283
  br label %341

290:                                              ; preds = %283
  br label %291

291:                                              ; preds = %290, %282
  %292 = load i32, i32* %31, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %291
  %295 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %26, align 8
  %296 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %295, i32 0, i32 0
  %297 = call i32 @spin_lock_bh(i32* %296)
  br label %298

298:                                              ; preds = %294, %291
  %299 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %300 = load %struct.tc_action*, %struct.tc_action** %299, align 8
  %301 = load %struct.tc_ife*, %struct.tc_ife** %28, align 8
  %302 = getelementptr inbounds %struct.tc_ife, %struct.tc_ife* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.tcf_chain*, %struct.tcf_chain** %24, align 8
  %305 = call %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action* %300, i32 %303, %struct.tcf_chain* %304)
  store %struct.tcf_chain* %305, %struct.tcf_chain** %24, align 8
  %306 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %26, align 8
  %307 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %25, align 8
  %310 = call i32 @rcu_swap_protected(i32 %308, %struct.tcf_ife_params* %309, i32 1)
  %311 = load i32, i32* %31, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %298
  %314 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %26, align 8
  %315 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %314, i32 0, i32 0
  %316 = call i32 @spin_unlock_bh(i32* %315)
  br label %317

317:                                              ; preds = %313, %298
  %318 = load %struct.tcf_chain*, %struct.tcf_chain** %24, align 8
  %319 = icmp ne %struct.tcf_chain* %318, null
  br i1 %319, label %320, label %323

320:                                              ; preds = %317
  %321 = load %struct.tcf_chain*, %struct.tcf_chain** %24, align 8
  %322 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %321)
  br label %323

323:                                              ; preds = %320, %317
  %324 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %25, align 8
  %325 = icmp ne %struct.tcf_ife_params* %324, null
  br i1 %325, label %326, label %330

326:                                              ; preds = %323
  %327 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %25, align 8
  %328 = load i32, i32* @rcu, align 4
  %329 = call i32 @kfree_rcu(%struct.tcf_ife_params* %327, i32 %328)
  br label %330

330:                                              ; preds = %326, %323
  %331 = load i32, i32* %32, align 4
  %332 = load i32, i32* @ACT_P_CREATED, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %339

334:                                              ; preds = %330
  %335 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %336 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %337 = load %struct.tc_action*, %struct.tc_action** %336, align 8
  %338 = call i32 @tcf_idr_insert(%struct.tc_action_net* %335, %struct.tc_action* %337)
  br label %339

339:                                              ; preds = %334, %330
  %340 = load i32, i32* %32, align 4
  store i32 %340, i32* %10, align 4
  store i32 1, i32* %35, align 4
  br label %356

341:                                              ; preds = %289, %281, %273
  %342 = load %struct.tcf_chain*, %struct.tcf_chain** %24, align 8
  %343 = icmp ne %struct.tcf_chain* %342, null
  br i1 %343, label %344, label %347

344:                                              ; preds = %341
  %345 = load %struct.tcf_chain*, %struct.tcf_chain** %24, align 8
  %346 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %345)
  br label %347

347:                                              ; preds = %344, %341
  br label %348

348:                                              ; preds = %347, %167
  %349 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %25, align 8
  %350 = call i32 @kfree(%struct.tcf_ife_params* %349)
  %351 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %352 = load %struct.tc_action*, %struct.tc_action** %351, align 8
  %353 = load i32, i32* %16, align 4
  %354 = call i32 @tcf_idr_release(%struct.tc_action* %352, i32 %353)
  %355 = load i32, i32* %34, align 4
  store i32 %355, i32* %10, align 4
  store i32 1, i32* %35, align 4
  br label %356

356:                                              ; preds = %348, %339, %145, %133, %118, %107, %94, %86, %70, %63, %51
  %357 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %357)
  %358 = load i32, i32* %10, align 4
  ret i32 %358
}

declare dso_local %struct.tc_action_net* @net_generic(%struct.net*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32*, i32*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.tcf_ife_params* @kzalloc(i32, i32) #1

declare dso_local i32 @tcf_idr_check_alloc(%struct.tc_action_net*, i32*, %struct.tc_action**, i32) #1

declare dso_local i32 @kfree(%struct.tcf_ife_params*) #1

declare dso_local i32 @tcf_idr_create(%struct.tc_action_net*, i32, %struct.nlattr*, %struct.tc_action**, i32*, i32, i32) #1

declare dso_local i32 @tcf_idr_cleanup(%struct.tc_action_net*, i32) #1

declare dso_local i32 @tcf_idr_release(%struct.tc_action*, i32) #1

declare dso_local %struct.tcf_ife_info* @to_ife(%struct.tc_action*) #1

declare dso_local i32 @tcf_action_check_ctrlact(i32, %struct.tcf_proto*, %struct.tcf_chain**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @populate_metalist(%struct.tcf_ife_info*, %struct.nlattr**, i32, i32) #1

declare dso_local i32 @use_all_metadata(%struct.tcf_ife_info*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action*, i32, %struct.tcf_chain*) #1

declare dso_local i32 @rcu_swap_protected(i32, %struct.tcf_ife_params*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tcf_chain_put_by_act(%struct.tcf_chain*) #1

declare dso_local i32 @kfree_rcu(%struct.tcf_ife_params*, i32) #1

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
