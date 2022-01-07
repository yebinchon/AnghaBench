; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ct.c_tcf_ct_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ct.c_tcf_ct_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_action_net = type { i32 }
%struct.tcf_ct_params = type { i32 }
%struct.tcf_chain = type { i32 }
%struct.tc_ct = type { i32, i32 }
%struct.tcf_ct = type { i32, i32 }

@ct_net_id = common dso_local global i32 0, align 4
@TCA_CT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Ct requires attributes to be passed\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ct_policy = common dso_local global i32 0, align 4
@TCA_CT_PARMS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Missing required ct parameters\00", align 1
@act_ct_ops = common dso_local global i32 0, align 4
@ACT_P_CREATED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr*, %struct.nlattr*, %struct.tc_action**, i32, i32, i32, %struct.tcf_proto*, %struct.netlink_ext_ack*)* @tcf_ct_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_ct_init(%struct.net* %0, %struct.nlattr* %1, %struct.nlattr* %2, %struct.tc_action** %3, i32 %4, i32 %5, i32 %6, %struct.tcf_proto* %7, %struct.netlink_ext_ack* %8) #0 {
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
  %21 = alloca %struct.tcf_ct_params*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.tcf_chain*, align 8
  %25 = alloca %struct.tc_ct*, align 8
  %26 = alloca %struct.tcf_ct*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.nlattr* %1, %struct.nlattr** %12, align 8
  store %struct.nlattr* %2, %struct.nlattr** %13, align 8
  store %struct.tc_action** %3, %struct.tc_action*** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.tcf_proto* %7, %struct.tcf_proto** %18, align 8
  store %struct.netlink_ext_ack* %8, %struct.netlink_ext_ack** %19, align 8
  %31 = load %struct.net*, %struct.net** %11, align 8
  %32 = load i32, i32* @ct_net_id, align 4
  %33 = call %struct.tc_action_net* @net_generic(%struct.net* %31, i32 %32)
  store %struct.tc_action_net* %33, %struct.tc_action_net** %20, align 8
  store %struct.tcf_ct_params* null, %struct.tcf_ct_params** %21, align 8
  %34 = load i32, i32* @TCA_CT_MAX, align 4
  %35 = add nsw i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %22, align 8
  %38 = alloca %struct.nlattr*, i64 %36, align 16
  store i64 %36, i64* %23, align 8
  store %struct.tcf_chain* null, %struct.tcf_chain** %24, align 8
  store i32 0, i32* %28, align 4
  %39 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %40 = icmp ne %struct.nlattr* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %9
  %42 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %43 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %209

46:                                               ; preds = %9
  %47 = load i32, i32* @TCA_CT_MAX, align 4
  %48 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %49 = load i32, i32* @ct_policy, align 4
  %50 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %51 = call i32 @nla_parse_nested(%struct.nlattr** %38, i32 %47, %struct.nlattr* %48, i32 %49, %struct.netlink_ext_ack* %50)
  store i32 %51, i32* %27, align 4
  %52 = load i32, i32* %27, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %27, align 4
  store i32 %55, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %209

56:                                               ; preds = %46
  %57 = load i64, i64* @TCA_CT_PARMS, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %63 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %209

66:                                               ; preds = %56
  %67 = load i64, i64* @TCA_CT_PARMS, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = call %struct.tc_ct* @nla_data(%struct.nlattr* %69)
  store %struct.tc_ct* %70, %struct.tc_ct** %25, align 8
  %71 = load %struct.tc_ct*, %struct.tc_ct** %25, align 8
  %72 = getelementptr inbounds %struct.tc_ct, %struct.tc_ct* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %29, align 4
  %74 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %75 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @tcf_idr_check_alloc(%struct.tc_action_net* %74, i32* %29, %struct.tc_action** %75, i32 %76)
  store i32 %77, i32* %27, align 4
  %78 = load i32, i32* %27, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = load i32, i32* %27, align 4
  store i32 %81, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %209

82:                                               ; preds = %66
  %83 = load i32, i32* %27, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %101, label %85

