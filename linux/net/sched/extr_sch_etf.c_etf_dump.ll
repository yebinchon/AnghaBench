; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_etf_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_etf_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.etf_sched_data = type { i64, i64, i64, i32, i32 }
%struct.tc_etf_qopt = type { i32, i32, i32 }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TC_ETF_OFFLOAD_ON = common dso_local global i32 0, align 4
@TC_ETF_DEADLINE_MODE_ON = common dso_local global i32 0, align 4
@TC_ETF_SKIP_SOCK_CHECK = common dso_local global i32 0, align 4
@TCA_ETF_PARMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @etf_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etf_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.etf_sched_data*, align 8
  %7 = alloca %struct.tc_etf_qopt, align 4
  %8 = alloca %struct.nlattr*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.etf_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.etf_sched_data* %10, %struct.etf_sched_data** %6, align 8
  %11 = bitcast %struct.tc_etf_qopt* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 12, i1 false)
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load i32, i32* @TCA_OPTIONS, align 4
  %14 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %12, i32 %13)
  store %struct.nlattr* %14, %struct.nlattr** %8, align 8
  %15 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %66

18:                                               ; preds = %2
  %19 = load %struct.etf_sched_data*, %struct.etf_sched_data** %6, align 8
  %20 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.tc_etf_qopt, %struct.tc_etf_qopt* %7, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load %struct.etf_sched_data*, %struct.etf_sched_data** %6, align 8
  %24 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.tc_etf_qopt, %struct.tc_etf_qopt* %7, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.etf_sched_data*, %struct.etf_sched_data** %6, align 8
  %28 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %18
  %32 = load i32, i32* @TC_ETF_OFFLOAD_ON, align 4
  %33 = getelementptr inbounds %struct.tc_etf_qopt, %struct.tc_etf_qopt* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %31, %18
  %37 = load %struct.etf_sched_data*, %struct.etf_sched_data** %6, align 8
  %38 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* @TC_ETF_DEADLINE_MODE_ON, align 4
  %43 = getelementptr inbounds %struct.tc_etf_qopt, %struct.tc_etf_qopt* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.etf_sched_data*, %struct.etf_sched_data** %6, align 8
  %48 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, i32* @TC_ETF_SKIP_SOCK_CHECK, align 4
  %53 = getelementptr inbounds %struct.tc_etf_qopt, %struct.tc_etf_qopt* %7, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = load i32, i32* @TCA_ETF_PARMS, align 4
  %59 = call i64 @nla_put(%struct.sk_buff* %57, i32 %58, i32 12, %struct.tc_etf_qopt* %7)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %66

62:                                               ; preds = %56
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %65 = call i32 @nla_nest_end(%struct.sk_buff* %63, %struct.nlattr* %64)
  store i32 %65, i32* %3, align 4
  br label %70

66:                                               ; preds = %61, %17
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %69 = call i32 @nla_nest_cancel(%struct.sk_buff* %67, %struct.nlattr* %68)
  store i32 -1, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.etf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_etf_qopt*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
