; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ct.c_tcf_ct_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ct.c_tcf_ct_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_ct = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tcf_ct_params = type { i32, i32, i32*, i32, i32*, i32 }
%struct.tc_ct = type { i32, i32, i32, i32 }
%struct.tcf_t = type { i32 }

@TCA_CT_ACTION = common dso_local global i32 0, align 4
@TCA_CT_UNSPEC = common dso_local global i32 0, align 4
@TCA_CT_ACT_CLEAR = common dso_local global i32 0, align 4
@CONFIG_NF_CONNTRACK_MARK = common dso_local global i32 0, align 4
@TCA_CT_MARK = common dso_local global i32 0, align 4
@TCA_CT_MARK_MASK = common dso_local global i32 0, align 4
@CONFIG_NF_CONNTRACK_LABELS = common dso_local global i32 0, align 4
@TCA_CT_LABELS = common dso_local global i32 0, align 4
@TCA_CT_LABELS_MASK = common dso_local global i32 0, align 4
@CONFIG_NF_CONNTRACK_ZONES = common dso_local global i32 0, align 4
@TCA_CT_ZONE = common dso_local global i32 0, align 4
@TCA_CT_PARMS = common dso_local global i32 0, align 4
@TCA_CT_TM = common dso_local global i32 0, align 4
@TCA_CT_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_ct_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_ct_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_ct*, align 8
  %12 = alloca %struct.tcf_ct_params*, align 8
  %13 = alloca %struct.tc_ct, align 4
  %14 = alloca %struct.tcf_t, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i8* @skb_tail_pointer(%struct.sk_buff* %15)
  store i8* %16, i8** %10, align 8
  %17 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %18 = call %struct.tcf_ct* @to_ct(%struct.tc_action* %17)
  store %struct.tcf_ct* %18, %struct.tcf_ct** %11, align 8
  %19 = getelementptr inbounds %struct.tc_ct, %struct.tc_ct* %13, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.tc_ct, %struct.tc_ct* %13, i32 0, i32 1
  %21 = load %struct.tcf_ct*, %struct.tcf_ct** %11, align 8
  %22 = getelementptr inbounds %struct.tcf_ct, %struct.tcf_ct* %21, i32 0, i32 4
  %23 = call i32 @atomic_read(i32* %22)
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %20, align 4
  %26 = getelementptr inbounds %struct.tc_ct, %struct.tc_ct* %13, i32 0, i32 2
  %27 = load %struct.tcf_ct*, %struct.tcf_ct** %11, align 8
  %28 = getelementptr inbounds %struct.tcf_ct, %struct.tcf_ct* %27, i32 0, i32 5
  %29 = call i32 @refcount_read(i32* %28)
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %26, align 4
  %32 = getelementptr inbounds %struct.tc_ct, %struct.tc_ct* %13, i32 0, i32 3
  %33 = load %struct.tcf_ct*, %struct.tcf_ct** %11, align 8
  %34 = getelementptr inbounds %struct.tcf_ct, %struct.tcf_ct* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %32, align 4
  %36 = load %struct.tcf_ct*, %struct.tcf_ct** %11, align 8
  %37 = getelementptr inbounds %struct.tcf_ct, %struct.tcf_ct* %36, i32 0, i32 0
  %38 = call i32 @spin_lock_bh(i32* %37)
  %39 = load %struct.tcf_ct*, %struct.tcf_ct** %11, align 8
  %40 = getelementptr inbounds %struct.tcf_ct, %struct.tcf_ct* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tcf_ct*, %struct.tcf_ct** %11, align 8
  %43 = getelementptr inbounds %struct.tcf_ct, %struct.tcf_ct* %42, i32 0, i32 0
  %44 = call i32 @lockdep_is_held(i32* %43)
  %45 = call %struct.tcf_ct_params* @rcu_dereference_protected(i32 %41, i32 %44)
  store %struct.tcf_ct_params* %45, %struct.tcf_ct_params** %12, align 8
  %46 = load %struct.tcf_ct*, %struct.tcf_ct** %11, align 8
  %47 = getelementptr inbounds %struct.tcf_ct, %struct.tcf_ct* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.tc_ct, %struct.tc_ct* %13, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %12, align 8
  %52 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %51, i32 0, i32 0
  %53 = load i32, i32* @TCA_CT_ACTION, align 4
  %54 = load i32, i32* @TCA_CT_UNSPEC, align 4
  %55 = call i64 @tcf_ct_dump_key_val(%struct.sk_buff* %50, i32* %52, i32 %53, i32* null, i32 %54, i32 4)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %4
  br label %141