85:                                               ; preds = %82
  %86 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %87 = load i32, i32* %29, align 4
  %88 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %89 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @tcf_idr_create(%struct.tc_action_net* %86, i32 %87, %struct.nlattr* %88, %struct.tc_action** %89, i32* @act_ct_ops, i32 %90, i32 1)
  store i32 %91, i32* %27, align 4
  %92 = load i32, i32* %27, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %85
  %95 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %96 = load i32, i32* %29, align 4
  %97 = call i32 @tcf_idr_cleanup(%struct.tc_action_net* %95, i32 %96)
  %98 = load i32, i32* %27, align 4
  store i32 %98, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %209

99:                                               ; preds = %85
  %100 = load i32, i32* @ACT_P_CREATED, align 4
  store i32 %100, i32* %28, align 4
  br label %116

101:                                              ; preds = %82
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 0, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %209

105:                                              ; preds = %101
  %106 = load i32, i32* %15, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %105
  %109 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %110 = load %struct.tc_action*, %struct.tc_action** %109, align 8
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @tcf_idr_release(%struct.tc_action* %110, i32 %111)
  %113 = load i32, i32* @EEXIST, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %209

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115, %99
  %117 = load %struct.tc_ct*, %struct.tc_ct** %25, align 8
  %118 = getelementptr inbounds %struct.tc_ct, %struct.tc_ct* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.tcf_proto*, %struct.tcf_proto** %18, align 8
  %121 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %122 = call i32 @tcf_action_check_ctrlact(i32 %119, %struct.tcf_proto* %120, %struct.tcf_chain** %24, %struct.netlink_ext_ack* %121)
  store i32 %122, i32* %27, align 4
  %123 = load i32, i32* %27, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  br label %195

126:                                              ; preds = %116
  %127 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %128 = load %struct.tc_action*, %struct.tc_action** %127, align 8
  %129 = call %struct.tcf_ct* @to_ct(%struct.tc_action* %128)
  store %struct.tcf_ct* %129, %struct.tcf_ct** %26, align 8
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call %struct.tcf_ct_params* @kzalloc(i32 4, i32 %130)
  store %struct.tcf_ct_params* %131, %struct.tcf_ct_params** %21, align 8
  %132 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %21, align 8
  %133 = icmp ne %struct.tcf_ct_params* %132, null
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %126
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %27, align 4
  br label %195

141:                                              ; preds = %126
  %142 = load %struct.net*, %struct.net** %11, align 8
  %143 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %21, align 8
  %144 = load %struct.tc_ct*, %struct.tc_ct** %25, align 8
  %145 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %146 = call i32 @tcf_ct_fill_params(%struct.net* %142, %struct.tcf_ct_params* %143, %struct.tc_ct* %144, %struct.nlattr** %38, %struct.netlink_ext_ack* %145)
  store i32 %146, i32* %27, align 4
  %147 = load i32, i32* %27, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %195

150:                                              ; preds = %141
  %151 = load %struct.tcf_ct*, %struct.tcf_ct** %26, align 8
  %152 = getelementptr inbounds %struct.tcf_ct, %struct.tcf_ct* %151, i32 0, i32 0
  %153 = call i32 @spin_lock_bh(i32* %152)
  %154 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %155 = load %struct.tc_action*, %struct.tc_action** %154, align 8
  %156 = load %struct.tc_ct*, %struct.tc_ct** %25, align 8
  %157 = getelementptr inbounds %struct.tc_ct, %struct.tc_ct* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.tcf_chain*, %struct.tcf_chain** %24, align 8
  %160 = call %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action* %155, i32 %158, %struct.tcf_chain* %159)
  store %struct.tcf_chain* %160, %struct.tcf_chain** %24, align 8
  %161 = load %struct.tcf_ct*, %struct.tcf_ct** %26, align 8
  %162 = getelementptr inbounds %struct.tcf_ct, %struct.tcf_ct* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %21, align 8
  %165 = load %struct.tcf_ct*, %struct.tcf_ct** %26, align 8
  %166 = getelementptr inbounds %struct.tcf_ct, %struct.tcf_ct* %165, i32 0, i32 0
  %167 = call i32 @lockdep_is_held(i32* %166)
  %168 = call i32 @rcu_swap_protected(i32 %163, %struct.tcf_ct_params* %164, i32 %167)
  %169 = load %struct.tcf_ct*, %struct.tcf_ct** %26, align 8
  %170 = getelementptr inbounds %struct.tcf_ct, %struct.tcf_ct* %169, i32 0, i32 0
  %171 = call i32 @spin_unlock_bh(i32* %170)
  %172 = load %struct.tcf_chain*, %struct.tcf_chain** %24, align 8
  %173 = icmp ne %struct.tcf_chain* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %150
  %175 = load %struct.tcf_chain*, %struct.tcf_chain** %24, align 8
  %176 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %175)
  br label %177

