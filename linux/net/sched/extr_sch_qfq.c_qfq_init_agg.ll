; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_init_agg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_init_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_sched = type { i32 }
%struct.qfq_aggregate = type { i8*, i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_sched*, %struct.qfq_aggregate*, i8*, i8*)* @qfq_init_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_init_agg(%struct.qfq_sched* %0, %struct.qfq_aggregate* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.qfq_sched*, align 8
  %6 = alloca %struct.qfq_aggregate*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.qfq_sched* %0, %struct.qfq_sched** %5, align 8
  store %struct.qfq_aggregate* %1, %struct.qfq_aggregate** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %6, align 8
  %10 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %9, i32 0, i32 3
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %6, align 8
  %13 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %12, i32 0, i32 2
  %14 = load %struct.qfq_sched*, %struct.qfq_sched** %5, align 8
  %15 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %14, i32 0, i32 0
  %16 = call i32 @hlist_add_head(i32* %13, i32* %15)
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %6, align 8
  %19 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %6, align 8
  %22 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
