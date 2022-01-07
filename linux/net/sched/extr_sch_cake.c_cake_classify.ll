; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_classify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.cake_tin_data = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cake_sched_data = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.tcf_result = type { i32 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@CAKE_QUEUES = common dso_local global i32 0, align 4
@__NET_XMIT_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.Qdisc*, %struct.cake_tin_data**, %struct.sk_buff*, i32, i32*)* @cake_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cake_classify(%struct.Qdisc* %0, %struct.cake_tin_data** %1, %struct.sk_buff* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.cake_tin_data**, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.cake_sched_data*, align 8
  %12 = alloca %struct.tcf_proto*, align 8
  %13 = alloca %struct.tcf_result, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store %struct.cake_tin_data** %1, %struct.cake_tin_data*** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %18 = call %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc* %17)
  store %struct.cake_sched_data* %18, %struct.cake_sched_data** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.cake_sched_data*, %struct.cake_sched_data** %11, align 8
  %20 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.tcf_proto* @rcu_dereference_bh(i32 %21)
  store %struct.tcf_proto* %22, %struct.tcf_proto** %12, align 8
  %23 = load %struct.tcf_proto*, %struct.tcf_proto** %12, align 8
  %24 = icmp ne %struct.tcf_proto* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  br label %60

26:                                               ; preds = %5
  %27 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %28 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %29 = or i32 %27, %28
  %30 = load i32*, i32** %10, align 8
  store i32 %29, i32* %30, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = load %struct.tcf_proto*, %struct.tcf_proto** %12, align 8
  %33 = call i32 @tcf_classify(%struct.sk_buff* %31, %struct.tcf_proto* %32, %struct.tcf_result* %13, i32 0)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %13, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @TC_H_MIN(i32 %38)
  %40 = load i32, i32* @CAKE_QUEUES, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %13, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @TC_H_MIN(i32 %44)
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %42, %36
  %47 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %13, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @TC_H_MAJ(i32 %48)
  %50 = load i32, i32* @CAKE_QUEUES, align 4
  %51 = shl i32 %50, 16
  %52 = icmp sle i32 %49, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %13, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @TC_H_MAJ(i32 %55)
  %57 = ashr i32 %56, 16
  store i32 %57, i32* %15, align 4
  br label %58

58:                                               ; preds = %53, %46
  br label %59

59:                                               ; preds = %58, %26
  br label %60

60:                                               ; preds = %59, %25
  %61 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = call %struct.cake_tin_data* @cake_select_tin(%struct.Qdisc* %61, %struct.sk_buff* %62)
  %64 = load %struct.cake_tin_data**, %struct.cake_tin_data*** %7, align 8
  store %struct.cake_tin_data* %63, %struct.cake_tin_data** %64, align 8
  %65 = load %struct.cake_tin_data**, %struct.cake_tin_data*** %7, align 8
  %66 = load %struct.cake_tin_data*, %struct.cake_tin_data** %65, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i64 @cake_hash(%struct.cake_tin_data* %66, %struct.sk_buff* %67, i32 %68, i32 %69, i32 %70)
  %72 = add nsw i64 %71, 1
  ret i64 %72
}

declare dso_local %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.tcf_proto* @rcu_dereference_bh(i32) #1

declare dso_local i32 @tcf_classify(%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*, i32) #1

declare dso_local i32 @TC_H_MIN(i32) #1

declare dso_local i32 @TC_H_MAJ(i32) #1

declare dso_local %struct.cake_tin_data* @cake_select_tin(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i64 @cake_hash(%struct.cake_tin_data*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
