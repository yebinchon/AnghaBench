; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_sample.c_tcf_sample_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_sample.c_tcf_sample_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_action_net = type { i32 }
%struct.psample_group = type { i32 }
%struct.tcf_chain = type { i32 }
%struct.tc_sample = type { i32, i8* }
%struct.tcf_sample = type { i32, i32, i8*, i32, i8*, i8* }

@sample_net_id = common dso_local global i32 0, align 4
@TCA_SAMPLE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@sample_policy = common dso_local global i32 0, align 4
@TCA_SAMPLE_PARMS = common dso_local global i64 0, align 8
@TCA_SAMPLE_RATE = common dso_local global i64 0, align 8
@TCA_SAMPLE_PSAMPLE_GROUP = common dso_local global i64 0, align 8
@act_sample_ops = common dso_local global i32 0, align 4
@ACT_P_CREATED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid sample rate\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TCA_SAMPLE_TRUNC_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr*, %struct.nlattr*, %struct.tc_action**, i32, i32, i32, %struct.tcf_proto*, %struct.netlink_ext_ack*)* @tcf_sample_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_sample_init(%struct.net* %0, %struct.nlattr* %1, %struct.nlattr* %2, %struct.tc_action** %3, i32 %4, i32 %5, i32 %6, %struct.tcf_proto* %7, %struct.netlink_ext_ack* %8) #0 {
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
  %23 = alloca %struct.psample_group*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.tcf_chain*, align 8
  %28 = alloca %struct.tc_sample*, align 8
  %29 = alloca %struct.tcf_sample*, align 8
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
  %35 = load i32, i32* @sample_net_id, align 4
  %36 = call %struct.tc_action_net* @net_generic(%struct.net* %34, i32 %35)
  store %struct.tc_action_net* %36, %struct.tc_action_net** %20, align 8
  %37 = load i32, i32* @TCA_SAMPLE_MAX, align 4
  %38 = add nsw i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %21, align 8
  %41 = alloca %struct.nlattr*, i64 %39, align 16
  store i64 %39, i64* %22, align 8
  store %struct.tcf_chain* null, %struct.tcf_chain** %27, align 8
  store i32 0, i32* %30, align 4
  %42 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %43 = icmp ne %struct.nlattr* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %9
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %243

47:                                               ; preds = %9
  %48 = load i32, i32* @TCA_SAMPLE_MAX, align 4
  %49 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %50 = load i32, i32* @sample_policy, align 4
  %51 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %41, i32 %48, %struct.nlattr* %49, i32 %50, i32* null)
  store i32 %51, i32* %31, align 4
  %52 = load i32, i32* %31, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %31, align 4
  store i32 %55, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %243

56:                                               ; preds = %47
  %57 = load i64, i64* @TCA_SAMPLE_PARMS, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load i64, i64* @TCA_SAMPLE_RATE, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = icmp ne %struct.nlattr* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i64, i64* @TCA_SAMPLE_PSAMPLE_GROUP, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = icmp ne %struct.nlattr* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %66, %61, %56
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %243

74:                                               ; preds = %66
  %75 = load i64, i64* @TCA_SAMPLE_PARMS, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = call %struct.tc_sample* @nla_data(%struct.nlattr* %77)
  store %struct.tc_sample* %78, %struct.tc_sample** %28, align 8
  %79 = load %struct.tc_sample*, %struct.tc_sample** %28, align 8
  %80 = getelementptr inbounds %struct.tc_sample, %struct.tc_sample* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %26, align 8
  %82 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %83 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @tcf_idr_check_alloc(%struct.tc_action_net* %82, i8** %26, %struct.tc_action** %83, i32 %84)
  store i32 %85, i32* %32, align 4
  %86 = load i32, i32* %32, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %74
  %89 = load i32, i32* %32, align 4
  store i32 %89, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %243

90:                                               ; preds = %74
  %91 = load i32, i32* %32, align 4
  store i32 %91, i32* %30, align 4
  %92 = load i32, i32* %30, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 0, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %243

98:                                               ; preds = %94, %90
  %99 = load i32, i32* %30, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %117, label %101

101:                                              ; preds = %98
  %102 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %103 = load i8*, i8** %26, align 8
  %104 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %105 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @tcf_idr_create(%struct.tc_action_net* %102, i8* %103, %struct.nlattr* %104, %struct.tc_action** %105, i32* @act_sample_ops, i32 %106, i32 1)
  store i32 %107, i32* %31, align 4
  %108 = load i32, i32* %31, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %101
  %111 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %112 = load i8*, i8** %26, align 8
  %113 = call i32 @tcf_idr_cleanup(%struct.tc_action_net* %111, i8* %112)
  %114 = load i32, i32* %31, align 4
  store i32 %114, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %243

