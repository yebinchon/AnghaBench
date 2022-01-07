; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.choke_sched_data = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.tc_red_qopt = type { i32, i32, i32, i32, i32, i32, i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_CHOKE_PARMS = common dso_local global i32 0, align 4
@TCA_CHOKE_MAX_P = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @choke_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choke_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.choke_sched_data*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.tc_red_qopt, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.choke_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.choke_sched_data* %10, %struct.choke_sched_data** %6, align 8
  store %struct.nlattr* null, %struct.nlattr** %7, align 8
  %11 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %8, i32 0, i32 0
  %12 = load %struct.choke_sched_data*, %struct.choke_sched_data** %6, align 8
  %13 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.choke_sched_data*, %struct.choke_sched_data** %6, align 8
  %17 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %15, %19
  store i32 %20, i32* %11, align 4
  %21 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %8, i32 0, i32 1
  %22 = load %struct.choke_sched_data*, %struct.choke_sched_data** %6, align 8
  %23 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.choke_sched_data*, %struct.choke_sched_data** %6, align 8
  %27 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %25, %29
  store i32 %30, i32* %21, align 4
  %31 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %8, i32 0, i32 2
  %32 = load %struct.choke_sched_data*, %struct.choke_sched_data** %6, align 8
  %33 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %31, align 4
  %36 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %8, i32 0, i32 3
  %37 = load %struct.choke_sched_data*, %struct.choke_sched_data** %6, align 8
  %38 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %36, align 4
  %41 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %8, i32 0, i32 4
  %42 = load %struct.choke_sched_data*, %struct.choke_sched_data** %6, align 8
  %43 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %41, align 4
  %46 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %8, i32 0, i32 5
  %47 = load %struct.choke_sched_data*, %struct.choke_sched_data** %6, align 8
  %48 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %46, align 4
  %50 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %8, i32 0, i32 6
  %51 = load %struct.choke_sched_data*, %struct.choke_sched_data** %6, align 8
  %52 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %50, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load i32, i32* @TCA_OPTIONS, align 4
  %56 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %54, i32 %55)
  store %struct.nlattr* %56, %struct.nlattr** %7, align 8
  %57 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %58 = icmp eq %struct.nlattr* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %2
  br label %79

60:                                               ; preds = %2
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = load i32, i32* @TCA_CHOKE_PARMS, align 4
  %63 = call i64 @nla_put(%struct.sk_buff* %61, i32 %62, i32 28, %struct.tc_red_qopt* %8)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %60
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = load i32, i32* @TCA_CHOKE_MAX_P, align 4
  %68 = load %struct.choke_sched_data*, %struct.choke_sched_data** %6, align 8
  %69 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @nla_put_u32(%struct.sk_buff* %66, i32 %67, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65, %60
  br label %79

75:                                               ; preds = %65
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %78 = call i32 @nla_nest_end(%struct.sk_buff* %76, %struct.nlattr* %77)
  store i32 %78, i32* %3, align 4
  br label %85

79:                                               ; preds = %74, %59
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %82 = call i32 @nla_nest_cancel(%struct.sk_buff* %80, %struct.nlattr* %81)
  %83 = load i32, i32* @EMSGSIZE, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %79, %75
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.choke_sched_data* @qdisc_priv(%struct.Qdisc*) #1

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
