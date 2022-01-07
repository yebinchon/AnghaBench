; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfb.c_sfb_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfb.c_sfb_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sfb_sched_data = type { %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_sfb_qopt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_SFB_PARMS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @sfb_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfb_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sfb_sched_data*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.tc_sfb_qopt, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.sfb_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.sfb_sched_data* %10, %struct.sfb_sched_data** %6, align 8
  %11 = getelementptr inbounds %struct.tc_sfb_qopt, %struct.tc_sfb_qopt* %8, i32 0, i32 0
  %12 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %6, align 8
  %13 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds %struct.tc_sfb_qopt, %struct.tc_sfb_qopt* %8, i32 0, i32 1
  %16 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %6, align 8
  %17 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.tc_sfb_qopt, %struct.tc_sfb_qopt* %8, i32 0, i32 2
  %20 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %6, align 8
  %21 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds %struct.tc_sfb_qopt, %struct.tc_sfb_qopt* %8, i32 0, i32 3
  %24 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %6, align 8
  %25 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds %struct.tc_sfb_qopt, %struct.tc_sfb_qopt* %8, i32 0, i32 4
  %28 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %6, align 8
  %29 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %27, align 4
  %31 = getelementptr inbounds %struct.tc_sfb_qopt, %struct.tc_sfb_qopt* %8, i32 0, i32 5
  %32 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %6, align 8
  %33 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %31, align 4
  %35 = getelementptr inbounds %struct.tc_sfb_qopt, %struct.tc_sfb_qopt* %8, i32 0, i32 6
  %36 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %6, align 8
  %37 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %35, align 4
  %39 = getelementptr inbounds %struct.tc_sfb_qopt, %struct.tc_sfb_qopt* %8, i32 0, i32 7
  %40 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %6, align 8
  %41 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @jiffies_to_msecs(i32 %42)
  store i32 %43, i32* %39, align 4
  %44 = getelementptr inbounds %struct.tc_sfb_qopt, %struct.tc_sfb_qopt* %8, i32 0, i32 8
  %45 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %6, align 8
  %46 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @jiffies_to_msecs(i32 %47)
  store i32 %48, i32* %44, align 4
  %49 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %6, align 8
  %50 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %56 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = load i32, i32* @TCA_OPTIONS, align 4
  %60 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %58, i32 %59)
  store %struct.nlattr* %60, %struct.nlattr** %7, align 8
  %61 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %62 = icmp eq %struct.nlattr* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %2
  br label %74

64:                                               ; preds = %2
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = load i32, i32* @TCA_SFB_PARMS, align 4
  %67 = call i64 @nla_put(%struct.sk_buff* %65, i32 %66, i32 36, %struct.tc_sfb_qopt* %8)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %74

70:                                               ; preds = %64
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %73 = call i32 @nla_nest_end(%struct.sk_buff* %71, %struct.nlattr* %72)
  store i32 %73, i32* %3, align 4
  br label %80

74:                                               ; preds = %69, %63
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %77 = call i32 @nla_nest_cancel(%struct.sk_buff* %75, %struct.nlattr* %76)
  %78 = load i32, i32* @EMSGSIZE, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %74, %70
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.sfb_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_sfb_qopt*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
