; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_gact.c_tcf_gact_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_gact.c_tcf_gact_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_action_net = type { i32 }
%struct.tcf_chain = type { i32 }
%struct.tc_gact = type { i32, i32 }
%struct.tcf_gact = type { i64, i32, i32, i32 }

@gact_net_id = common dso_local global i32 0, align 4
@TCA_GACT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@gact_policy = common dso_local global i32 0, align 4
@TCA_GACT_PARMS = common dso_local global i64 0, align 8
@TCA_GACT_PROB = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@act_gact_ops = common dso_local global i32 0, align 4
@ACT_P_CREATED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@MAX_RAND = common dso_local global i64 0, align 8
@TC_ACT_GOTO_CHAIN = common dso_local global i32 0, align 4
@u16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr*, %struct.nlattr*, %struct.tc_action**, i32, i32, i32, %struct.tcf_proto*, %struct.netlink_ext_ack*)* @tcf_gact_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_gact_init(%struct.net* %0, %struct.nlattr* %1, %struct.nlattr* %2, %struct.tc_action** %3, i32 %4, i32 %5, i32 %6, %struct.tcf_proto* %7, %struct.netlink_ext_ack* %8) #0 {
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
  %24 = alloca %struct.tc_gact*, align 8
  %25 = alloca %struct.tcf_gact*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.nlattr* %1, %struct.nlattr** %12, align 8
  store %struct.nlattr* %2, %struct.nlattr** %13, align 8
  store %struct.tc_action** %3, %struct.tc_action*** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.tcf_proto* %7, %struct.tcf_proto** %18, align 8
  store %struct.netlink_ext_ack* %8, %struct.netlink_ext_ack** %19, align 8
  %30 = load %struct.net*, %struct.net** %11, align 8
  %31 = load i32, i32* @gact_net_id, align 4
  %32 = call %struct.tc_action_net* @net_generic(%struct.net* %30, i32 %31)
  store %struct.tc_action_net* %32, %struct.tc_action_net** %20, align 8
  %33 = load i32, i32* @TCA_GACT_MAX, align 4
  %34 = add nsw i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %21, align 8
  %37 = alloca %struct.nlattr*, i64 %35, align 16
  store i64 %35, i64* %22, align 8
  store %struct.tcf_chain* null, %struct.tcf_chain** %23, align 8
  store i32 0, i32* %26, align 4
  %38 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %39 = icmp eq %struct.nlattr* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %9
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %169

43:                                               ; preds = %9
  %44 = load i32, i32* @TCA_GACT_MAX, align 4
  %45 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %46 = load i32, i32* @gact_policy, align 4
  %47 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %37, i32 %44, %struct.nlattr* %45, i32 %46, i32* null)
  store i32 %47, i32* %28, align 4
  %48 = load i32, i32* %28, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %28, align 4
  store i32 %51, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %169

52:                                               ; preds = %43
  %53 = load i64, i64* @TCA_GACT_PARMS, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = icmp eq %struct.nlattr* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %169

60:                                               ; preds = %52
  %61 = load i64, i64* @TCA_GACT_PARMS, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call i8* @nla_data(%struct.nlattr* %63)
  %65 = bitcast i8* %64 to %struct.tc_gact*
  store %struct.tc_gact* %65, %struct.tc_gact** %24, align 8
  %66 = load %struct.tc_gact*, %struct.tc_gact** %24, align 8
  %67 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %27, align 4
  %69 = load i64, i64* @TCA_GACT_PROB, align 8
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = icmp ne %struct.nlattr* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %60
  %74 = load i32, i32* @EOPNOTSUPP, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %169

76:                                               ; preds = %60
  %77 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %78 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @tcf_idr_check_alloc(%struct.tc_action_net* %77, i32* %27, %struct.tc_action** %78, i32 %79)
  store i32 %80, i32* %28, align 4
  %81 = load i32, i32* %28, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %99, label %83

83:                                               ; preds = %76
  %84 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %85 = load i32, i32* %27, align 4
  %86 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %87 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %88 = load i32, i32* %16, align 4
  %89 = call i32 @tcf_idr_create(%struct.tc_action_net* %84, i32 %85, %struct.nlattr* %86, %struct.tc_action** %87, i32* @act_gact_ops, i32 %88, i32 1)
  store i32 %89, i32* %26, align 4
  %90 = load i32, i32* %26, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %94 = load i32, i32* %27, align 4
  %95 = call i32 @tcf_idr_cleanup(%struct.tc_action_net* %93, i32 %94)
  %96 = load i32, i32* %26, align 4
  store i32 %96, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %169

