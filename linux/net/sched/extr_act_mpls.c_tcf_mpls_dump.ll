; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_mpls.c_tcf_mpls_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_mpls.c_tcf_mpls_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_mpls = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tcf_mpls_params = type { i64, i64, i64, i64, i32, i32 }
%struct.tc_mpls = type { i32, i32, i32, i32, i32 }
%struct.tcf_t = type { i32 }

@TCA_MPLS_PARMS = common dso_local global i32 0, align 4
@ACT_MPLS_LABEL_NOT_SET = common dso_local global i64 0, align 8
@TCA_MPLS_LABEL = common dso_local global i32 0, align 4
@ACT_MPLS_TC_NOT_SET = common dso_local global i64 0, align 8
@TCA_MPLS_TC = common dso_local global i32 0, align 4
@TCA_MPLS_TTL = common dso_local global i32 0, align 4
@ACT_MPLS_BOS_NOT_SET = common dso_local global i64 0, align 8
@TCA_MPLS_BOS = common dso_local global i32 0, align 4
@TCA_MPLS_PROTO = common dso_local global i32 0, align 4
@TCA_MPLS_TM = common dso_local global i32 0, align 4
@TCA_MPLS_PAD = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_mpls_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_mpls_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_mpls*, align 8
  %12 = alloca %struct.tcf_mpls_params*, align 8
  %13 = alloca %struct.tc_mpls, align 4
  %14 = alloca %struct.tcf_t, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i8* @skb_tail_pointer(%struct.sk_buff* %15)
  store i8* %16, i8** %10, align 8
  %17 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %18 = call %struct.tcf_mpls* @to_mpls(%struct.tc_action* %17)
  store %struct.tcf_mpls* %18, %struct.tcf_mpls** %11, align 8
  %19 = getelementptr inbounds %struct.tc_mpls, %struct.tc_mpls* %13, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.tc_mpls, %struct.tc_mpls* %13, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.tc_mpls, %struct.tc_mpls* %13, i32 0, i32 2
  %22 = load %struct.tcf_mpls*, %struct.tcf_mpls** %11, align 8
  %23 = getelementptr inbounds %struct.tcf_mpls, %struct.tcf_mpls* %22, i32 0, i32 4
  %24 = call i32 @atomic_read(i32* %23)
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %21, align 4
  %27 = getelementptr inbounds %struct.tc_mpls, %struct.tc_mpls* %13, i32 0, i32 3
  %28 = load %struct.tcf_mpls*, %struct.tcf_mpls** %11, align 8
  %29 = getelementptr inbounds %struct.tcf_mpls, %struct.tcf_mpls* %28, i32 0, i32 5
  %30 = call i32 @refcount_read(i32* %29)
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %27, align 4
  %33 = getelementptr inbounds %struct.tc_mpls, %struct.tc_mpls* %13, i32 0, i32 4
  %34 = load %struct.tcf_mpls*, %struct.tcf_mpls** %11, align 8
  %35 = getelementptr inbounds %struct.tcf_mpls, %struct.tcf_mpls* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %33, align 4
  %37 = load %struct.tcf_mpls*, %struct.tcf_mpls** %11, align 8
  %38 = getelementptr inbounds %struct.tcf_mpls, %struct.tcf_mpls* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_bh(i32* %38)
  %40 = load %struct.tcf_mpls*, %struct.tcf_mpls** %11, align 8
  %41 = getelementptr inbounds %struct.tcf_mpls, %struct.tcf_mpls* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.tc_mpls, %struct.tc_mpls* %13, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.tcf_mpls*, %struct.tcf_mpls** %11, align 8
  %45 = getelementptr inbounds %struct.tcf_mpls, %struct.tcf_mpls* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tcf_mpls*, %struct.tcf_mpls** %11, align 8
  %48 = getelementptr inbounds %struct.tcf_mpls, %struct.tcf_mpls* %47, i32 0, i32 0
  %49 = call i32 @lockdep_is_held(i32* %48)
  %50 = call %struct.tcf_mpls_params* @rcu_dereference_protected(i32 %46, i32 %49)
  store %struct.tcf_mpls_params* %50, %struct.tcf_mpls_params** %12, align 8
  %51 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %12, align 8
  %52 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.tc_mpls, %struct.tc_mpls* %13, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = load i32, i32* @TCA_MPLS_PARMS, align 4
  %57 = call i64 @nla_put(%struct.sk_buff* %55, i32 %56, i32 20, %struct.tc_mpls* %13)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %4
  br label %145

