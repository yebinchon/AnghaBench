; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbs.c_cbs_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbs.c_cbs_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cbs_sched_data = type { i32, i32, i32, i32, i32 }
%struct.tc_cbs_qopt = type { i32, i8*, i8*, i32, i32 }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@BYTES_PER_KBIT = common dso_local global i32 0, align 4
@TCA_CBS_PARMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @cbs_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cbs_sched_data*, align 8
  %7 = alloca %struct.tc_cbs_qopt, align 8
  %8 = alloca %struct.nlattr*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.cbs_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.cbs_sched_data* %10, %struct.cbs_sched_data** %6, align 8
  %11 = bitcast %struct.tc_cbs_qopt* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load i32, i32* @TCA_OPTIONS, align 4
  %14 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %12, i32 %13)
  store %struct.nlattr* %14, %struct.nlattr** %8, align 8
  %15 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %52

18:                                               ; preds = %2
  %19 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %6, align 8
  %20 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.tc_cbs_qopt, %struct.tc_cbs_qopt* %7, i32 0, i32 4
  store i32 %21, i32* %22, align 4
  %23 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %6, align 8
  %24 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.tc_cbs_qopt, %struct.tc_cbs_qopt* %7, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %6, align 8
  %28 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BYTES_PER_KBIT, align 4
  %31 = call i8* @div64_s64(i32 %29, i32 %30)
  %32 = getelementptr inbounds %struct.tc_cbs_qopt, %struct.tc_cbs_qopt* %7, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %6, align 8
  %34 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BYTES_PER_KBIT, align 4
  %37 = call i8* @div64_s64(i32 %35, i32 %36)
  %38 = getelementptr inbounds %struct.tc_cbs_qopt, %struct.tc_cbs_qopt* %7, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %6, align 8
  %40 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.tc_cbs_qopt, %struct.tc_cbs_qopt* %7, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load i32, i32* @TCA_CBS_PARMS, align 4
  %45 = call i64 @nla_put(%struct.sk_buff* %43, i32 %44, i32 32, %struct.tc_cbs_qopt* %7)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %18
  br label %52

48:                                               ; preds = %18
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %51 = call i32 @nla_nest_end(%struct.sk_buff* %49, %struct.nlattr* %50)
  store i32 %51, i32* %3, align 4
  br label %56

52:                                               ; preds = %47, %17
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %55 = call i32 @nla_nest_cancel(%struct.sk_buff* %53, %struct.nlattr* %54)
  store i32 -1, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.cbs_sched_data* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i8* @div64_s64(i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_cbs_qopt*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
