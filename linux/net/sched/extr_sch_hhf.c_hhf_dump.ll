; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hhf.c_hhf_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hhf.c_hhf_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.hhf_sched_data = type { i32, i32, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_HHF_BACKLOG_LIMIT = common dso_local global i32 0, align 4
@TCA_HHF_QUANTUM = common dso_local global i32 0, align 4
@TCA_HHF_HH_FLOWS_LIMIT = common dso_local global i32 0, align 4
@TCA_HHF_RESET_TIMEOUT = common dso_local global i32 0, align 4
@TCA_HHF_ADMIT_BYTES = common dso_local global i32 0, align 4
@TCA_HHF_EVICT_TIMEOUT = common dso_local global i32 0, align 4
@TCA_HHF_NON_HH_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @hhf_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hhf_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.hhf_sched_data*, align 8
  %7 = alloca %struct.nlattr*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %9 = call %struct.hhf_sched_data* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.hhf_sched_data* %9, %struct.hhf_sched_data** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load i32, i32* @TCA_OPTIONS, align 4
  %12 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %10, i32 %11)
  store %struct.nlattr* %12, %struct.nlattr** %7, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %14 = icmp eq %struct.nlattr* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %79

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load i32, i32* @TCA_HHF_BACKLOG_LIMIT, align 4
  %19 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %20 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @nla_put_u32(%struct.sk_buff* %17, i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %74, label %24

24:                                               ; preds = %16
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load i32, i32* @TCA_HHF_QUANTUM, align 4
  %27 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %28 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @nla_put_u32(%struct.sk_buff* %25, i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %74, label %32

32:                                               ; preds = %24
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load i32, i32* @TCA_HHF_HH_FLOWS_LIMIT, align 4
  %35 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %36 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @nla_put_u32(%struct.sk_buff* %33, i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %74, label %40

40:                                               ; preds = %32
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load i32, i32* @TCA_HHF_RESET_TIMEOUT, align 4
  %43 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %44 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @jiffies_to_usecs(i32 %45)
  %47 = call i64 @nla_put_u32(%struct.sk_buff* %41, i32 %42, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %74, label %49

49:                                               ; preds = %40
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = load i32, i32* @TCA_HHF_ADMIT_BYTES, align 4
  %52 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %53 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @nla_put_u32(%struct.sk_buff* %50, i32 %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %49
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = load i32, i32* @TCA_HHF_EVICT_TIMEOUT, align 4
  %60 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %61 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @jiffies_to_usecs(i32 %62)
  %64 = call i64 @nla_put_u32(%struct.sk_buff* %58, i32 %59, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %57
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = load i32, i32* @TCA_HHF_NON_HH_WEIGHT, align 4
  %69 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %70 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @nla_put_u32(%struct.sk_buff* %67, i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66, %57, %49, %40, %32, %24, %16
  br label %79

75:                                               ; preds = %66
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %78 = call i32 @nla_nest_end(%struct.sk_buff* %76, %struct.nlattr* %77)
  store i32 %78, i32* %3, align 4
  br label %80

79:                                               ; preds = %74, %15
  store i32 -1, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %75
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.hhf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @jiffies_to_usecs(i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
