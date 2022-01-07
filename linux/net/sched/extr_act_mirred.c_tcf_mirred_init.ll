; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_mirred.c_tcf_mirred_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_mirred.c_tcf_mirred_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_action_net = type { i32 }
%struct.tcf_chain = type { i32 }
%struct.tc_mirred = type { i32, i32, i64, i32 }
%struct.tcf_mirred = type { i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }

@mirred_net_id = common dso_local global i32 0, align 4
@TCA_MIRRED_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Mirred requires attributes to be passed\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mirred_policy = common dso_local global i32 0, align 4
@TCA_MIRRED_PARMS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Missing required mirred parameters\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Unknown mirred option\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Specified device does not exist\00", align 1
@act_mirred_ops = common dso_local global i32 0, align 4
@ACT_P_CREATED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@mirred_list_lock = common dso_local global i32 0, align 4
@mirred_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr*, %struct.nlattr*, %struct.tc_action**, i32, i32, i32, %struct.tcf_proto*, %struct.netlink_ext_ack*)* @tcf_mirred_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_mirred_init(%struct.net* %0, %struct.nlattr* %1, %struct.nlattr* %2, %struct.tc_action** %3, i32 %4, i32 %5, i32 %6, %struct.tcf_proto* %7, %struct.netlink_ext_ack* %8) #0 {
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
  %23 = alloca %struct.tcf_chain*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.tc_mirred*, align 8
  %26 = alloca %struct.tcf_mirred*, align 8
  %27 = alloca %struct.net_device*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.nlattr* %1, %struct.nlattr** %12, align 8
  store %struct.nlattr* %2, %struct.nlattr** %13, align 8
  store %struct.tc_action** %3, %struct.tc_action*** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.tcf_proto* %7, %struct.tcf_proto** %18, align 8
  store %struct.netlink_ext_ack* %8, %struct.netlink_ext_ack** %19, align 8
  %33 = load %struct.net*, %struct.net** %11, align 8
  %34 = load i32, i32* @mirred_net_id, align 4
  %35 = call %struct.tc_action_net* @net_generic(%struct.net* %33, i32 %34)
  store %struct.tc_action_net* %35, %struct.tc_action_net** %20, align 8
  %36 = load i32, i32* @TCA_MIRRED_MAX, align 4
  %37 = add nsw i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %21, align 8
  %40 = alloca %struct.nlattr*, i64 %38, align 16
  store i64 %38, i64* %22, align 8
  store %struct.tcf_chain* null, %struct.tcf_chain** %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %28, align 4
  %41 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %9
  %44 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %45 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %10, align 4
  store i32 1, i32* %32, align 4
  br label %270

48:                                               ; preds = %9
  %49 = load i32, i32* @TCA_MIRRED_MAX, align 4
  %50 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %51 = load i32, i32* @mirred_policy, align 4
  %52 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %53 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %40, i32 %49, %struct.nlattr* %50, i32 %51, %struct.netlink_ext_ack* %52)
  store i32 %53, i32* %29, align 4
  %54 = load i32, i32* %29, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %29, align 4
  store i32 %57, i32* %10, align 4
  store i32 1, i32* %32, align 4
  br label %270

58:                                               ; preds = %48
  %59 = load i64, i64* @TCA_MIRRED_PARMS, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = icmp ne %struct.nlattr* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %65 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %10, align 4
  store i32 1, i32* %32, align 4
  br label %270

68:                                               ; preds = %58
  %69 = load i64, i64* @TCA_MIRRED_PARMS, align 8
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = call %struct.tc_mirred* @nla_data(%struct.nlattr* %71)
  store %struct.tc_mirred* %72, %struct.tc_mirred** %25, align 8
  %73 = load %struct.tc_mirred*, %struct.tc_mirred** %25, align 8
  %74 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %31, align 4
  %76 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %77 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @tcf_idr_check_alloc(%struct.tc_action_net* %76, i32* %31, %struct.tc_action** %77, i32 %78)
  store i32 %79, i32* %30, align 4
  %80 = load i32, i32* %30, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %68
  %83 = load i32, i32* %30, align 4
  store i32 %83, i32* %10, align 4
  store i32 1, i32* %32, align 4
  br label %270

84:                                               ; preds = %68
  %85 = load i32, i32* %30, align 4
  store i32 %85, i32* %28, align 4
  %86 = load i32, i32* %28, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 0, i32* %10, align 4
  store i32 1, i32* %32, align 4
  br label %270

92:                                               ; preds = %88, %84
  %93 = load %struct.tc_mirred*, %struct.tc_mirred** %25, align 8
  %94 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  switch i32 %95, label %97 [
    i32 131, label %96
    i32 130, label %96
    i32 128, label %96
    i32 129, label %96
  ]

96:                                               ; preds = %92, %92, %92, %92
  br label %114

97:                                               ; preds = %92
  %98 = load i32, i32* %28, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %102 = load %struct.tc_action*, %struct.tc_action** %101, align 8
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @tcf_idr_release(%struct.tc_action* %102, i32 %103)
  br label %109

