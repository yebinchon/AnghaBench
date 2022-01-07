; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_tbf.c_tbf_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_tbf.c_tbf_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tbf_sched_data = type { %struct.TYPE_8__, %struct.TYPE_8__, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_tbf_qopt = type { i8*, i8*, i32, i32, i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_TBF_PARMS = common dso_local global i32 0, align 4
@TCA_TBF_RATE64 = common dso_local global i32 0, align 4
@TCA_TBF_PAD = common dso_local global i32 0, align 4
@TCA_TBF_PRATE64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @tbf_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbf_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tbf_sched_data*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.tc_tbf_qopt, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.tbf_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.tbf_sched_data* %10, %struct.tbf_sched_data** %6, align 8
  %11 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %12 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %11, i32 0, i32 5
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %18 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load i32, i32* @TCA_OPTIONS, align 4
  %22 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %20, i32 %21)
  store %struct.nlattr* %22, %struct.nlattr** %7, align 8
  %23 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %24 = icmp eq %struct.nlattr* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %104

26:                                               ; preds = %2
  %27 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %28 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %8, i32 0, i32 4
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %8, i32 0, i32 3
  %32 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %33 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %32, i32 0, i32 1
  %34 = call i32 @psched_ratecfg_getrate(i32* %31, %struct.TYPE_8__* %33)
  %35 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %36 = call i64 @tbf_peak_present(%struct.tbf_sched_data* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %8, i32 0, i32 2
  %40 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %41 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %40, i32 0, i32 0
  %42 = call i32 @psched_ratecfg_getrate(i32* %39, %struct.TYPE_8__* %41)
  br label %46

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %8, i32 0, i32 2
  %45 = call i32 @memset(i32* %44, i32 0, i32 4)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %48 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @PSCHED_NS2TICKS(i32 %49)
  %51 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %8, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  %52 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %53 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @PSCHED_NS2TICKS(i32 %54)
  %56 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %8, i32 0, i32 0
  store i8* %55, i8** %56, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = load i32, i32* @TCA_TBF_PARMS, align 4
  %59 = call i64 @nla_put(%struct.sk_buff* %57, i32 %58, i32 32, %struct.tc_tbf_qopt* %8)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  br label %104

62:                                               ; preds = %46
  %63 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %64 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp uge i64 %66, 4294967296
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = load i32, i32* @TCA_TBF_RATE64, align 4
  %71 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %72 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @TCA_TBF_PAD, align 4
  %76 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %69, i32 %70, i64 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %104

79:                                               ; preds = %68, %62
  %80 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %81 = call i64 @tbf_peak_present(%struct.tbf_sched_data* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %79
  %84 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %85 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp uge i64 %87, 4294967296
  br i1 %88, label %89, label %100

89:                                               ; preds = %83
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = load i32, i32* @TCA_TBF_PRATE64, align 4
  %92 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %93 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @TCA_TBF_PAD, align 4
  %97 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %90, i32 %91, i64 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %104

100:                                              ; preds = %89, %83, %79
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %103 = call i32 @nla_nest_end(%struct.sk_buff* %101, %struct.nlattr* %102)
  store i32 %103, i32* %3, align 4
  br label %108

104:                                              ; preds = %99, %78, %61, %25
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %107 = call i32 @nla_nest_cancel(%struct.sk_buff* %105, %struct.nlattr* %106)
  store i32 -1, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %100
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.tbf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @psched_ratecfg_getrate(i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @tbf_peak_present(%struct.tbf_sched_data*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @PSCHED_NS2TICKS(i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_tbf_qopt*) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