177:                                              ; preds = %174, %150
  %178 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %21, align 8
  %179 = icmp ne %struct.tcf_ct_params* %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %21, align 8
  %182 = load i32, i32* @rcu, align 4
  %183 = call i32 @kfree_rcu(%struct.tcf_ct_params* %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %177
  %185 = load i32, i32* %28, align 4
  %186 = load i32, i32* @ACT_P_CREATED, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %184
  %189 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %190 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %191 = load %struct.tc_action*, %struct.tc_action** %190, align 8
  %192 = call i32 @tcf_idr_insert(%struct.tc_action_net* %189, %struct.tc_action* %191)
  br label %193

193:                                              ; preds = %188, %184
  %194 = load i32, i32* %28, align 4
  store i32 %194, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %209

195:                                              ; preds = %149, %138, %125
  %196 = load %struct.tcf_chain*, %struct.tcf_chain** %24, align 8
  %197 = icmp ne %struct.tcf_chain* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load %struct.tcf_chain*, %struct.tcf_chain** %24, align 8
  %200 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %199)
  br label %201

201:                                              ; preds = %198, %195
  %202 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %21, align 8
  %203 = call i32 @kfree(%struct.tcf_ct_params* %202)
  %204 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %205 = load %struct.tc_action*, %struct.tc_action** %204, align 8
  %206 = load i32, i32* %16, align 4
  %207 = call i32 @tcf_idr_release(%struct.tc_action* %205, i32 %206)
  %208 = load i32, i32* %27, align 4
  store i32 %208, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %209

209:                                              ; preds = %201, %193, %108, %104, %94, %80, %61, %54, %41
  %210 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %210)
  %211 = load i32, i32* %10, align 4
  ret i32 %211
}

declare dso_local %struct.tc_action_net* @net_generic(%struct.net*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tc_ct* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @tcf_idr_check_alloc(%struct.tc_action_net*, i32*, %struct.tc_action**, i32) #1

declare dso_local i32 @tcf_idr_create(%struct.tc_action_net*, i32, %struct.nlattr*, %struct.tc_action**, i32*, i32, i32) #1

declare dso_local i32 @tcf_idr_cleanup(%struct.tc_action_net*, i32) #1

declare dso_local i32 @tcf_idr_release(%struct.tc_action*, i32) #1

declare dso_local i32 @tcf_action_check_ctrlact(i32, %struct.tcf_proto*, %struct.tcf_chain**, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tcf_ct* @to_ct(%struct.tc_action*) #1

declare dso_local %struct.tcf_ct_params* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tcf_ct_fill_params(%struct.net*, %struct.tcf_ct_params*, %struct.tc_ct*, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action*, i32, %struct.tcf_chain*) #1

declare dso_local i32 @rcu_swap_protected(i32, %struct.tcf_ct_params*, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tcf_chain_put_by_act(%struct.tcf_chain*) #1

declare dso_local i32 @kfree_rcu(%struct.tcf_ct_params*, i32) #1

declare dso_local i32 @tcf_idr_insert(%struct.tc_action_net*, %struct.tc_action*) #1

declare dso_local i32 @kfree(%struct.tcf_ct_params*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
