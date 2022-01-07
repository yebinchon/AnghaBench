; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_codel.c_codel_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_codel.c_codel_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.codel_sched_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_CODEL_TARGET = common dso_local global i32 0, align 4
@TCA_CODEL_LIMIT = common dso_local global i32 0, align 4
@TCA_CODEL_INTERVAL = common dso_local global i32 0, align 4
@TCA_CODEL_ECN = common dso_local global i32 0, align 4
@CODEL_DISABLED_THRESHOLD = common dso_local global i64 0, align 8
@TCA_CODEL_CE_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @codel_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codel_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.codel_sched_data*, align 8
  %7 = alloca %struct.nlattr*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %9 = call %struct.codel_sched_data* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.codel_sched_data* %9, %struct.codel_sched_data** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load i32, i32* @TCA_OPTIONS, align 4
  %12 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %10, i32 %11)
  store %struct.nlattr* %12, %struct.nlattr** %7, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %14 = icmp eq %struct.nlattr* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %76

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load i32, i32* @TCA_CODEL_TARGET, align 4
  %19 = load %struct.codel_sched_data*, %struct.codel_sched_data** %6, align 8
  %20 = getelementptr inbounds %struct.codel_sched_data, %struct.codel_sched_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @codel_time_to_us(i64 %22)
  %24 = call i64 @nla_put_u32(%struct.sk_buff* %17, i32 %18, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %16
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i32, i32* @TCA_CODEL_LIMIT, align 4
  %29 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %30 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @nla_put_u32(%struct.sk_buff* %27, i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %26
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load i32, i32* @TCA_CODEL_INTERVAL, align 4
  %37 = load %struct.codel_sched_data*, %struct.codel_sched_data** %6, align 8
  %38 = getelementptr inbounds %struct.codel_sched_data, %struct.codel_sched_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @codel_time_to_us(i64 %40)
  %42 = call i64 @nla_put_u32(%struct.sk_buff* %35, i32 %36, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %34
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = load i32, i32* @TCA_CODEL_ECN, align 4
  %47 = load %struct.codel_sched_data*, %struct.codel_sched_data** %6, align 8
  %48 = getelementptr inbounds %struct.codel_sched_data, %struct.codel_sched_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @nla_put_u32(%struct.sk_buff* %45, i32 %46, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44, %34, %26, %16
  br label %76

54:                                               ; preds = %44
  %55 = load %struct.codel_sched_data*, %struct.codel_sched_data** %6, align 8
  %56 = getelementptr inbounds %struct.codel_sched_data, %struct.codel_sched_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CODEL_DISABLED_THRESHOLD, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = load i32, i32* @TCA_CODEL_CE_THRESHOLD, align 4
  %64 = load %struct.codel_sched_data*, %struct.codel_sched_data** %6, align 8
  %65 = getelementptr inbounds %struct.codel_sched_data, %struct.codel_sched_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @codel_time_to_us(i64 %67)
  %69 = call i64 @nla_put_u32(%struct.sk_buff* %62, i32 %63, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %76

72:                                               ; preds = %61, %54
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %75 = call i32 @nla_nest_end(%struct.sk_buff* %73, %struct.nlattr* %74)
  store i32 %75, i32* %3, align 4
  br label %80

76:                                               ; preds = %71, %53, %15
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %79 = call i32 @nla_nest_cancel(%struct.sk_buff* %77, %struct.nlattr* %78)
  store i32 -1, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %72
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.codel_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @codel_time_to_us(i64) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