58:                                               ; preds = %4
  %59 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %12, align 8
  %60 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @TCA_CT_ACT_CLEAR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %118

66:                                               ; preds = %58
  %67 = load i32, i32* @CONFIG_NF_CONNTRACK_MARK, align 4
  %68 = call i64 @IS_ENABLED(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %12, align 8
  %73 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %72, i32 0, i32 1
  %74 = load i32, i32* @TCA_CT_MARK, align 4
  %75 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %12, align 8
  %76 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %75, i32 0, i32 5
  %77 = load i32, i32* @TCA_CT_MARK_MASK, align 4
  %78 = call i64 @tcf_ct_dump_key_val(%struct.sk_buff* %71, i32* %73, i32 %74, i32* %76, i32 %77, i32 4)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %141

81:                                               ; preds = %70, %66
  %82 = load i32, i32* @CONFIG_NF_CONNTRACK_LABELS, align 4
  %83 = call i64 @IS_ENABLED(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %12, align 8
  %88 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* @TCA_CT_LABELS, align 4
  %91 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %12, align 8
  %92 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* @TCA_CT_LABELS_MASK, align 4
  %95 = call i64 @tcf_ct_dump_key_val(%struct.sk_buff* %86, i32* %89, i32 %90, i32* %93, i32 %94, i32 8)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  br label %141

98:                                               ; preds = %85, %81
  %99 = load i32, i32* @CONFIG_NF_CONNTRACK_ZONES, align 4
  %100 = call i64 @IS_ENABLED(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %98
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %12, align 8
  %105 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %104, i32 0, i32 3
  %106 = load i32, i32* @TCA_CT_ZONE, align 4
  %107 = load i32, i32* @TCA_CT_UNSPEC, align 4
  %108 = call i64 @tcf_ct_dump_key_val(%struct.sk_buff* %103, i32* %105, i32 %106, i32* null, i32 %107, i32 4)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %141

111:                                              ; preds = %102, %98
  %112 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %113 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %12, align 8
  %114 = call i64 @tcf_ct_dump_nat(%struct.sk_buff* %112, %struct.tcf_ct_params* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %141

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117, %65
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = load i32, i32* @TCA_CT_PARMS, align 4
  %121 = call i64 @nla_put(%struct.sk_buff* %119, i32 %120, i32 16, %struct.tc_ct* %13)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %141

124:                                              ; preds = %118
  %125 = load %struct.tcf_ct*, %struct.tcf_ct** %11, align 8
  %126 = getelementptr inbounds %struct.tcf_ct, %struct.tcf_ct* %125, i32 0, i32 1
  %127 = call i32 @tcf_tm_dump(%struct.tcf_t* %14, i32* %126)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %129 = load i32, i32* @TCA_CT_TM, align 4
  %130 = load i32, i32* @TCA_CT_PAD, align 4
  %131 = call i64 @nla_put_64bit(%struct.sk_buff* %128, i32 %129, i32 4, %struct.tcf_t* %14, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  br label %141

134:                                              ; preds = %124
  %135 = load %struct.tcf_ct*, %struct.tcf_ct** %11, align 8
  %136 = getelementptr inbounds %struct.tcf_ct, %struct.tcf_ct* %135, i32 0, i32 0
  %137 = call i32 @spin_unlock_bh(i32* %136)
  %138 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %5, align 4
  br label %148

141:                                              ; preds = %133, %123, %116, %110, %97, %80, %57
  %142 = load %struct.tcf_ct*, %struct.tcf_ct** %11, align 8
  %143 = getelementptr inbounds %struct.tcf_ct, %struct.tcf_ct* %142, i32 0, i32 0
  %144 = call i32 @spin_unlock_bh(i32* %143)
  %145 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %146 = load i8*, i8** %10, align 8
  %147 = call i32 @nlmsg_trim(%struct.sk_buff* %145, i8* %146)
  store i32 -1, i32* %5, align 4
  br label %148

148:                                              ; preds = %141, %134
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.tcf_ct* @to_ct(%struct.tc_action*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tcf_ct_params* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @tcf_ct_dump_key_val(%struct.sk_buff*, i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @tcf_ct_dump_nat(%struct.sk_buff*, %struct.tcf_ct_params*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_ct*) #1

declare dso_local i32 @tcf_tm_dump(%struct.tcf_t*, i32*) #1

declare dso_local i64 @nla_put_64bit(%struct.sk_buff*, i32, i32, %struct.tcf_t*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