60:                                               ; preds = %4
  %61 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %12, align 8
  %62 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ACT_MPLS_LABEL_NOT_SET, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = load i32, i32* @TCA_MPLS_LABEL, align 4
  %69 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %12, align 8
  %70 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @nla_put_u32(%struct.sk_buff* %67, i32 %68, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %145

75:                                               ; preds = %66, %60
  %76 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %12, align 8
  %77 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ACT_MPLS_TC_NOT_SET, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = load i32, i32* @TCA_MPLS_TC, align 4
  %84 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %12, align 8
  %85 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @nla_put_u8(%struct.sk_buff* %82, i32 %83, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %145

90:                                               ; preds = %81, %75
  %91 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %12, align 8
  %92 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = load i32, i32* @TCA_MPLS_TTL, align 4
  %98 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %12, align 8
  %99 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @nla_put_u8(%struct.sk_buff* %96, i32 %97, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %145

104:                                              ; preds = %95, %90
  %105 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %12, align 8
  %106 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ACT_MPLS_BOS_NOT_SET, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %104
  %111 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %112 = load i32, i32* @TCA_MPLS_BOS, align 4
  %113 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %12, align 8
  %114 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @nla_put_u8(%struct.sk_buff* %111, i32 %112, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %145

119:                                              ; preds = %110, %104
  %120 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %121 = load i32, i32* @TCA_MPLS_PROTO, align 4
  %122 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %12, align 8
  %123 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @nla_put_be16(%struct.sk_buff* %120, i32 %121, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %145

128:                                              ; preds = %119
  %129 = load %struct.tcf_mpls*, %struct.tcf_mpls** %11, align 8
  %130 = getelementptr inbounds %struct.tcf_mpls, %struct.tcf_mpls* %129, i32 0, i32 1
  %131 = call i32 @tcf_tm_dump(%struct.tcf_t* %14, i32* %130)
  %132 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %133 = load i32, i32* @TCA_MPLS_TM, align 4
  %134 = load i32, i32* @TCA_MPLS_PAD, align 4
  %135 = call i64 @nla_put_64bit(%struct.sk_buff* %132, i32 %133, i32 4, %struct.tcf_t* %14, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %145

138:                                              ; preds = %128
  %139 = load %struct.tcf_mpls*, %struct.tcf_mpls** %11, align 8
  %140 = getelementptr inbounds %struct.tcf_mpls, %struct.tcf_mpls* %139, i32 0, i32 0
  %141 = call i32 @spin_unlock_bh(i32* %140)
  %142 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %5, align 4
  br label %154

145:                                              ; preds = %137, %127, %118, %103, %89, %74, %59
  %146 = load %struct.tcf_mpls*, %struct.tcf_mpls** %11, align 8
  %147 = getelementptr inbounds %struct.tcf_mpls, %struct.tcf_mpls* %146, i32 0, i32 0
  %148 = call i32 @spin_unlock_bh(i32* %147)
  %149 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %150 = load i8*, i8** %10, align 8
  %151 = call i32 @nlmsg_trim(%struct.sk_buff* %149, i8* %150)
  %152 = load i32, i32* @EMSGSIZE, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %145, %138
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.tcf_mpls* @to_mpls(%struct.tc_action*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tcf_mpls_params* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_mpls*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

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
