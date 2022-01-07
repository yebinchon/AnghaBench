; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_skbmod.c_tcf_skbmod_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_skbmod.c_tcf_skbmod_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_skbmod = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tcf_skbmod_params = type { i32, i32, %struct.tc_skbmod*, %struct.tc_skbmod* }
%struct.tc_skbmod = type { i32, i32, i32, i32, i32 }
%struct.tcf_t = type { i32 }

@TCA_SKBMOD_PARMS = common dso_local global i32 0, align 4
@SKBMOD_F_DMAC = common dso_local global i32 0, align 4
@TCA_SKBMOD_DMAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@SKBMOD_F_SMAC = common dso_local global i32 0, align 4
@TCA_SKBMOD_SMAC = common dso_local global i32 0, align 4
@SKBMOD_F_ETYPE = common dso_local global i32 0, align 4
@TCA_SKBMOD_ETYPE = common dso_local global i32 0, align 4
@TCA_SKBMOD_TM = common dso_local global i32 0, align 4
@TCA_SKBMOD_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_skbmod_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_skbmod_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcf_skbmod*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.tcf_skbmod_params*, align 8
  %13 = alloca %struct.tc_skbmod, align 4
  %14 = alloca %struct.tcf_t, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %16 = call %struct.tcf_skbmod* @to_skbmod(%struct.tc_action* %15)
  store %struct.tcf_skbmod* %16, %struct.tcf_skbmod** %10, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i8* @skb_tail_pointer(%struct.sk_buff* %17)
  store i8* %18, i8** %11, align 8
  %19 = getelementptr inbounds %struct.tc_skbmod, %struct.tc_skbmod* %13, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.tc_skbmod, %struct.tc_skbmod* %13, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.tc_skbmod, %struct.tc_skbmod* %13, i32 0, i32 2
  %22 = load %struct.tcf_skbmod*, %struct.tcf_skbmod** %10, align 8
  %23 = getelementptr inbounds %struct.tcf_skbmod, %struct.tcf_skbmod* %22, i32 0, i32 4
  %24 = call i32 @atomic_read(i32* %23)
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %21, align 4
  %27 = getelementptr inbounds %struct.tc_skbmod, %struct.tc_skbmod* %13, i32 0, i32 3
  %28 = load %struct.tcf_skbmod*, %struct.tcf_skbmod** %10, align 8
  %29 = getelementptr inbounds %struct.tcf_skbmod, %struct.tcf_skbmod* %28, i32 0, i32 5
  %30 = call i32 @refcount_read(i32* %29)
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %27, align 4
  %33 = getelementptr inbounds %struct.tc_skbmod, %struct.tc_skbmod* %13, i32 0, i32 4
  %34 = load %struct.tcf_skbmod*, %struct.tcf_skbmod** %10, align 8
  %35 = getelementptr inbounds %struct.tcf_skbmod, %struct.tcf_skbmod* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %33, align 4
  %37 = load %struct.tcf_skbmod*, %struct.tcf_skbmod** %10, align 8
  %38 = getelementptr inbounds %struct.tcf_skbmod, %struct.tcf_skbmod* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_bh(i32* %38)
  %40 = load %struct.tcf_skbmod*, %struct.tcf_skbmod** %10, align 8
  %41 = getelementptr inbounds %struct.tcf_skbmod, %struct.tcf_skbmod* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.tc_skbmod, %struct.tc_skbmod* %13, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.tcf_skbmod*, %struct.tcf_skbmod** %10, align 8
  %45 = getelementptr inbounds %struct.tcf_skbmod, %struct.tcf_skbmod* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tcf_skbmod*, %struct.tcf_skbmod** %10, align 8
  %48 = getelementptr inbounds %struct.tcf_skbmod, %struct.tcf_skbmod* %47, i32 0, i32 0
  %49 = call i32 @lockdep_is_held(i32* %48)
  %50 = call %struct.tcf_skbmod_params* @rcu_dereference_protected(i32 %46, i32 %49)
  store %struct.tcf_skbmod_params* %50, %struct.tcf_skbmod_params** %12, align 8
  %51 = load %struct.tcf_skbmod_params*, %struct.tcf_skbmod_params** %12, align 8
  %52 = getelementptr inbounds %struct.tcf_skbmod_params, %struct.tcf_skbmod_params* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.tc_skbmod, %struct.tc_skbmod* %13, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = load i32, i32* @TCA_SKBMOD_PARMS, align 4
  %57 = call i64 @nla_put(%struct.sk_buff* %55, i32 %56, i32 20, %struct.tc_skbmod* %13)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %4
  br label %128

