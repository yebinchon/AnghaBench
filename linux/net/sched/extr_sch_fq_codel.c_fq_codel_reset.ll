; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_fq_codel.c_fq_codel_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_fq_codel.c_fq_codel_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.fq_codel_sched_data = type { i32, i64, i32, %struct.fq_codel_flow*, i32, i32 }
%struct.fq_codel_flow = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @fq_codel_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fq_codel_reset(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.fq_codel_sched_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fq_codel_flow*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %7 = call %struct.fq_codel_sched_data* @qdisc_priv(%struct.Qdisc* %6)
  store %struct.fq_codel_sched_data* %7, %struct.fq_codel_sched_data** %3, align 8
  %8 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %3, align 8
  %9 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %8, i32 0, i32 5
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %3, align 8
  %12 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %11, i32 0, i32 4
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %35, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %3, align 8
  %17 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %3, align 8
  %22 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %21, i32 0, i32 3
  %23 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.fq_codel_flow, %struct.fq_codel_flow* %23, i64 %25
  store %struct.fq_codel_flow* %26, %struct.fq_codel_flow** %5, align 8
  %27 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %5, align 8
  %28 = call i32 @fq_codel_flow_purge(%struct.fq_codel_flow* %27)
  %29 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %5, align 8
  %30 = getelementptr inbounds %struct.fq_codel_flow, %struct.fq_codel_flow* %29, i32 0, i32 1
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %5, align 8
  %33 = getelementptr inbounds %struct.fq_codel_flow, %struct.fq_codel_flow* %32, i32 0, i32 0
  %34 = call i32 @codel_vars_init(i32* %33)
  br label %35

35:                                               ; preds = %20
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %14

38:                                               ; preds = %14
  %39 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %3, align 8
  %40 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %3, align 8
  %43 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memset(i32 %41, i32 0, i32 %47)
  %49 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %50 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %53 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %3, align 8
  %56 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  ret void
}

declare dso_local %struct.fq_codel_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @fq_codel_flow_purge(%struct.fq_codel_flow*) #1

declare dso_local i32 @codel_vars_init(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