97:                                               ; preds = %83
  %98 = load i32, i32* @ACT_P_CREATED, align 4
  store i32 %98, i32* %26, align 4
  br label %120

99:                                               ; preds = %76
  %100 = load i32, i32* %28, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %99
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 0, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %169

106:                                              ; preds = %102
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %106
  %110 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %111 = load %struct.tc_action*, %struct.tc_action** %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @tcf_idr_release(%struct.tc_action* %111, i32 %112)
  %114 = load i32, i32* @EEXIST, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %169

116:                                              ; preds = %106
  br label %119

117:                                              ; preds = %99
  %118 = load i32, i32* %28, align 4
  store i32 %118, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %169

119:                                              ; preds = %116
  br label %120

120:                                              ; preds = %119, %97
  %121 = load %struct.tc_gact*, %struct.tc_gact** %24, align 8
  %122 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.tcf_proto*, %struct.tcf_proto** %18, align 8
  %125 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %126 = call i32 @tcf_action_check_ctrlact(i32 %123, %struct.tcf_proto* %124, %struct.tcf_chain** %23, %struct.netlink_ext_ack* %125)
  store i32 %126, i32* %28, align 4
  %127 = load i32, i32* %28, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %163

130:                                              ; preds = %120
  %131 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %132 = load %struct.tc_action*, %struct.tc_action** %131, align 8
  %133 = call %struct.tcf_gact* @to_gact(%struct.tc_action* %132)
  store %struct.tcf_gact* %133, %struct.tcf_gact** %25, align 8
  %134 = load %struct.tcf_gact*, %struct.tcf_gact** %25, align 8
  %135 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %134, i32 0, i32 1
  %136 = call i32 @spin_lock_bh(i32* %135)
  %137 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %138 = load %struct.tc_action*, %struct.tc_action** %137, align 8
  %139 = load %struct.tc_gact*, %struct.tc_gact** %24, align 8
  %140 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.tcf_chain*, %struct.tcf_chain** %23, align 8
  %143 = call %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action* %138, i32 %141, %struct.tcf_chain* %142)
  store %struct.tcf_chain* %143, %struct.tcf_chain** %23, align 8
  %144 = load %struct.tcf_gact*, %struct.tcf_gact** %25, align 8
  %145 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %144, i32 0, i32 1
  %146 = call i32 @spin_unlock_bh(i32* %145)
  %147 = load %struct.tcf_chain*, %struct.tcf_chain** %23, align 8
  %148 = icmp ne %struct.tcf_chain* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %130
  %150 = load %struct.tcf_chain*, %struct.tcf_chain** %23, align 8
  %151 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %150)
  br label %152

152:                                              ; preds = %149, %130
  %153 = load i32, i32* %26, align 4
  %154 = load i32, i32* @ACT_P_CREATED, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %152
  %157 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %158 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %159 = load %struct.tc_action*, %struct.tc_action** %158, align 8
  %160 = call i32 @tcf_idr_insert(%struct.tc_action_net* %157, %struct.tc_action* %159)
  br label %161

161:                                              ; preds = %156, %152
  %162 = load i32, i32* %26, align 4
  store i32 %162, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %169

163:                                              ; preds = %129
  %164 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %165 = load %struct.tc_action*, %struct.tc_action** %164, align 8
  %166 = load i32, i32* %16, align 4
  %167 = call i32 @tcf_idr_release(%struct.tc_action* %165, i32 %166)
  %168 = load i32, i32* %28, align 4
  store i32 %168, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %169

169:                                              ; preds = %163, %161, %117, %109, %105, %92, %73, %57, %50, %40
  %170 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %170)
  %171 = load i32, i32* %10, align 4
  ret i32 %171
}

declare dso_local %struct.tc_action_net* @net_generic(%struct.net*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @tcf_idr_check_alloc(%struct.tc_action_net*, i32*, %struct.tc_action**, i32) #1

declare dso_local i32 @tcf_idr_create(%struct.tc_action_net*, i32, %struct.nlattr*, %struct.tc_action**, i32*, i32, i32) #1

declare dso_local i32 @tcf_idr_cleanup(%struct.tc_action_net*, i32) #1

declare dso_local i32 @tcf_idr_release(%struct.tc_action*, i32) #1

declare dso_local i32 @tcf_action_check_ctrlact(i32, %struct.tcf_proto*, %struct.tcf_chain**, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tcf_gact* @to_gact(%struct.tc_action*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action*, i32, %struct.tcf_chain*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

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