105:                                              ; preds = %97
  %106 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %107 = load i32, i32* %31, align 4
  %108 = call i32 @tcf_idr_cleanup(%struct.tc_action_net* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %100
  %110 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %111 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %110, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %10, align 4
  store i32 1, i32* %32, align 4
  br label %270

114:                                              ; preds = %96
  %115 = load i32, i32* %28, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %146, label %117

117:                                              ; preds = %114
  %118 = load %struct.tc_mirred*, %struct.tc_mirred** %25, align 8
  %119 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %117
  %123 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %124 = load i32, i32* %31, align 4
  %125 = call i32 @tcf_idr_cleanup(%struct.tc_action_net* %123, i32 %124)
  %126 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %127 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %126, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %10, align 4
  store i32 1, i32* %32, align 4
  br label %270

130:                                              ; preds = %117
  %131 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %132 = load i32, i32* %31, align 4
  %133 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %134 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %135 = load i32, i32* %16, align 4
  %136 = call i32 @tcf_idr_create(%struct.tc_action_net* %131, i32 %132, %struct.nlattr* %133, %struct.tc_action** %134, i32* @act_mirred_ops, i32 %135, i32 1)
  store i32 %136, i32* %29, align 4
  %137 = load i32, i32* %29, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %130
  %140 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %141 = load i32, i32* %31, align 4
  %142 = call i32 @tcf_idr_cleanup(%struct.tc_action_net* %140, i32 %141)
  %143 = load i32, i32* %29, align 4
  store i32 %143, i32* %10, align 4
  store i32 1, i32* %32, align 4
  br label %270

144:                                              ; preds = %130
  %145 = load i32, i32* @ACT_P_CREATED, align 4
  store i32 %145, i32* %29, align 4
  br label %157

146:                                              ; preds = %114
  %147 = load i32, i32* %15, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %146
  %150 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %151 = load %struct.tc_action*, %struct.tc_action** %150, align 8
  %152 = load i32, i32* %16, align 4
  %153 = call i32 @tcf_idr_release(%struct.tc_action* %151, i32 %152)
  %154 = load i32, i32* @EEXIST, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %10, align 4
  store i32 1, i32* %32, align 4
  br label %270

156:                                              ; preds = %146
  br label %157

157:                                              ; preds = %156, %144
  %158 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %159 = load %struct.tc_action*, %struct.tc_action** %158, align 8
  %160 = call %struct.tcf_mirred* @to_mirred(%struct.tc_action* %159)
  store %struct.tcf_mirred* %160, %struct.tcf_mirred** %26, align 8
  %161 = load i32, i32* %29, align 4
  %162 = load i32, i32* @ACT_P_CREATED, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = load %struct.tcf_mirred*, %struct.tcf_mirred** %26, align 8
  %166 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %165, i32 0, i32 2
  %167 = call i32 @INIT_LIST_HEAD(i32* %166)
  br label %168

168:                                              ; preds = %164, %157
  %169 = load %struct.tc_mirred*, %struct.tc_mirred** %25, align 8
  %170 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.tcf_proto*, %struct.tcf_proto** %18, align 8
  %173 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %174 = call i32 @tcf_action_check_ctrlact(i32 %171, %struct.tcf_proto* %172, %struct.tcf_chain** %23, %struct.netlink_ext_ack* %173)
  store i32 %174, i32* %30, align 4
  %175 = load i32, i32* %30, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %168
  br label %264

178:                                              ; preds = %168
  %179 = load %struct.tcf_mirred*, %struct.tcf_mirred** %26, align 8
  %180 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %179, i32 0, i32 3
  %181 = call i32 @spin_lock_bh(i32* %180)
  %182 = load %struct.tc_mirred*, %struct.tc_mirred** %25, align 8
  %183 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %220

186:                                              ; preds = %178
  %187 = load %struct.net*, %struct.net** %11, align 8
  %188 = load %struct.tc_mirred*, %struct.tc_mirred** %25, align 8
  %189 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = call %struct.net_device* @dev_get_by_index(%struct.net* %187, i64 %190)
  store %struct.net_device* %191, %struct.net_device** %27, align 8
  %192 = load %struct.net_device*, %struct.net_device** %27, align 8
  %193 = icmp ne %struct.net_device* %192, null
  br i1 %193, label %200, label %194

194:                                              ; preds = %186
  %195 = load %struct.tcf_mirred*, %struct.tcf_mirred** %26, align 8
  %196 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %195, i32 0, i32 3
  %197 = call i32 @spin_unlock_bh(i32* %196)
  %198 = load i32, i32* @ENODEV, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %30, align 4
  br label %257

200:                                              ; preds = %186
  %201 = load %struct.net_device*, %struct.net_device** %27, align 8
  %202 = call i32 @dev_is_mac_header_xmit(%struct.net_device* %201)
  store i32 %202, i32* %24, align 4
  %203 = load %struct.tcf_mirred*, %struct.tcf_mirred** %26, align 8
  %204 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.net_device*, %struct.net_device** %27, align 8
  %207 = load %struct.tcf_mirred*, %struct.tcf_mirred** %26, align 8
  %208 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %207, i32 0, i32 3
  %209 = call i32 @lockdep_is_held(i32* %208)
  %210 = call i32 @rcu_swap_protected(i32 %205, %struct.net_device* %206, i32 %209)
  %211 = load %struct.net_device*, %struct.net_device** %27, align 8
  %212 = icmp ne %struct.net_device* %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %200
  %214 = load %struct.net_device*, %struct.net_device** %27, align 8
  %215 = call i32 @dev_put(%struct.net_device* %214)
  br label %216

216:                                              ; preds = %213, %200
  %217 = load i32, i32* %24, align 4
  %218 = load %struct.tcf_mirred*, %struct.tcf_mirred** %26, align 8
  %219 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 4
  br label %220

220:                                              ; preds = %216, %178
  %221 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %222 = load %struct.tc_action*, %struct.tc_action** %221, align 8
  %223 = load %struct.tc_mirred*, %struct.tc_mirred** %25, align 8
  %224 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.tcf_chain*, %struct.tcf_chain** %23, align 8
  %227 = call %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action* %222, i32 %225, %struct.tcf_chain* %226)
  store %struct.tcf_chain* %227, %struct.tcf_chain** %23, align 8
  %228 = load %struct.tc_mirred*, %struct.tc_mirred** %25, align 8
  %229 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.tcf_mirred*, %struct.tcf_mirred** %26, align 8
  %232 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 4
  %233 = load %struct.tcf_mirred*, %struct.tcf_mirred** %26, align 8
  %234 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %233, i32 0, i32 3
  %235 = call i32 @spin_unlock_bh(i32* %234)
  %236 = load %struct.tcf_chain*, %struct.tcf_chain** %23, align 8
  %237 = icmp ne %struct.tcf_chain* %236, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %220
  %239 = load %struct.tcf_chain*, %struct.tcf_chain** %23, align 8
  %240 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %239)
  br label %241

