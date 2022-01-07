; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_pie.c_pie_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_pie.c_pie_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.pie_sched_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_PIE_TARGET = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@TCA_PIE_LIMIT = common dso_local global i32 0, align 4
@TCA_PIE_TUPDATE = common dso_local global i32 0, align 4
@TCA_PIE_ALPHA = common dso_local global i32 0, align 4
@TCA_PIE_BETA = common dso_local global i32 0, align 4
@TCA_PIE_ECN = common dso_local global i32 0, align 4
@TCA_PIE_BYTEMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @pie_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pie_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pie_sched_data*, align 8
  %7 = alloca %struct.nlattr*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %9 = call %struct.pie_sched_data* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.pie_sched_data* %9, %struct.pie_sched_data** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load i32, i32* @TCA_OPTIONS, align 4
  %12 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %10, i32 %11)
  store %struct.nlattr* %12, %struct.nlattr** %7, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %14 = icmp ne %struct.nlattr* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %88

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load i32, i32* @TCA_PIE_TARGET, align 4
  %19 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %20 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @PSCHED_TICKS2NS(i32 %22)
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @NSEC_PER_USEC, align 4
  %26 = sdiv i32 %24, %25
  %27 = call i64 @nla_put_u32(%struct.sk_buff* %17, i32 %18, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %83, label %29

29:                                               ; preds = %16
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load i32, i32* @TCA_PIE_LIMIT, align 4
  %32 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %33 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @nla_put_u32(%struct.sk_buff* %30, i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %83, label %37

37:                                               ; preds = %29
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load i32, i32* @TCA_PIE_TUPDATE, align 4
  %40 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %41 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @jiffies_to_usecs(i32 %43)
  %45 = call i64 @nla_put_u32(%struct.sk_buff* %38, i32 %39, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %83, label %47

47:                                               ; preds = %37
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load i32, i32* @TCA_PIE_ALPHA, align 4
  %50 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %51 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @nla_put_u32(%struct.sk_buff* %48, i32 %49, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %83, label %56

56:                                               ; preds = %47
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = load i32, i32* @TCA_PIE_BETA, align 4
  %59 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %60 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @nla_put_u32(%struct.sk_buff* %57, i32 %58, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %83, label %65

65:                                               ; preds = %56
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = load i32, i32* @TCA_PIE_ECN, align 4
  %68 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %69 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @nla_put_u32(%struct.sk_buff* %66, i32 %67, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %65
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = load i32, i32* @TCA_PIE_BYTEMODE, align 4
  %77 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %78 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @nla_put_u32(%struct.sk_buff* %75, i32 %76, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74, %65, %56, %47, %37, %29, %16
  br label %88

84:                                               ; preds = %74
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %87 = call i32 @nla_nest_end(%struct.sk_buff* %85, %struct.nlattr* %86)
  store i32 %87, i32* %3, align 4
  br label %92

88:                                               ; preds = %83, %15
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %91 = call i32 @nla_nest_cancel(%struct.sk_buff* %89, %struct.nlattr* %90)
  store i32 -1, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %84
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.pie_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @PSCHED_TICKS2NS(i32) #1

declare dso_local i32 @jiffies_to_usecs(i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
