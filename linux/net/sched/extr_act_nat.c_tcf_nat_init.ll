; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_nat.c_tcf_nat_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_nat.c_tcf_nat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_action_net = type { i32 }
%struct.tcf_chain = type { i32 }
%struct.tc_nat = type { i32, i32, i32, i32, i32, i32 }
%struct.tcf_nat = type { i32, i32, i32, i32, i32 }

@nat_net_id = common dso_local global i32 0, align 4
@TCA_NAT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nat_policy = common dso_local global i32 0, align 4
@TCA_NAT_PARMS = common dso_local global i64 0, align 8
@act_nat_ops = common dso_local global i32 0, align 4
@ACT_P_CREATED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr*, %struct.nlattr*, %struct.tc_action**, i32, i32, i32, %struct.tcf_proto*, %struct.netlink_ext_ack*)* @tcf_nat_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_nat_init(%struct.net* %0, %struct.nlattr* %1, %struct.nlattr* %2, %struct.tc_action** %3, i32 %4, i32 %5, i32 %6, %struct.tcf_proto* %7, %struct.netlink_ext_ack* %8) #0 {
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
  %24 = alloca %struct.tc_nat*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.tcf_nat*, align 8
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
  %31 = load i32, i32* @nat_net_id, align 4
  %32 = call %struct.tc_action_net* @net_generic(%struct.net* %30, i32 %31)
  store %struct.tc_action_net* %32, %struct.tc_action_net** %20, align 8
  %33 = load i32, i32* @TCA_NAT_MAX, align 4
  %34 = add nsw i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %21, align 8
  %37 = alloca %struct.nlattr*, i64 %35, align 16
  store i64 %35, i64* %22, align 8
  store %struct.tcf_chain* null, %struct.tcf_chain** %23, align 8
  store i32 0, i32* %25, align 4
  %38 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %39 = icmp eq %struct.nlattr* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %9
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %180

43:                                               ; preds = %9
  %44 = load i32, i32* @TCA_NAT_MAX, align 4
  %45 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %46 = load i32, i32* @nat_policy, align 4
  %47 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %37, i32 %44, %struct.nlattr* %45, i32 %46, i32* null)
  store i32 %47, i32* %26, align 4
  %48 = load i32, i32* %26, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %26, align 4
  store i32 %51, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %180

52:                                               ; preds = %43
  %53 = load i64, i64* @TCA_NAT_PARMS, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = icmp eq %struct.nlattr* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %180

60:                                               ; preds = %52
  %61 = load i64, i64* @TCA_NAT_PARMS, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call %struct.tc_nat* @nla_data(%struct.nlattr* %63)
  store %struct.tc_nat* %64, %struct.tc_nat** %24, align 8
  %65 = load %struct.tc_nat*, %struct.tc_nat** %24, align 8
  %66 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %28, align 4
  %68 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %69 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @tcf_idr_check_alloc(%struct.tc_action_net* %68, i32* %28, %struct.tc_action** %69, i32 %70)
  store i32 %71, i32* %26, align 4
  %72 = load i32, i32* %26, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %60
  %75 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %76 = load i32, i32* %28, align 4
  %77 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %78 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @tcf_idr_create(%struct.tc_action_net* %75, i32 %76, %struct.nlattr* %77, %struct.tc_action** %78, i32* @act_nat_ops, i32 %79, i32 0)
  store i32 %80, i32* %25, align 4
  %81 = load i32, i32* %25, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %74
  %84 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %85 = load i32, i32* %28, align 4
  %86 = call i32 @tcf_idr_cleanup(%struct.tc_action_net* %84, i32 %85)
  %87 = load i32, i32* %25, align 4
  store i32 %87, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %180

88:                                               ; preds = %74
  %89 = load i32, i32* @ACT_P_CREATED, align 4
  store i32 %89, i32* %25, align 4
  br label %111

90:                                               ; preds = %60
  %91 = load i32, i32* %26, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %90
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 0, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %180

97:                                               ; preds = %93
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %102 = load %struct.tc_action*, %struct.tc_action** %101, align 8
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @tcf_idr_release(%struct.tc_action* %102, i32 %103)
  %105 = load i32, i32* @EEXIST, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %180

107:                                              ; preds = %97
  br label %110

108:                                              ; preds = %90
  %109 = load i32, i32* %26, align 4
  store i32 %109, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %180

110:                                              ; preds = %107
  br label %111

