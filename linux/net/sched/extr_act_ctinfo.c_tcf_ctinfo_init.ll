; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ctinfo.c_tcf_ctinfo_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ctinfo.c_tcf_ctinfo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_action_net = type { i32 }
%struct.tcf_ctinfo_params = type { i32, i32, i32, i32, i8*, i32, %struct.net* }
%struct.tcf_chain = type { i32 }
%struct.tc_ctinfo = type { i32, i32 }
%struct.tcf_ctinfo = type { i32, i32 }

@ctinfo_net_id = common dso_local global i32 0, align 4
@TCA_CTINFO_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ctinfo requires attributes to be passed\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ctinfo_policy = common dso_local global i32 0, align 4
@TCA_CTINFO_ACT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Missing required TCA_CTINFO_ACT attribute\00", align 1
@TCA_CTINFO_PARMS_DSCP_MASK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"dscp mask must be 6 contiguous bits\00", align 1
@TCA_CTINFO_PARMS_DSCP_STATEMASK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"dscp statemask must not overlap dscp mask\00", align 1
@act_ctinfo_ops = common dso_local global i32 0, align 4
@ACT_P_CREATED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TCA_CTINFO_ZONE = common dso_local global i64 0, align 8
@CTINFO_MODE_DSCP = common dso_local global i32 0, align 4
@TCA_CTINFO_PARMS_CPMARK_MASK = common dso_local global i64 0, align 8
@CTINFO_MODE_CPMARK = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr*, %struct.nlattr*, %struct.tc_action**, i32, i32, i32, %struct.tcf_proto*, %struct.netlink_ext_ack*)* @tcf_ctinfo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_ctinfo_init(%struct.net* %0, %struct.nlattr* %1, %struct.nlattr* %2, %struct.tc_action** %3, i32 %4, i32 %5, i32 %6, %struct.tcf_proto* %7, %struct.netlink_ext_ack* %8) #0 {
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.tcf_ctinfo_params*, align 8
  %27 = alloca %struct.tcf_chain*, align 8
  %28 = alloca %struct.tc_ctinfo*, align 8
  %29 = alloca %struct.tcf_ctinfo*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.nlattr* %1, %struct.nlattr** %12, align 8
  store %struct.nlattr* %2, %struct.nlattr** %13, align 8
  store %struct.tc_action** %3, %struct.tc_action*** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.tcf_proto* %7, %struct.tcf_proto** %18, align 8
  store %struct.netlink_ext_ack* %8, %struct.netlink_ext_ack** %19, align 8
  %34 = load %struct.net*, %struct.net** %11, align 8
  %35 = load i32, i32* @ctinfo_net_id, align 4
  %36 = call %struct.tc_action_net* @net_generic(%struct.net* %34, i32 %35)
  store %struct.tc_action_net* %36, %struct.tc_action_net** %20, align 8
  store i32 0, i32* %21, align 4
  %37 = load i32, i32* @TCA_CTINFO_MAX, align 4
  %38 = add nsw i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %24, align 8
  %41 = alloca %struct.nlattr*, i64 %39, align 16
  store i64 %39, i64* %25, align 8
  store %struct.tcf_chain* null, %struct.tcf_chain** %27, align 8
  store i32 0, i32* %31, align 4
  %42 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %43 = icmp ne %struct.nlattr* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %9
  %45 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %46 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %314

49:                                               ; preds = %9
  %50 = load i32, i32* @TCA_CTINFO_MAX, align 4
  %51 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %52 = load i32, i32* @ctinfo_policy, align 4
  %53 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %54 = call i32 @nla_parse_nested(%struct.nlattr** %41, i32 %50, %struct.nlattr* %51, i32 %52, %struct.netlink_ext_ack* %53)
  store i32 %54, i32* %32, align 4
  %55 = load i32, i32* %32, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %32, align 4
  store i32 %58, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %314

59:                                               ; preds = %49
  %60 = load i64, i64* @TCA_CTINFO_ACT, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = icmp ne %struct.nlattr* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %66 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %314

69:                                               ; preds = %59
  %70 = load i64, i64* @TCA_CTINFO_ACT, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = call %struct.tc_ctinfo* @nla_data(%struct.nlattr* %72)
  store %struct.tc_ctinfo* %73, %struct.tc_ctinfo** %28, align 8
  %74 = load i64, i64* @TCA_CTINFO_PARMS_DSCP_MASK, align 8
  %75 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %74
  %76 = load %struct.nlattr*, %struct.nlattr** %75, align 8
  %77 = icmp ne %struct.nlattr* %76, null
  br i1 %77, label %78, label %132

