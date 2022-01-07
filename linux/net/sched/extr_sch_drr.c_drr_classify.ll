; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_drr.c_drr_classify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_drr.c_drr_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drr_class = type { i32 }
%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32 }
%struct.drr_sched = type { i32 }
%struct.tcf_result = type { i32, i64 }
%struct.tcf_proto = type { i32 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@__NET_XMIT_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drr_class* (%struct.sk_buff*, %struct.Qdisc*, i32*)* @drr_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drr_class* @drr_classify(%struct.sk_buff* %0, %struct.Qdisc* %1, i32* %2) #0 {
  %4 = alloca %struct.drr_class*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.drr_sched*, align 8
  %9 = alloca %struct.drr_class*, align 8
  %10 = alloca %struct.tcf_result, align 8
  %11 = alloca %struct.tcf_proto*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %14 = call %struct.drr_sched* @qdisc_priv(%struct.Qdisc* %13)
  store %struct.drr_sched* %14, %struct.drr_sched** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %19 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %17, %20
  %22 = call i64 @TC_H_MAJ(i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.drr_class* @drr_find_class(%struct.Qdisc* %25, i32 %28)
  store %struct.drr_class* %29, %struct.drr_class** %9, align 8
  %30 = load %struct.drr_class*, %struct.drr_class** %9, align 8
  %31 = icmp ne %struct.drr_class* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load %struct.drr_class*, %struct.drr_class** %9, align 8
  store %struct.drr_class* %33, %struct.drr_class** %4, align 8
  br label %63

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %37 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %38 = or i32 %36, %37
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.drr_sched*, %struct.drr_sched** %8, align 8
  %41 = getelementptr inbounds %struct.drr_sched, %struct.drr_sched* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.tcf_proto* @rcu_dereference_bh(i32 %42)
  store %struct.tcf_proto* %43, %struct.tcf_proto** %11, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %46 = call i32 @tcf_classify(%struct.sk_buff* %44, %struct.tcf_proto* %45, %struct.tcf_result* %10, i32 0)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %10, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.drr_class*
  store %struct.drr_class* %52, %struct.drr_class** %9, align 8
  %53 = load %struct.drr_class*, %struct.drr_class** %9, align 8
  %54 = icmp eq %struct.drr_class* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %57 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %10, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.drr_class* @drr_find_class(%struct.Qdisc* %56, i32 %58)
  store %struct.drr_class* %59, %struct.drr_class** %9, align 8
  br label %60

60:                                               ; preds = %55, %49
  %61 = load %struct.drr_class*, %struct.drr_class** %9, align 8
  store %struct.drr_class* %61, %struct.drr_class** %4, align 8
  br label %63

62:                                               ; preds = %35
  store %struct.drr_class* null, %struct.drr_class** %4, align 8
  br label %63

63:                                               ; preds = %62, %60, %32
  %64 = load %struct.drr_class*, %struct.drr_class** %4, align 8
  ret %struct.drr_class* %64
}

declare dso_local %struct.drr_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @TC_H_MAJ(i32) #1

declare dso_local %struct.drr_class* @drr_find_class(%struct.Qdisc*, i32) #1

declare dso_local %struct.tcf_proto* @rcu_dereference_bh(i32) #1

declare dso_local i32 @tcf_classify(%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
