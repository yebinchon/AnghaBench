; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_classify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_class = type { i32 }
%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32 }
%struct.qfq_sched = type { i32 }
%struct.tcf_result = type { i32, i64 }
%struct.tcf_proto = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"qfq_classify: found %d\0A\00", align 1
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@__NET_XMIT_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qfq_class* (%struct.sk_buff*, %struct.Qdisc*, i32*)* @qfq_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qfq_class* @qfq_classify(%struct.sk_buff* %0, %struct.Qdisc* %1, i32* %2) #0 {
  %4 = alloca %struct.qfq_class*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.qfq_sched*, align 8
  %9 = alloca %struct.qfq_class*, align 8
  %10 = alloca %struct.tcf_result, align 8
  %11 = alloca %struct.tcf_proto*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %14 = call %struct.qfq_sched* @qdisc_priv(%struct.Qdisc* %13)
  store %struct.qfq_sched* %14, %struct.qfq_sched** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %19 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %17, %20
  %22 = call i64 @TC_H_MAJ(i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.qfq_class* @qfq_find_class(%struct.Qdisc* %29, i32 %32)
  store %struct.qfq_class* %33, %struct.qfq_class** %9, align 8
  %34 = load %struct.qfq_class*, %struct.qfq_class** %9, align 8
  %35 = icmp ne %struct.qfq_class* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load %struct.qfq_class*, %struct.qfq_class** %9, align 8
  store %struct.qfq_class* %37, %struct.qfq_class** %4, align 8
  br label %67

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %3
  %40 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %41 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %42 = or i32 %40, %41
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.qfq_sched*, %struct.qfq_sched** %8, align 8
  %45 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.tcf_proto* @rcu_dereference_bh(i32 %46)
  store %struct.tcf_proto* %47, %struct.tcf_proto** %11, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %50 = call i32 @tcf_classify(%struct.sk_buff* %48, %struct.tcf_proto* %49, %struct.tcf_result* %10, i32 0)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %39
  %54 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %10, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.qfq_class*
  store %struct.qfq_class* %56, %struct.qfq_class** %9, align 8
  %57 = load %struct.qfq_class*, %struct.qfq_class** %9, align 8
  %58 = icmp eq %struct.qfq_class* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %61 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %10, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.qfq_class* @qfq_find_class(%struct.Qdisc* %60, i32 %62)
  store %struct.qfq_class* %63, %struct.qfq_class** %9, align 8
  br label %64

64:                                               ; preds = %59, %53
  %65 = load %struct.qfq_class*, %struct.qfq_class** %9, align 8
  store %struct.qfq_class* %65, %struct.qfq_class** %4, align 8
  br label %67

66:                                               ; preds = %39
  store %struct.qfq_class* null, %struct.qfq_class** %4, align 8
  br label %67

67:                                               ; preds = %66, %64, %36
  %68 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  ret %struct.qfq_class* %68
}

declare dso_local %struct.qfq_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @TC_H_MAJ(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.qfq_class* @qfq_find_class(%struct.Qdisc*, i32) #1

declare dso_local %struct.tcf_proto* @rcu_dereference_bh(i32) #1

declare dso_local i32 @tcf_classify(%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