60:                                               ; preds = %4
  %61 = load %struct.tcf_skbmod_params*, %struct.tcf_skbmod_params** %12, align 8
  %62 = getelementptr inbounds %struct.tcf_skbmod_params, %struct.tcf_skbmod_params* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SKBMOD_F_DMAC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = load i32, i32* @TCA_SKBMOD_DMAC, align 4
  %70 = load i32, i32* @ETH_ALEN, align 4
  %71 = load %struct.tcf_skbmod_params*, %struct.tcf_skbmod_params** %12, align 8
  %72 = getelementptr inbounds %struct.tcf_skbmod_params, %struct.tcf_skbmod_params* %71, i32 0, i32 3
  %73 = load %struct.tc_skbmod*, %struct.tc_skbmod** %72, align 8
  %74 = call i64 @nla_put(%struct.sk_buff* %68, i32 %69, i32 %70, %struct.tc_skbmod* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %128

77:                                               ; preds = %67, %60
  %78 = load %struct.tcf_skbmod_params*, %struct.tcf_skbmod_params** %12, align 8
  %79 = getelementptr inbounds %struct.tcf_skbmod_params, %struct.tcf_skbmod_params* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SKBMOD_F_SMAC, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %77
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = load i32, i32* @TCA_SKBMOD_SMAC, align 4
  %87 = load i32, i32* @ETH_ALEN, align 4
  %88 = load %struct.tcf_skbmod_params*, %struct.tcf_skbmod_params** %12, align 8
  %89 = getelementptr inbounds %struct.tcf_skbmod_params, %struct.tcf_skbmod_params* %88, i32 0, i32 2
  %90 = load %struct.tc_skbmod*, %struct.tc_skbmod** %89, align 8
  %91 = call i64 @nla_put(%struct.sk_buff* %85, i32 %86, i32 %87, %struct.tc_skbmod* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %128

94:                                               ; preds = %84, %77
  %95 = load %struct.tcf_skbmod_params*, %struct.tcf_skbmod_params** %12, align 8
  %96 = getelementptr inbounds %struct.tcf_skbmod_params, %struct.tcf_skbmod_params* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @SKBMOD_F_ETYPE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %94
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = load i32, i32* @TCA_SKBMOD_ETYPE, align 4
  %104 = load %struct.tcf_skbmod_params*, %struct.tcf_skbmod_params** %12, align 8
  %105 = getelementptr inbounds %struct.tcf_skbmod_params, %struct.tcf_skbmod_params* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ntohs(i32 %106)
  %108 = call i64 @nla_put_u16(%struct.sk_buff* %102, i32 %103, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %128

111:                                              ; preds = %101, %94
  %112 = load %struct.tcf_skbmod*, %struct.tcf_skbmod** %10, align 8
  %113 = getelementptr inbounds %struct.tcf_skbmod, %struct.tcf_skbmod* %112, i32 0, i32 1
  %114 = call i32 @tcf_tm_dump(%struct.tcf_t* %14, i32* %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %116 = load i32, i32* @TCA_SKBMOD_TM, align 4
  %117 = load i32, i32* @TCA_SKBMOD_PAD, align 4
  %118 = call i64 @nla_put_64bit(%struct.sk_buff* %115, i32 %116, i32 4, %struct.tcf_t* %14, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %128

121:                                              ; preds = %111
  %122 = load %struct.tcf_skbmod*, %struct.tcf_skbmod** %10, align 8
  %123 = getelementptr inbounds %struct.tcf_skbmod, %struct.tcf_skbmod* %122, i32 0, i32 0
  %124 = call i32 @spin_unlock_bh(i32* %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %5, align 4
  br label %135

128:                                              ; preds = %120, %110, %93, %76, %59
  %129 = load %struct.tcf_skbmod*, %struct.tcf_skbmod** %10, align 8
  %130 = getelementptr inbounds %struct.tcf_skbmod, %struct.tcf_skbmod* %129, i32 0, i32 0
  %131 = call i32 @spin_unlock_bh(i32* %130)
  %132 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = call i32 @nlmsg_trim(%struct.sk_buff* %132, i8* %133)
  store i32 -1, i32* %5, align 4
  br label %135

135:                                              ; preds = %128, %121
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local %struct.tcf_skbmod* @to_skbmod(%struct.tc_action*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tcf_skbmod_params* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_skbmod*) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

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