78:                                               ; preds = %69
  %79 = load i64, i64* @TCA_CTINFO_PARMS_DSCP_MASK, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = call i8* @nla_get_u32(%struct.nlattr* %81)
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %21, align 4
  %84 = load i32, i32* %21, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i32, i32* %21, align 4
  %88 = call i32 @__ffs(i32 %87)
  br label %90

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89, %86
  %91 = phi i32 [ %88, %86 ], [ 0, %89 ]
  store i32 %91, i32* %30, align 4
  %92 = load i32, i32* %21, align 4
  %93 = load i32, i32* %30, align 4
  %94 = ashr i32 %92, %93
  %95 = and i32 -1, %94
  %96 = icmp ne i32 %95, 63
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %99 = load i64, i64* @TCA_CTINFO_PARMS_DSCP_MASK, align 8
  %100 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %99
  %101 = load %struct.nlattr*, %struct.nlattr** %100, align 8
  %102 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %98, %struct.nlattr* %101, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %314

105:                                              ; preds = %90
  %106 = load i64, i64* @TCA_CTINFO_PARMS_DSCP_STATEMASK, align 8
  %107 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %106
  %108 = load %struct.nlattr*, %struct.nlattr** %107, align 8
  %109 = icmp ne %struct.nlattr* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i64, i64* @TCA_CTINFO_PARMS_DSCP_STATEMASK, align 8
  %112 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %111
  %113 = load %struct.nlattr*, %struct.nlattr** %112, align 8
  %114 = call i8* @nla_get_u32(%struct.nlattr* %113)
  br label %116

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115, %110
  %117 = phi i8* [ %114, %110 ], [ null, %115 ]
  %118 = ptrtoint i8* %117 to i32
  store i32 %118, i32* %22, align 4
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* %22, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %116
  %124 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %125 = load i64, i64* @TCA_CTINFO_PARMS_DSCP_STATEMASK, align 8
  %126 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %125
  %127 = load %struct.nlattr*, %struct.nlattr** %126, align 8
  %128 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %124, %struct.nlattr* %127, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %314

131:                                              ; preds = %116
  br label %132

132:                                              ; preds = %131, %69
  %133 = load %struct.tc_ctinfo*, %struct.tc_ctinfo** %28, align 8
  %134 = getelementptr inbounds %struct.tc_ctinfo, %struct.tc_ctinfo* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %23, align 4
  %136 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %137 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %138 = load i32, i32* %16, align 4
  %139 = call i32 @tcf_idr_check_alloc(%struct.tc_action_net* %136, i32* %23, %struct.tc_action** %137, i32 %138)
  store i32 %139, i32* %32, align 4
  %140 = load i32, i32* %32, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %158, label %142

142:                                              ; preds = %132
  %143 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %144 = load i32, i32* %23, align 4
  %145 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %146 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @tcf_idr_create(%struct.tc_action_net* %143, i32 %144, %struct.nlattr* %145, %struct.tc_action** %146, i32* @act_ctinfo_ops, i32 %147, i32 0)
  store i32 %148, i32* %31, align 4
  %149 = load i32, i32* %31, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %142
  %152 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %153 = load i32, i32* %23, align 4
  %154 = call i32 @tcf_idr_cleanup(%struct.tc_action_net* %152, i32 %153)
  %155 = load i32, i32* %31, align 4
  store i32 %155, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %314

156:                                              ; preds = %142
  %157 = load i32, i32* @ACT_P_CREATED, align 4
  store i32 %157, i32* %31, align 4
  br label %179

158:                                              ; preds = %132
  %159 = load i32, i32* %32, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %158
  %162 = load i32, i32* %16, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 0, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %314

165:                                              ; preds = %161
  %166 = load i32, i32* %15, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %165
  %169 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %170 = load %struct.tc_action*, %struct.tc_action** %169, align 8
  %171 = load i32, i32* %16, align 4
  %172 = call i32 @tcf_idr_release(%struct.tc_action* %170, i32 %171)
  %173 = load i32, i32* @EEXIST, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %314

175:                                              ; preds = %165
  br label %178

176:                                              ; preds = %158
  %177 = load i32, i32* %32, align 4
  store i32 %177, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %314