241:                                              ; preds = %238, %220
  %242 = load i32, i32* %29, align 4
  %243 = load i32, i32* @ACT_P_CREATED, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %255

245:                                              ; preds = %241
  %246 = call i32 @spin_lock(i32* @mirred_list_lock)
  %247 = load %struct.tcf_mirred*, %struct.tcf_mirred** %26, align 8
  %248 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %247, i32 0, i32 2
  %249 = call i32 @list_add(i32* %248, i32* @mirred_list)
  %250 = call i32 @spin_unlock(i32* @mirred_list_lock)
  %251 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %252 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %253 = load %struct.tc_action*, %struct.tc_action** %252, align 8
  %254 = call i32 @tcf_idr_insert(%struct.tc_action_net* %251, %struct.tc_action* %253)
  br label %255

255:                                              ; preds = %245, %241
  %256 = load i32, i32* %29, align 4
  store i32 %256, i32* %10, align 4
  store i32 1, i32* %32, align 4
  br label %270

257:                                              ; preds = %194
  %258 = load %struct.tcf_chain*, %struct.tcf_chain** %23, align 8
  %259 = icmp ne %struct.tcf_chain* %258, null
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load %struct.tcf_chain*, %struct.tcf_chain** %23, align 8
  %262 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %261)
  br label %263

263:                                              ; preds = %260, %257
  br label %264

264:                                              ; preds = %263, %177
  %265 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %266 = load %struct.tc_action*, %struct.tc_action** %265, align 8
  %267 = load i32, i32* %16, align 4
  %268 = call i32 @tcf_idr_release(%struct.tc_action* %266, i32 %267)
  %269 = load i32, i32* %30, align 4
  store i32 %269, i32* %10, align 4
  store i32 1, i32* %32, align 4
  br label %270

270:                                              ; preds = %264, %255, %149, %139, %122, %109, %91, %82, %63, %56, %43
  %271 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %271)
  %272 = load i32, i32* %10, align 4
  ret i32 %272
}

declare dso_local %struct.tc_action_net* @net_generic(%struct.net*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tc_mirred* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @tcf_idr_check_alloc(%struct.tc_action_net*, i32*, %struct.tc_action**, i32) #1

declare dso_local i32 @tcf_idr_release(%struct.tc_action*, i32) #1

declare dso_local i32 @tcf_idr_cleanup(%struct.tc_action_net*, i32) #1

declare dso_local i32 @tcf_idr_create(%struct.tc_action_net*, i32, %struct.nlattr*, %struct.tc_action**, i32*, i32, i32) #1

declare dso_local %struct.tcf_mirred* @to_mirred(%struct.tc_action*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tcf_action_check_ctrlact(i32, %struct.tcf_proto*, %struct.tcf_chain**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dev_is_mac_header_xmit(%struct.net_device*) #1

declare dso_local i32 @rcu_swap_protected(i32, %struct.net_device*, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action*, i32, %struct.tcf_chain*) #1

declare dso_local i32 @tcf_chain_put_by_act(%struct.tcf_chain*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

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
