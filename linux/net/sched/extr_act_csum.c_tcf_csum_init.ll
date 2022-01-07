; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_csum.c_tcf_csum_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_csum.c_tcf_csum_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_action_net = type { i32 }
%struct.tcf_csum_params = type { i32 }
%struct.tcf_chain = type { i32 }
%struct.tc_csum = type { i32, i32, i32 }
%struct.tcf_csum = type { i32, i32 }

@csum_net_id = common dso_local global i32 0, align 4
@TCA_CSUM_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@csum_policy = common dso_local global i32 0, align 4
@TCA_CSUM_PARMS = common dso_local global i64 0, align 8
@act_csum_ops = common dso_local global i32 0, align 4
@ACT_P_CREATED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr*, %struct.nlattr*, %struct.tc_action**, i32, i32, i32, %struct.tcf_proto*, %struct.netlink_ext_ack*)* @tcf_csum_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_csum_init(%struct.net* %0, %struct.nlattr* %1, %struct.nlattr* %2, %struct.tc_action** %3, i32 %4, i32 %5, i32 %6, %struct.tcf_proto* %7, %struct.netlink_ext_ack* %8) #0 {
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
  %21 = alloca %struct.tcf_csum_params*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.tcf_chain*, align 8
  %25 = alloca %struct.tc_csum*, align 8
  %26 = alloca %struct.tcf_csum*, align 8
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
  %32 = load i32, i32* @csum_net_id, align 4
  %33 = call %struct.tc_action_net* @net_generic(%struct.net* %31, i32 %32)
  store %struct.tc_action_net* %33, %struct.tc_action_net** %20, align 8
  %34 = load i32, i32* @TCA_CSUM_MAX, align 4
  %35 = add nsw i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %22, align 8
  %38 = alloca %struct.nlattr*, i64 %36, align 16
  store i64 %36, i64* %23, align 8
  store %struct.tcf_chain* null, %struct.tcf_chain** %24, align 8
  store i32 0, i32* %27, align 4
  %39 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %40 = icmp eq %struct.nlattr* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %9
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %200

44:                                               ; preds = %9
  %45 = load i32, i32* @TCA_CSUM_MAX, align 4
  %46 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %47 = load i32, i32* @csum_policy, align 4
  %48 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %38, i32 %45, %struct.nlattr* %46, i32 %47, i32* null)
  store i32 %48, i32* %28, align 4
  %49 = load i32, i32* %28, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %28, align 4
  store i32 %52, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %200

53:                                               ; preds = %44
  %54 = load i64, i64* @TCA_CSUM_PARMS, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = icmp eq %struct.nlattr* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %200

61:                                               ; preds = %53
  %62 = load i64, i64* @TCA_CSUM_PARMS, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = call %struct.tc_csum* @nla_data(%struct.nlattr* %64)
  store %struct.tc_csum* %65, %struct.tc_csum** %25, align 8
  %66 = load %struct.tc_csum*, %struct.tc_csum** %25, align 8
  %67 = getelementptr inbounds %struct.tc_csum, %struct.tc_csum* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %29, align 4
  %69 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %70 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @tcf_idr_check_alloc(%struct.tc_action_net* %69, i32* %29, %struct.tc_action** %70, i32 %71)
  store i32 %72, i32* %28, align 4
  %73 = load i32, i32* %28, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %61
  %76 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %77 = load i32, i32* %29, align 4
  %78 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %79 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @tcf_idr_create(%struct.tc_action_net* %76, i32 %77, %struct.nlattr* %78, %struct.tc_action** %79, i32* @act_csum_ops, i32 %80, i32 1)
  store i32 %81, i32* %27, align 4
  %82 = load i32, i32* %27, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %86 = load i32, i32* %29, align 4
  %87 = call i32 @tcf_idr_cleanup(%struct.tc_action_net* %85, i32 %86)
  %88 = load i32, i32* %27, align 4
  store i32 %88, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %200

89:                                               ; preds = %75
  %90 = load i32, i32* @ACT_P_CREATED, align 4
  store i32 %90, i32* %27, align 4
  br label %112

91:                                               ; preds = %61
  %92 = load i32, i32* %28, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %91
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 0, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %200

98:                                               ; preds = %94
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %103 = load %struct.tc_action*, %struct.tc_action** %102, align 8
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @tcf_idr_release(%struct.tc_action* %103, i32 %104)
  %106 = load i32, i32* @EEXIST, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %200

108:                                              ; preds = %98
  br label %111

109:                                              ; preds = %91
  %110 = load i32, i32* %28, align 4
  store i32 %110, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %200

111:                                              ; preds = %108
  br label %112

112:                                              ; preds = %111, %89
  %113 = load %struct.tc_csum*, %struct.tc_csum** %25, align 8
  %114 = getelementptr inbounds %struct.tc_csum, %struct.tc_csum* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.tcf_proto*, %struct.tcf_proto** %18, align 8
  %117 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %118 = call i32 @tcf_action_check_ctrlact(i32 %115, %struct.tcf_proto* %116, %struct.tcf_chain** %24, %struct.netlink_ext_ack* %117)
  store i32 %118, i32* %28, align 4
  %119 = load i32, i32* %28, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %194

122:                                              ; preds = %112
  %123 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %124 = load %struct.tc_action*, %struct.tc_action** %123, align 8
  %125 = call %struct.tcf_csum* @to_tcf_csum(%struct.tc_action* %124)
  store %struct.tcf_csum* %125, %struct.tcf_csum** %26, align 8
  %126 = load i32, i32* @GFP_KERNEL, align 4
  %127 = call %struct.tcf_csum_params* @kzalloc(i32 4, i32 %126)
  store %struct.tcf_csum_params* %127, %struct.tcf_csum_params** %21, align 8
  %128 = load %struct.tcf_csum_params*, %struct.tcf_csum_params** %21, align 8
  %129 = icmp ne %struct.tcf_csum_params* %128, null
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i64 @unlikely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %122
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %28, align 4
  br label %187

