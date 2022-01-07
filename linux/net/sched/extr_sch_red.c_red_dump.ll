; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_red.c_red_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_red.c_red_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.red_sched_data = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.tc_red_qopt = type { i32, i32, i32, i32, i32, i32, i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_RED_PARMS = common dso_local global i32 0, align 4
@TCA_RED_MAX_P = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @red_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @red_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.red_sched_data*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.tc_red_qopt, align 4
  %9 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %11 = call %struct.red_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.red_sched_data* %11, %struct.red_sched_data** %6, align 8
  store %struct.nlattr* null, %struct.nlattr** %7, align 8
  %12 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %8, i32 0, i32 0
  %13 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %14 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %18 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %16, %20
  store i32 %21, i32* %12, align 4
  %22 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %8, i32 0, i32 1
  %23 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %24 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %28 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %26, %30
  store i32 %31, i32* %22, align 4
  %32 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %8, i32 0, i32 2
  %33 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %34 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %32, align 4
  %37 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %8, i32 0, i32 3
  %38 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %39 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %37, align 4
  %42 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %8, i32 0, i32 4
  %43 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %44 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %42, align 4
  %47 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %8, i32 0, i32 5
  %48 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %49 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %47, align 4
  %51 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %8, i32 0, i32 6
  %52 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %53 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %51, align 4
  %55 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %56 = call i32 @red_dump_offload_stats(%struct.Qdisc* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %2
  br label %86

60:                                               ; preds = %2
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = load i32, i32* @TCA_OPTIONS, align 4
  %63 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %61, i32 %62)
  store %struct.nlattr* %63, %struct.nlattr** %7, align 8
  %64 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %65 = icmp eq %struct.nlattr* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %86

67:                                               ; preds = %60
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = load i32, i32* @TCA_RED_PARMS, align 4
  %70 = call i64 @nla_put(%struct.sk_buff* %68, i32 %69, i32 28, %struct.tc_red_qopt* %8)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %67
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = load i32, i32* @TCA_RED_MAX_P, align 4
  %75 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %76 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @nla_put_u32(%struct.sk_buff* %73, i32 %74, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72, %67
  br label %86

82:                                               ; preds = %72
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %85 = call i32 @nla_nest_end(%struct.sk_buff* %83, %struct.nlattr* %84)
  store i32 %85, i32* %3, align 4
  br label %92

86:                                               ; preds = %81, %66, %59
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %89 = call i32 @nla_nest_cancel(%struct.sk_buff* %87, %struct.nlattr* %88)
  %90 = load i32, i32* @EMSGSIZE, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %86, %82
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.red_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @red_dump_offload_stats(%struct.Qdisc*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_red_qopt*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
