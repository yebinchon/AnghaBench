; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_tcf_ife_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_tcf_ife_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_ife_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tcf_ife_params = type { %struct.tc_ife, %struct.tc_ife*, %struct.tc_ife*, i32 }
%struct.tc_ife = type { i32, i32, i32, i32, i32 }
%struct.tcf_t = type { i32 }

@TCA_IFE_PARMS = common dso_local global i32 0, align 4
@TCA_IFE_TM = common dso_local global i32 0, align 4
@TCA_IFE_PAD = common dso_local global i32 0, align 4
@TCA_IFE_DMAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@TCA_IFE_SMAC = common dso_local global i32 0, align 4
@TCA_IFE_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to dump metalist\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_ife_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_ife_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_ife_info*, align 8
  %12 = alloca %struct.tcf_ife_params*, align 8
  %13 = alloca %struct.tc_ife, align 4
  %14 = alloca %struct.tcf_t, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i8* @skb_tail_pointer(%struct.sk_buff* %15)
  store i8* %16, i8** %10, align 8
  %17 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %18 = call %struct.tcf_ife_info* @to_ife(%struct.tc_action* %17)
  store %struct.tcf_ife_info* %18, %struct.tcf_ife_info** %11, align 8
  %19 = getelementptr inbounds %struct.tc_ife, %struct.tc_ife* %13, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.tc_ife, %struct.tc_ife* %13, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.tc_ife, %struct.tc_ife* %13, i32 0, i32 2
  %22 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %11, align 8
  %23 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %22, i32 0, i32 4
  %24 = call i32 @atomic_read(i32* %23)
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %21, align 4
  %27 = getelementptr inbounds %struct.tc_ife, %struct.tc_ife* %13, i32 0, i32 3
  %28 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %11, align 8
  %29 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %28, i32 0, i32 5
  %30 = call i32 @refcount_read(i32* %29)
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %27, align 4
  %33 = getelementptr inbounds %struct.tc_ife, %struct.tc_ife* %13, i32 0, i32 4
  %34 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %11, align 8
  %35 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %33, align 4
  %37 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %11, align 8
  %38 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_bh(i32* %38)
  %40 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %11, align 8
  %41 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.tc_ife, %struct.tc_ife* %13, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %11, align 8
  %45 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %11, align 8
  %48 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %47, i32 0, i32 0
  %49 = call i32 @lockdep_is_held(i32* %48)
  %50 = call %struct.tcf_ife_params* @rcu_dereference_protected(i32 %46, i32 %49)
  store %struct.tcf_ife_params* %50, %struct.tcf_ife_params** %12, align 8
  %51 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %12, align 8
  %52 = getelementptr inbounds %struct.tcf_ife_params, %struct.tcf_ife_params* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.tc_ife, %struct.tc_ife* %13, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = load i32, i32* @TCA_IFE_PARMS, align 4
  %57 = call i64 @nla_put(%struct.sk_buff* %55, i32 %56, i32 20, %struct.tc_ife* %13)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %4
  br label %126

60:                                               ; preds = %4
  %61 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %11, align 8
  %62 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %61, i32 0, i32 1
  %63 = call i32 @tcf_tm_dump(%struct.tcf_t* %14, i32* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = load i32, i32* @TCA_IFE_TM, align 4
  %66 = load i32, i32* @TCA_IFE_PAD, align 4
  %67 = call i64 @nla_put_64bit(%struct.sk_buff* %64, i32 %65, i32 4, %struct.tcf_t* %14, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %126

70:                                               ; preds = %60
  %71 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %12, align 8
  %72 = getelementptr inbounds %struct.tcf_ife_params, %struct.tcf_ife_params* %71, i32 0, i32 2
  %73 = load %struct.tc_ife*, %struct.tc_ife** %72, align 8
  %74 = call i32 @is_zero_ether_addr(%struct.tc_ife* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %70
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = load i32, i32* @TCA_IFE_DMAC, align 4
  %79 = load i32, i32* @ETH_ALEN, align 4
  %80 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %12, align 8
  %81 = getelementptr inbounds %struct.tcf_ife_params, %struct.tcf_ife_params* %80, i32 0, i32 2
  %82 = load %struct.tc_ife*, %struct.tc_ife** %81, align 8
  %83 = call i64 @nla_put(%struct.sk_buff* %77, i32 %78, i32 %79, %struct.tc_ife* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %126

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %70
  %88 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %12, align 8
  %89 = getelementptr inbounds %struct.tcf_ife_params, %struct.tcf_ife_params* %88, i32 0, i32 1
  %90 = load %struct.tc_ife*, %struct.tc_ife** %89, align 8
  %91 = call i32 @is_zero_ether_addr(%struct.tc_ife* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %87
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = load i32, i32* @TCA_IFE_SMAC, align 4
  %96 = load i32, i32* @ETH_ALEN, align 4
  %97 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %12, align 8
  %98 = getelementptr inbounds %struct.tcf_ife_params, %struct.tcf_ife_params* %97, i32 0, i32 1
  %99 = load %struct.tc_ife*, %struct.tc_ife** %98, align 8
  %100 = call i64 @nla_put(%struct.sk_buff* %94, i32 %95, i32 %96, %struct.tc_ife* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %126

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103, %87
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = load i32, i32* @TCA_IFE_TYPE, align 4
  %107 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %12, align 8
  %108 = getelementptr inbounds %struct.tcf_ife_params, %struct.tcf_ife_params* %107, i32 0, i32 0
  %109 = call i64 @nla_put(%struct.sk_buff* %105, i32 %106, i32 2, %struct.tc_ife* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %126

112:                                              ; preds = %104
  %113 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %114 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %11, align 8
  %115 = call i64 @dump_metalist(%struct.sk_buff* %113, %struct.tcf_ife_info* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %112
  %120 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %11, align 8
  %121 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %120, i32 0, i32 0
  %122 = call i32 @spin_unlock_bh(i32* %121)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %5, align 4
  br label %133

126:                                              ; preds = %111, %102, %85, %69, %59
  %127 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %11, align 8
  %128 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %127, i32 0, i32 0
  %129 = call i32 @spin_unlock_bh(i32* %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = load i8*, i8** %10, align 8
  %132 = call i32 @nlmsg_trim(%struct.sk_buff* %130, i8* %131)
  store i32 -1, i32* %5, align 4
  br label %133

133:                                              ; preds = %126, %119
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.tcf_ife_info* @to_ife(%struct.tc_action*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tcf_ife_params* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_ife*) #1

declare dso_local i32 @tcf_tm_dump(%struct.tcf_t*, i32*) #1

declare dso_local i64 @nla_put_64bit(%struct.sk_buff*, i32, i32, %struct.tcf_t*, i32) #1

declare dso_local i32 @is_zero_ether_addr(%struct.tc_ife*) #1

declare dso_local i64 @dump_metalist(%struct.sk_buff*, %struct.tcf_ife_info*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