137:                                              ; preds = %122
  %138 = load %struct.tc_csum*, %struct.tc_csum** %25, align 8
  %139 = getelementptr inbounds %struct.tc_csum, %struct.tc_csum* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.tcf_csum_params*, %struct.tcf_csum_params** %21, align 8
  %142 = getelementptr inbounds %struct.tcf_csum_params, %struct.tcf_csum_params* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load %struct.tcf_csum*, %struct.tcf_csum** %26, align 8
  %144 = getelementptr inbounds %struct.tcf_csum, %struct.tcf_csum* %143, i32 0, i32 0
  %145 = call i32 @spin_lock_bh(i32* %144)
  %146 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %147 = load %struct.tc_action*, %struct.tc_action** %146, align 8
  %148 = load %struct.tc_csum*, %struct.tc_csum** %25, align 8
  %149 = getelementptr inbounds %struct.tc_csum, %struct.tc_csum* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.tcf_chain*, %struct.tcf_chain** %24, align 8
  %152 = call %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action* %147, i32 %150, %struct.tcf_chain* %151)
  store %struct.tcf_chain* %152, %struct.tcf_chain** %24, align 8
  %153 = load %struct.tcf_csum*, %struct.tcf_csum** %26, align 8
  %154 = getelementptr inbounds %struct.tcf_csum, %struct.tcf_csum* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.tcf_csum_params*, %struct.tcf_csum_params** %21, align 8
  %157 = load %struct.tcf_csum*, %struct.tcf_csum** %26, align 8
  %158 = getelementptr inbounds %struct.tcf_csum, %struct.tcf_csum* %157, i32 0, i32 0
  %159 = call i32 @lockdep_is_held(i32* %158)
  %160 = call i32 @rcu_swap_protected(i32 %155, %struct.tcf_csum_params* %156, i32 %159)
  %161 = load %struct.tcf_csum*, %struct.tcf_csum** %26, align 8
  %162 = getelementptr inbounds %struct.tcf_csum, %struct.tcf_csum* %161, i32 0, i32 0
  %163 = call i32 @spin_unlock_bh(i32* %162)
  %164 = load %struct.tcf_chain*, %struct.tcf_chain** %24, align 8
  %165 = icmp ne %struct.tcf_chain* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %137
  %167 = load %struct.tcf_chain*, %struct.tcf_chain** %24, align 8
  %168 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %167)
  br label %169

169:                                              ; preds = %166, %137
  %170 = load %struct.tcf_csum_params*, %struct.tcf_csum_params** %21, align 8
  %171 = icmp ne %struct.tcf_csum_params* %170, null
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load %struct.tcf_csum_params*, %struct.tcf_csum_params** %21, align 8
  %174 = load i32, i32* @rcu, align 4
  %175 = call i32 @kfree_rcu(%struct.tcf_csum_params* %173, i32 %174)
  br label %176

176:                                              ; preds = %172, %169
  %177 = load i32, i32* %27, align 4
  %178 = load i32, i32* @ACT_P_CREATED, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  %181 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %182 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %183 = load %struct.tc_action*, %struct.tc_action** %182, align 8
  %184 = call i32 @tcf_idr_insert(%struct.tc_action_net* %181, %struct.tc_action* %183)
  br label %185

185:                                              ; preds = %180, %176
  %186 = load i32, i32* %27, align 4
  store i32 %186, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %200

187:                                              ; preds = %134
  %188 = load %struct.tcf_chain*, %struct.tcf_chain** %24, align 8
  %189 = icmp ne %struct.tcf_chain* %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load %struct.tcf_chain*, %struct.tcf_chain** %24, align 8
  %192 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %191)
  br label %193

193:                                              ; preds = %190, %187
  br label %194

194:                                              ; preds = %193, %121
  %195 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %196 = load %struct.tc_action*, %struct.tc_action** %195, align 8
  %197 = load i32, i32* %16, align 4
  %198 = call i32 @tcf_idr_release(%struct.tc_action* %196, i32 %197)
  %199 = load i32, i32* %28, align 4
  store i32 %199, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %200

200:                                              ; preds = %194, %185, %109, %101, %97, %84, %58, %51, %41
  %201 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %201)
  %202 = load i32, i32* %10, align 4
  ret i32 %202
}

declare dso_local %struct.tc_action_net* @net_generic(%struct.net*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local %struct.tc_csum* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @tcf_idr_check_alloc(%struct.tc_action_net*, i32*, %struct.tc_action**, i32) #1

declare dso_local i32 @tcf_idr_create(%struct.tc_action_net*, i32, %struct.nlattr*, %struct.tc_action**, i32*, i32, i32) #1

declare dso_local i32 @tcf_idr_cleanup(%struct.tc_action_net*, i32) #1

declare dso_local i32 @tcf_idr_release(%struct.tc_action*, i32) #1

declare dso_local i32 @tcf_action_check_ctrlact(i32, %struct.tcf_proto*, %struct.tcf_chain**, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tcf_csum* @to_tcf_csum(%struct.tc_action*) #1

declare dso_local %struct.tcf_csum_params* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action*, i32, %struct.tcf_chain*) #1

declare dso_local i32 @rcu_swap_protected(i32, %struct.tcf_csum_params*, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tcf_chain_put_by_act(%struct.tcf_chain*) #1

declare dso_local i32 @kfree_rcu(%struct.tcf_csum_params*, i32) #1

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
