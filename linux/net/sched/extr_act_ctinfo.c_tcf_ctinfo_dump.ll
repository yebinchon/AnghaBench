; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ctinfo.c_tcf_ctinfo_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ctinfo.c_tcf_ctinfo_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_ctinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tc_ctinfo = type { i32, i32, i32, i32 }
%struct.tcf_ctinfo_params = type { i32, i32, i32, i32, i32 }
%struct.tcf_t = type { i32 }

@TCA_CTINFO_TM = common dso_local global i32 0, align 4
@TCA_CTINFO_PAD = common dso_local global i32 0, align 4
@TCA_CTINFO_ACT = common dso_local global i32 0, align 4
@TCA_CTINFO_ZONE = common dso_local global i32 0, align 4
@CTINFO_MODE_DSCP = common dso_local global i32 0, align 4
@TCA_CTINFO_PARMS_DSCP_MASK = common dso_local global i32 0, align 4
@TCA_CTINFO_PARMS_DSCP_STATEMASK = common dso_local global i32 0, align 4
@CTINFO_MODE_CPMARK = common dso_local global i32 0, align 4
@TCA_CTINFO_PARMS_CPMARK_MASK = common dso_local global i32 0, align 4
@TCA_CTINFO_STATS_DSCP_SET = common dso_local global i32 0, align 4
@TCA_CTINFO_STATS_DSCP_ERROR = common dso_local global i32 0, align 4
@TCA_CTINFO_STATS_CPMARK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_ctinfo_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_ctinfo_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcf_ctinfo*, align 8
  %11 = alloca %struct.tc_ctinfo, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.tcf_ctinfo_params*, align 8
  %14 = alloca %struct.tcf_t, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %16 = call %struct.tcf_ctinfo* @to_ctinfo(%struct.tc_action* %15)
  store %struct.tcf_ctinfo* %16, %struct.tcf_ctinfo** %10, align 8
  %17 = getelementptr inbounds %struct.tc_ctinfo, %struct.tc_ctinfo* %11, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.tc_ctinfo, %struct.tc_ctinfo* %11, i32 0, i32 1
  %19 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %10, align 8
  %20 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %19, i32 0, i32 7
  %21 = call i32 @atomic_read(i32* %20)
  %22 = load i32, i32* %8, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %18, align 4
  %24 = getelementptr inbounds %struct.tc_ctinfo, %struct.tc_ctinfo* %11, i32 0, i32 2
  %25 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %10, align 8
  %26 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %25, i32 0, i32 8
  %27 = call i32 @refcount_read(i32* %26)
  %28 = load i32, i32* %9, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %24, align 4
  %30 = getelementptr inbounds %struct.tc_ctinfo, %struct.tc_ctinfo* %11, i32 0, i32 3
  %31 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %10, align 8
  %32 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %30, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call i8* @skb_tail_pointer(%struct.sk_buff* %34)
  store i8* %35, i8** %12, align 8
  %36 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %10, align 8
  %37 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %36, i32 0, i32 0
  %38 = call i32 @spin_lock_bh(i32* %37)
  %39 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %10, align 8
  %40 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %10, align 8
  %43 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %42, i32 0, i32 0
  %44 = call i32 @lockdep_is_held(i32* %43)
  %45 = call %struct.tcf_ctinfo_params* @rcu_dereference_protected(i32 %41, i32 %44)
  store %struct.tcf_ctinfo_params* %45, %struct.tcf_ctinfo_params** %13, align 8
  %46 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %10, align 8
  %47 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %46, i32 0, i32 5
  %48 = call i32 @tcf_tm_dump(%struct.tcf_t* %14, i32* %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load i32, i32* @TCA_CTINFO_TM, align 4
  %51 = load i32, i32* @TCA_CTINFO_PAD, align 4
  %52 = call i64 @nla_put_64bit(%struct.sk_buff* %49, i32 %50, i32 4, %struct.tcf_t* %14, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %4
  br label %154

55:                                               ; preds = %4
  %56 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %10, align 8
  %57 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.tc_ctinfo, %struct.tc_ctinfo* %11, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = load i32, i32* @TCA_CTINFO_ACT, align 4
  %62 = call i64 @nla_put(%struct.sk_buff* %60, i32 %61, i32 16, %struct.tc_ctinfo* %11)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %154

65:                                               ; preds = %55
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = load i32, i32* @TCA_CTINFO_ZONE, align 4
  %68 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %13, align 8
  %69 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @nla_put_u16(%struct.sk_buff* %66, i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %154

74:                                               ; preds = %65
  %75 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %13, align 8
  %76 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CTINFO_MODE_DSCP, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %74
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = load i32, i32* @TCA_CTINFO_PARMS_DSCP_MASK, align 4
  %84 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %13, align 8
  %85 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @nla_put_u32(%struct.sk_buff* %82, i32 %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %154

90:                                               ; preds = %81
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = load i32, i32* @TCA_CTINFO_PARMS_DSCP_STATEMASK, align 4
  %93 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %13, align 8
  %94 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @nla_put_u32(%struct.sk_buff* %91, i32 %92, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %154

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %74
  %101 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %13, align 8
  %102 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CTINFO_MODE_CPMARK, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %100
  %108 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %109 = load i32, i32* @TCA_CTINFO_PARMS_CPMARK_MASK, align 4
  %110 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %13, align 8
  %111 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @nla_put_u32(%struct.sk_buff* %108, i32 %109, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %154

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %100
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = load i32, i32* @TCA_CTINFO_STATS_DSCP_SET, align 4
  %120 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %10, align 8
  %121 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @TCA_CTINFO_PAD, align 4
  %124 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %118, i32 %119, i32 %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %154

127:                                              ; preds = %117
  %128 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %129 = load i32, i32* @TCA_CTINFO_STATS_DSCP_ERROR, align 4
  %130 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %10, align 8
  %131 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @TCA_CTINFO_PAD, align 4
  %134 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %128, i32 %129, i32 %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  br label %154

137:                                              ; preds = %127
  %138 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %139 = load i32, i32* @TCA_CTINFO_STATS_CPMARK_SET, align 4
  %140 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %10, align 8
  %141 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @TCA_CTINFO_PAD, align 4
  %144 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %138, i32 %139, i32 %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  br label %154

147:                                              ; preds = %137
  %148 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %10, align 8
  %149 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %148, i32 0, i32 0
  %150 = call i32 @spin_unlock_bh(i32* %149)
  %151 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %5, align 4
  br label %161

154:                                              ; preds = %146, %136, %126, %115, %98, %89, %73, %64, %54
  %155 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %10, align 8
  %156 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %155, i32 0, i32 0
  %157 = call i32 @spin_unlock_bh(i32* %156)
  %158 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %159 = load i8*, i8** %12, align 8
  %160 = call i32 @nlmsg_trim(%struct.sk_buff* %158, i8* %159)
  store i32 -1, i32* %5, align 4
  br label %161

161:                                              ; preds = %154, %147
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local %struct.tcf_ctinfo* @to_ctinfo(%struct.tc_action*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tcf_ctinfo_params* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @tcf_tm_dump(%struct.tcf_t*, i32*) #1

declare dso_local i64 @nla_put_64bit(%struct.sk_buff*, i32, i32, %struct.tcf_t*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_ctinfo*) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