178:                                              ; preds = %175
  br label %179

179:                                              ; preds = %178, %156
  %180 = load %struct.tc_ctinfo*, %struct.tc_ctinfo** %28, align 8
  %181 = getelementptr inbounds %struct.tc_ctinfo, %struct.tc_ctinfo* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.tcf_proto*, %struct.tcf_proto** %18, align 8
  %184 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %185 = call i32 @tcf_action_check_ctrlact(i32 %182, %struct.tcf_proto* %183, %struct.tcf_chain** %27, %struct.netlink_ext_ack* %184)
  store i32 %185, i32* %32, align 4
  %186 = load i32, i32* %32, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %179
  br label %308

189:                                              ; preds = %179
  %190 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %191 = load %struct.tc_action*, %struct.tc_action** %190, align 8
  %192 = call %struct.tcf_ctinfo* @to_ctinfo(%struct.tc_action* %191)
  store %struct.tcf_ctinfo* %192, %struct.tcf_ctinfo** %29, align 8
  %193 = load i32, i32* @GFP_KERNEL, align 4
  %194 = call %struct.tcf_ctinfo_params* @kzalloc(i32 40, i32 %193)
  store %struct.tcf_ctinfo_params* %194, %struct.tcf_ctinfo_params** %26, align 8
  %195 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %26, align 8
  %196 = icmp ne %struct.tcf_ctinfo_params* %195, null
  %197 = xor i1 %196, true
  %198 = zext i1 %197 to i32
  %199 = call i64 @unlikely(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %189
  %202 = load i32, i32* @ENOMEM, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %32, align 4
  br label %301

204:                                              ; preds = %189
  %205 = load %struct.net*, %struct.net** %11, align 8
  %206 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %26, align 8
  %207 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %206, i32 0, i32 6
  store %struct.net* %205, %struct.net** %207, align 8
  %208 = load i64, i64* @TCA_CTINFO_ZONE, align 8
  %209 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %208
  %210 = load %struct.nlattr*, %struct.nlattr** %209, align 8
  %211 = icmp ne %struct.nlattr* %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %204
  %213 = load i64, i64* @TCA_CTINFO_ZONE, align 8
  %214 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %213
  %215 = load %struct.nlattr*, %struct.nlattr** %214, align 8
  %216 = call i32 @nla_get_u16(%struct.nlattr* %215)
  br label %218

217:                                              ; preds = %204
  br label %218

218:                                              ; preds = %217, %212
  %219 = phi i32 [ %216, %212 ], [ 0, %217 ]
  %220 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %26, align 8
  %221 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %220, i32 0, i32 5
  store i32 %219, i32* %221, align 8
  %222 = load i32, i32* %21, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %239

224:                                              ; preds = %218
  %225 = load i32, i32* %21, align 4
  %226 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %26, align 8
  %227 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 8
  %228 = load i32, i32* %30, align 4
  %229 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %26, align 8
  %230 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  %231 = load i32, i32* %22, align 4
  %232 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %26, align 8
  %233 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 8
  %234 = load i32, i32* @CTINFO_MODE_DSCP, align 4
  %235 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %26, align 8
  %236 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 4
  br label %239

239:                                              ; preds = %224, %218
  %240 = load i64, i64* @TCA_CTINFO_PARMS_CPMARK_MASK, align 8
  %241 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %240
  %242 = load %struct.nlattr*, %struct.nlattr** %241, align 8
  %243 = icmp ne %struct.nlattr* %242, null
  br i1 %243, label %244, label %256

244:                                              ; preds = %239
  %245 = load i64, i64* @TCA_CTINFO_PARMS_CPMARK_MASK, align 8
  %246 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %245
  %247 = load %struct.nlattr*, %struct.nlattr** %246, align 8
  %248 = call i8* @nla_get_u32(%struct.nlattr* %247)
  %249 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %26, align 8
  %250 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %249, i32 0, i32 4
  store i8* %248, i8** %250, align 8
  %251 = load i32, i32* @CTINFO_MODE_CPMARK, align 4
  %252 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %26, align 8
  %253 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 4
  br label %256

256:                                              ; preds = %244, %239
  %257 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %29, align 8
  %258 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %257, i32 0, i32 0
  %259 = call i32 @spin_lock_bh(i32* %258)
  %260 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %261 = load %struct.tc_action*, %struct.tc_action** %260, align 8
  %262 = load %struct.tc_ctinfo*, %struct.tc_ctinfo** %28, align 8
  %263 = getelementptr inbounds %struct.tc_ctinfo, %struct.tc_ctinfo* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.tcf_chain*, %struct.tcf_chain** %27, align 8
  %266 = call %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action* %261, i32 %264, %struct.tcf_chain* %265)
  store %struct.tcf_chain* %266, %struct.tcf_chain** %27, align 8
  %267 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %29, align 8
  %268 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %26, align 8
  %271 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %29, align 8
  %272 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %271, i32 0, i32 0
  %273 = call i32 @lockdep_is_held(i32* %272)
  %274 = call i32 @rcu_swap_protected(i32 %269, %struct.tcf_ctinfo_params* %270, i32 %273)
  %275 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %29, align 8
  %276 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %275, i32 0, i32 0
  %277 = call i32 @spin_unlock_bh(i32* %276)
  %278 = load %struct.tcf_chain*, %struct.tcf_chain** %27, align 8
  %279 = icmp ne %struct.tcf_chain* %278, null
  br i1 %279, label %280, label %283

