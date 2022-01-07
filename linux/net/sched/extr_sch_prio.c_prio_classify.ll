; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_prio.c_prio_classify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_prio.c_prio_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.Qdisc = type { i64 }
%struct.prio_sched_data = type { i64*, i64, %struct.Qdisc**, i32 }
%struct.tcf_result = type { i64 }
%struct.tcf_proto = type { i32 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@TC_PRIO_MAX = common dso_local global i64 0, align 8
@__NET_XMIT_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Qdisc* (%struct.sk_buff*, %struct.Qdisc*, i32*)* @prio_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Qdisc* @prio_classify(%struct.sk_buff* %0, %struct.Qdisc* %1, i32* %2) #0 {
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.prio_sched_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tcf_result, align 8
  %11 = alloca %struct.tcf_proto*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %14 = call %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc* %13)
  store %struct.prio_sched_data* %14, %struct.prio_sched_data** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %19 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %20 = or i32 %18, %19
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @TC_H_MAJ(i64 %24)
  %26 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %27 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %3
  %31 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %32 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.tcf_proto* @rcu_dereference_bh(i32 %33)
  store %struct.tcf_proto* %34, %struct.tcf_proto** %11, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %37 = call i32 @tcf_classify(%struct.sk_buff* %35, %struct.tcf_proto* %36, %struct.tcf_result* %10, i32 0)
  store i32 %37, i32* %12, align 4
  %38 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %39 = icmp ne %struct.tcf_proto* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %40, %30
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @TC_H_MAJ(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i64 0, i64* %9, align 8
  br label %48

48:                                               ; preds = %47, %43
  %49 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %50 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %49, i32 0, i32 2
  %51 = load %struct.Qdisc**, %struct.Qdisc*** %50, align 8
  %52 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %53 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @TC_PRIO_MAX, align 8
  %57 = and i64 %55, %56
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %51, i64 %59
  %61 = load %struct.Qdisc*, %struct.Qdisc** %60, align 8
  store %struct.Qdisc* %61, %struct.Qdisc** %4, align 8
  br label %93

62:                                               ; preds = %40
  %63 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %10, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %62, %3
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @TC_H_MIN(i64 %66)
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %72 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp uge i64 %70, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %65
  %76 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %77 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %76, i32 0, i32 2
  %78 = load %struct.Qdisc**, %struct.Qdisc*** %77, align 8
  %79 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %80 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %78, i64 %83
  %85 = load %struct.Qdisc*, %struct.Qdisc** %84, align 8
  store %struct.Qdisc* %85, %struct.Qdisc** %4, align 8
  br label %93

86:                                               ; preds = %65
  %87 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %88 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %87, i32 0, i32 2
  %89 = load %struct.Qdisc**, %struct.Qdisc*** %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %89, i64 %90
  %92 = load %struct.Qdisc*, %struct.Qdisc** %91, align 8
  store %struct.Qdisc* %92, %struct.Qdisc** %4, align 8
  br label %93

93:                                               ; preds = %86, %75, %48
  %94 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  ret %struct.Qdisc* %94
}

declare dso_local %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @TC_H_MAJ(i64) #1

declare dso_local %struct.tcf_proto* @rcu_dereference_bh(i32) #1

declare dso_local i32 @tcf_classify(%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*, i32) #1

declare dso_local i32 @TC_H_MIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