115:                                              ; preds = %101
  %116 = load i32, i32* @ACT_P_CREATED, align 4
  store i32 %116, i32* %31, align 4
  br label %128

117:                                              ; preds = %98
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %117
  %121 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %122 = load %struct.tc_action*, %struct.tc_action** %121, align 8
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @tcf_idr_release(%struct.tc_action* %122, i32 %123)
  %125 = load i32, i32* @EEXIST, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %243

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127, %115
  %129 = load %struct.tc_sample*, %struct.tc_sample** %28, align 8
  %130 = getelementptr inbounds %struct.tc_sample, %struct.tc_sample* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.tcf_proto*, %struct.tcf_proto** %18, align 8
  %133 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %134 = call i32 @tcf_action_check_ctrlact(i32 %131, %struct.tcf_proto* %132, %struct.tcf_chain** %27, %struct.netlink_ext_ack* %133)
  store i32 %134, i32* %32, align 4
  %135 = load i32, i32* %32, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %237

138:                                              ; preds = %128
  %139 = load i64, i64* @TCA_SAMPLE_RATE, align 8
  %140 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %139
  %141 = load %struct.nlattr*, %struct.nlattr** %140, align 8
  %142 = call i8* @nla_get_u32(%struct.nlattr* %141)
  store i8* %142, i8** %25, align 8
  %143 = load i8*, i8** %25, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %150, label %145

145:                                              ; preds = %138
  %146 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %147 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %32, align 4
  br label %230

150:                                              ; preds = %138
  %151 = load i64, i64* @TCA_SAMPLE_PSAMPLE_GROUP, align 8
  %152 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %151
  %153 = load %struct.nlattr*, %struct.nlattr** %152, align 8
  %154 = call i8* @nla_get_u32(%struct.nlattr* %153)
  store i8* %154, i8** %24, align 8
  %155 = load %struct.net*, %struct.net** %11, align 8
  %156 = load i8*, i8** %24, align 8
  %157 = call %struct.psample_group* @psample_group_get(%struct.net* %155, i8* %156)
  store %struct.psample_group* %157, %struct.psample_group** %23, align 8
  %158 = load %struct.psample_group*, %struct.psample_group** %23, align 8
  %159 = icmp ne %struct.psample_group* %158, null
  br i1 %159, label %163, label %160

160:                                              ; preds = %150
  %161 = load i32, i32* @ENOMEM, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %32, align 4
  br label %230

163:                                              ; preds = %150
  %164 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %165 = load %struct.tc_action*, %struct.tc_action** %164, align 8
  %166 = call %struct.tcf_sample* @to_sample(%struct.tc_action* %165)
  store %struct.tcf_sample* %166, %struct.tcf_sample** %29, align 8
  %167 = load %struct.tcf_sample*, %struct.tcf_sample** %29, align 8
  %168 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %167, i32 0, i32 1
  %169 = call i32 @spin_lock_bh(i32* %168)
  %170 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %171 = load %struct.tc_action*, %struct.tc_action** %170, align 8
  %172 = load %struct.tc_sample*, %struct.tc_sample** %28, align 8
  %173 = getelementptr inbounds %struct.tc_sample, %struct.tc_sample* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.tcf_chain*, %struct.tcf_chain** %27, align 8
  %176 = call %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action* %171, i32 %174, %struct.tcf_chain* %175)
  store %struct.tcf_chain* %176, %struct.tcf_chain** %27, align 8
  %177 = load i8*, i8** %25, align 8
  %178 = load %struct.tcf_sample*, %struct.tcf_sample** %29, align 8
  %179 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %178, i32 0, i32 5
  store i8* %177, i8** %179, align 8
  %180 = load i8*, i8** %24, align 8
  %181 = load %struct.tcf_sample*, %struct.tcf_sample** %29, align 8
  %182 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %181, i32 0, i32 4
  store i8* %180, i8** %182, align 8
  %183 = load %struct.tcf_sample*, %struct.tcf_sample** %29, align 8
  %184 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.psample_group*, %struct.psample_group** %23, align 8
  %187 = load %struct.tcf_sample*, %struct.tcf_sample** %29, align 8
  %188 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %187, i32 0, i32 1
  %189 = call i32 @lockdep_is_held(i32* %188)
  %190 = call i32 @rcu_swap_protected(i32 %185, %struct.psample_group* %186, i32 %189)
  %191 = load i64, i64* @TCA_SAMPLE_TRUNC_SIZE, align 8
  %192 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %191
  %193 = load %struct.nlattr*, %struct.nlattr** %192, align 8
  %194 = icmp ne %struct.nlattr* %193, null
  br i1 %194, label %195, label %204