280:                                              ; preds = %256
  %281 = load %struct.tcf_chain*, %struct.tcf_chain** %27, align 8
  %282 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %281)
  br label %283

283:                                              ; preds = %280, %256
  %284 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %26, align 8
  %285 = icmp ne %struct.tcf_ctinfo_params* %284, null
  br i1 %285, label %286, label %290

286:                                              ; preds = %283
  %287 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %26, align 8
  %288 = load i32, i32* @rcu, align 4
  %289 = call i32 @kfree_rcu(%struct.tcf_ctinfo_params* %287, i32 %288)
  br label %290

290:                                              ; preds = %286, %283
  %291 = load i32, i32* %31, align 4
  %292 = load i32, i32* @ACT_P_CREATED, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %299

294:                                              ; preds = %290
  %295 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %296 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %297 = load %struct.tc_action*, %struct.tc_action** %296, align 8
  %298 = call i32 @tcf_idr_insert(%struct.tc_action_net* %295, %struct.tc_action* %297)
  br label %299

299:                                              ; preds = %294, %290
  %300 = load i32, i32* %31, align 4
  store i32 %300, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %314

301:                                              ; preds = %201
  %302 = load %struct.tcf_chain*, %struct.tcf_chain** %27, align 8
  %303 = icmp ne %struct.tcf_chain* %302, null
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load %struct.tcf_chain*, %struct.tcf_chain** %27, align 8
  %306 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %305)
  br label %307

307:                                              ; preds = %304, %301
  br label %308

308:                                              ; preds = %307, %188
  %309 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %310 = load %struct.tc_action*, %struct.tc_action** %309, align 8
  %311 = load i32, i32* %16, align 4
  %312 = call i32 @tcf_idr_release(%struct.tc_action* %310, i32 %311)
  %313 = load i32, i32* %32, align 4
  store i32 %313, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %314

314:                                              ; preds = %308, %299, %176, %168, %164, %151, %123, %97, %64, %57, %44
  %315 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %315)
  %316 = load i32, i32* %10, align 4
  ret i32 %316
}

declare dso_local %struct.tc_action_net* @net_generic(%struct.net*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tc_ctinfo* @nla_data(%struct.nlattr*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*, i8*) #1

declare dso_local i32 @tcf_idr_check_alloc(%struct.tc_action_net*, i32*, %struct.tc_action**, i32) #1

declare dso_local i32 @tcf_idr_create(%struct.tc_action_net*, i32, %struct.nlattr*, %struct.tc_action**, i32*, i32, i32) #1

declare dso_local i32 @tcf_idr_cleanup(%struct.tc_action_net*, i32) #1

declare dso_local i32 @tcf_idr_release(%struct.tc_action*, i32) #1

declare dso_local i32 @tcf_action_check_ctrlact(i32, %struct.tcf_proto*, %struct.tcf_chain**, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tcf_ctinfo* @to_ctinfo(%struct.tc_action*) #1

declare dso_local %struct.tcf_ctinfo_params* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action*, i32, %struct.tcf_chain*) #1

declare dso_local i32 @rcu_swap_protected(i32, %struct.tcf_ctinfo_params*, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tcf_chain_put_by_act(%struct.tcf_chain*) #1

declare dso_local i32 @kfree_rcu(%struct.tcf_ctinfo_params*, i32) #1

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
