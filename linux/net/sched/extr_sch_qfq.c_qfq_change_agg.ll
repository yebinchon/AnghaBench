; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_change_agg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_change_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.qfq_class = type { i32 }
%struct.qfq_sched = type { i32 }
%struct.qfq_aggregate = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.qfq_class*, i32, i32)* @qfq_change_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfq_change_agg(%struct.Qdisc* %0, %struct.qfq_class* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.qfq_class*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qfq_sched*, align 8
  %11 = alloca %struct.qfq_aggregate*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store %struct.qfq_class* %1, %struct.qfq_class** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %13 = call %struct.qfq_sched* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.qfq_sched* %13, %struct.qfq_sched** %10, align 8
  %14 = load %struct.qfq_sched*, %struct.qfq_sched** %10, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.qfq_aggregate* @qfq_find_agg(%struct.qfq_sched* %14, i32 %15, i32 %16)
  store %struct.qfq_aggregate* %17, %struct.qfq_aggregate** %11, align 8
  %18 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %11, align 8
  %19 = icmp eq %struct.qfq_aggregate* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %4
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.qfq_aggregate* @kzalloc(i32 4, i32 %21)
  store %struct.qfq_aggregate* %22, %struct.qfq_aggregate** %11, align 8
  %23 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %11, align 8
  %24 = icmp eq %struct.qfq_aggregate* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOBUFS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %42

28:                                               ; preds = %20
  %29 = load %struct.qfq_sched*, %struct.qfq_sched** %10, align 8
  %30 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %11, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @qfq_init_agg(%struct.qfq_sched* %29, %struct.qfq_aggregate* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %4
  %35 = load %struct.qfq_sched*, %struct.qfq_sched** %10, align 8
  %36 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %37 = call i32 @qfq_deact_rm_from_agg(%struct.qfq_sched* %35, %struct.qfq_class* %36)
  %38 = load %struct.qfq_sched*, %struct.qfq_sched** %10, align 8
  %39 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %11, align 8
  %40 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %41 = call i32 @qfq_add_to_agg(%struct.qfq_sched* %38, %struct.qfq_aggregate* %39, %struct.qfq_class* %40)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %34, %25
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.qfq_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.qfq_aggregate* @qfq_find_agg(%struct.qfq_sched*, i32, i32) #1

declare dso_local %struct.qfq_aggregate* @kzalloc(i32, i32) #1

declare dso_local i32 @qfq_init_agg(%struct.qfq_sched*, %struct.qfq_aggregate*, i32, i32) #1

declare dso_local i32 @qfq_deact_rm_from_agg(%struct.qfq_sched*, %struct.qfq_class*) #1

declare dso_local i32 @qfq_add_to_agg(%struct.qfq_sched*, %struct.qfq_aggregate*, %struct.qfq_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