195:                                              ; preds = %163
  %196 = load %struct.tcf_sample*, %struct.tcf_sample** %29, align 8
  %197 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %196, i32 0, i32 0
  store i32 1, i32* %197, align 8
  %198 = load i64, i64* @TCA_SAMPLE_TRUNC_SIZE, align 8
  %199 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %198
  %200 = load %struct.nlattr*, %struct.nlattr** %199, align 8
  %201 = call i8* @nla_get_u32(%struct.nlattr* %200)
  %202 = load %struct.tcf_sample*, %struct.tcf_sample** %29, align 8
  %203 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %202, i32 0, i32 2
  store i8* %201, i8** %203, align 8
  br label %204

204:                                              ; preds = %195, %163
  %205 = load %struct.tcf_sample*, %struct.tcf_sample** %29, align 8
  %206 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %205, i32 0, i32 1
  %207 = call i32 @spin_unlock_bh(i32* %206)
  %208 = load %struct.psample_group*, %struct.psample_group** %23, align 8
  %209 = icmp ne %struct.psample_group* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %204
  %211 = load %struct.psample_group*, %struct.psample_group** %23, align 8
  %212 = call i32 @psample_group_put(%struct.psample_group* %211)
  br label %213

213:                                              ; preds = %210, %204
  %214 = load %struct.tcf_chain*, %struct.tcf_chain** %27, align 8
  %215 = icmp ne %struct.tcf_chain* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load %struct.tcf_chain*, %struct.tcf_chain** %27, align 8
  %218 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %217)
  br label %219

219:                                              ; preds = %216, %213
  %220 = load i32, i32* %31, align 4
  %221 = load i32, i32* @ACT_P_CREATED, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %228

223:                                              ; preds = %219
  %224 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %225 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %226 = load %struct.tc_action*, %struct.tc_action** %225, align 8
  %227 = call i32 @tcf_idr_insert(%struct.tc_action_net* %224, %struct.tc_action* %226)
  br label %228

228:                                              ; preds = %223, %219
  %229 = load i32, i32* %31, align 4
  store i32 %229, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %243

230:                                              ; preds = %160, %145
  %231 = load %struct.tcf_chain*, %struct.tcf_chain** %27, align 8
  %232 = icmp ne %struct.tcf_chain* %231, null
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load %struct.tcf_chain*, %struct.tcf_chain** %27, align 8
  %235 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %234)
  br label %236

236:                                              ; preds = %233, %230
  br label %237

237:                                              ; preds = %236, %137
  %238 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %239 = load %struct.tc_action*, %struct.tc_action** %238, align 8
  %240 = load i32, i32* %16, align 4
  %241 = call i32 @tcf_idr_release(%struct.tc_action* %239, i32 %240)
  %242 = load i32, i32* %32, align 4
  store i32 %242, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %243

243:                                              ; preds = %237, %228, %120, %110, %97, %88, %71, %54, %44
  %244 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %244)
  %245 = load i32, i32* %10, align 4
  ret i32 %245
}

declare dso_local %struct.tc_action_net* @net_generic(%struct.net*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local %struct.tc_sample* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @tcf_idr_check_alloc(%struct.tc_action_net*, i8**, %struct.tc_action**, i32) #1

declare dso_local i32 @tcf_idr_create(%struct.tc_action_net*, i8*, %struct.nlattr*, %struct.tc_action**, i32*, i32, i32) #1

declare dso_local i32 @tcf_idr_cleanup(%struct.tc_action_net*, i8*) #1

declare dso_local i32 @tcf_idr_release(%struct.tc_action*, i32) #1

declare dso_local i32 @tcf_action_check_ctrlact(i32, %struct.tcf_proto*, %struct.tcf_chain**, %struct.netlink_ext_ack*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.psample_group* @psample_group_get(%struct.net*, i8*) #1

declare dso_local %struct.tcf_sample* @to_sample(%struct.tc_action*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action*, i32, %struct.tcf_chain*) #1

declare dso_local i32 @rcu_swap_protected(i32, %struct.psample_group*, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @psample_group_put(%struct.psample_group*) #1

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
