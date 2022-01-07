; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_sfq_classify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_sfq_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i64 }
%struct.sfq_sched_data = type { i64, i32 }
%struct.tcf_result = type { i32 }
%struct.tcf_proto = type { i32 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@__NET_XMIT_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, i32*)* @sfq_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfq_classify(%struct.sk_buff* %0, %struct.Qdisc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sfq_sched_data*, align 8
  %9 = alloca %struct.tcf_result, align 4
  %10 = alloca %struct.tcf_proto*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %13 = call %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.sfq_sched_data* %13, %struct.sfq_sched_data** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @TC_H_MAJ(i32 %16)
  %18 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %19 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @TC_H_MIN(i32 %25)
  %27 = icmp ugt i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @TC_H_MIN(i32 %31)
  %33 = zext i32 %32 to i64
  %34 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %35 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sle i64 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @TC_H_MIN(i32 %41)
  store i32 %42, i32* %4, align 4
  br label %80

43:                                               ; preds = %28, %22, %3
  %44 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %45 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.tcf_proto* @rcu_dereference_bh(i32 %46)
  store %struct.tcf_proto* %47, %struct.tcf_proto** %10, align 8
  %48 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %49 = icmp ne %struct.tcf_proto* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  %51 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call i32 @sfq_hash(%struct.sfq_sched_data* %51, %struct.sk_buff* %52)
  %54 = add i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %80

55:                                               ; preds = %43
  %56 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %57 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %58 = or i32 %56, %57
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %62 = call i32 @tcf_classify(%struct.sk_buff* %60, %struct.tcf_proto* %61, %struct.tcf_result* %9, i32 0)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %9, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @TC_H_MIN(i32 %67)
  %69 = zext i32 %68 to i64
  %70 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %71 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sle i64 %69, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %9, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @TC_H_MIN(i32 %76)
  store i32 %77, i32* %4, align 4
  br label %80

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %55
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %74, %50, %38
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @TC_H_MAJ(i32) #1

declare dso_local i32 @TC_H_MIN(i32) #1

declare dso_local %struct.tcf_proto* @rcu_dereference_bh(i32) #1

declare dso_local i32 @sfq_hash(%struct.sfq_sched_data*, %struct.sk_buff*) #1

declare dso_local i32 @tcf_classify(%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