111:                                              ; preds = %110, %88
  %112 = load %struct.tc_nat*, %struct.tc_nat** %24, align 8
  %113 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.tcf_proto*, %struct.tcf_proto** %18, align 8
  %116 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %117 = call i32 @tcf_action_check_ctrlact(i32 %114, %struct.tcf_proto* %115, %struct.tcf_chain** %23, %struct.netlink_ext_ack* %116)
  store i32 %117, i32* %26, align 4
  %118 = load i32, i32* %26, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %174

121:                                              ; preds = %111
  %122 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %123 = load %struct.tc_action*, %struct.tc_action** %122, align 8
  %124 = call %struct.tcf_nat* @to_tcf_nat(%struct.tc_action* %123)
  store %struct.tcf_nat* %124, %struct.tcf_nat** %27, align 8
  %125 = load %struct.tcf_nat*, %struct.tcf_nat** %27, align 8
  %126 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %125, i32 0, i32 0
  %127 = call i32 @spin_lock_bh(i32* %126)
  %128 = load %struct.tc_nat*, %struct.tc_nat** %24, align 8
  %129 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.tcf_nat*, %struct.tcf_nat** %27, align 8
  %132 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 4
  %133 = load %struct.tc_nat*, %struct.tc_nat** %24, align 8
  %134 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.tcf_nat*, %struct.tcf_nat** %27, align 8
  %137 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load %struct.tc_nat*, %struct.tc_nat** %24, align 8
  %139 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.tcf_nat*, %struct.tcf_nat** %27, align 8
  %142 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 4
  %143 = load %struct.tc_nat*, %struct.tc_nat** %24, align 8
  %144 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.tcf_nat*, %struct.tcf_nat** %27, align 8
  %147 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %149 = load %struct.tc_action*, %struct.tc_action** %148, align 8
  %150 = load %struct.tc_nat*, %struct.tc_nat** %24, align 8
  %151 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.tcf_chain*, %struct.tcf_chain** %23, align 8
  %154 = call %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action* %149, i32 %152, %struct.tcf_chain* %153)
  store %struct.tcf_chain* %154, %struct.tcf_chain** %23, align 8
  %155 = load %struct.tcf_nat*, %struct.tcf_nat** %27, align 8
  %156 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %155, i32 0, i32 0
  %157 = call i32 @spin_unlock_bh(i32* %156)
  %158 = load %struct.tcf_chain*, %struct.tcf_chain** %23, align 8
  %159 = icmp ne %struct.tcf_chain* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %121
  %161 = load %struct.tcf_chain*, %struct.tcf_chain** %23, align 8
  %162 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %161)
  br label %163

163:                                              ; preds = %160, %121
  %164 = load i32, i32* %25, align 4
  %165 = load i32, i32* @ACT_P_CREATED, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %169 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %170 = load %struct.tc_action*, %struct.tc_action** %169, align 8
  %171 = call i32 @tcf_idr_insert(%struct.tc_action_net* %168, %struct.tc_action* %170)
  br label %172

172:                                              ; preds = %167, %163
  %173 = load i32, i32* %25, align 4
  store i32 %173, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %180

174:                                              ; preds = %120
  %175 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %176 = load %struct.tc_action*, %struct.tc_action** %175, align 8
  %177 = load i32, i32* %16, align 4
  %178 = call i32 @tcf_idr_release(%struct.tc_action* %176, i32 %177)
  %179 = load i32, i32* %26, align 4
  store i32 %179, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %180

180:                                              ; preds = %174, %172, %108, %100, %96, %83, %57, %50, %40
  %181 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %181)
  %182 = load i32, i32* %10, align 4
  ret i32 %182
}

declare dso_local %struct.tc_action_net* @net_generic(%struct.net*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local %struct.tc_nat* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @tcf_idr_check_alloc(%struct.tc_action_net*, i32*, %struct.tc_action**, i32) #1

declare dso_local i32 @tcf_idr_create(%struct.tc_action_net*, i32, %struct.nlattr*, %struct.tc_action**, i32*, i32, i32) #1

declare dso_local i32 @tcf_idr_cleanup(%struct.tc_action_net*, i32) #1

declare dso_local i32 @tcf_idr_release(%struct.tc_action*, i32) #1

declare dso_local i32 @tcf_action_check_ctrlact(i32, %struct.tcf_proto*, %struct.tcf_chain**, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tcf_nat* @to_tcf_nat(%struct.tc_action*) #1

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
