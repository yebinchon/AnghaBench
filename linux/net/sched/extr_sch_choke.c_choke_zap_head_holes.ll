; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_zap_head_holes.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_zap_head_holes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.choke_sched_data = type { i64, i32, i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.choke_sched_data*)* @choke_zap_head_holes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @choke_zap_head_holes(%struct.choke_sched_data* %0) #0 {
  %2 = alloca %struct.choke_sched_data*, align 8
  store %struct.choke_sched_data* %0, %struct.choke_sched_data** %2, align 8
  br label %3

3:                                                ; preds = %25, %1
  %4 = load %struct.choke_sched_data*, %struct.choke_sched_data** %2, align 8
  %5 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 1
  %8 = load %struct.choke_sched_data*, %struct.choke_sched_data** %2, align 8
  %9 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = and i64 %7, %11
  %13 = load %struct.choke_sched_data*, %struct.choke_sched_data** %2, align 8
  %14 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.choke_sched_data*, %struct.choke_sched_data** %2, align 8
  %16 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.choke_sched_data*, %struct.choke_sched_data** %2, align 8
  %19 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp eq i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %35

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.choke_sched_data*, %struct.choke_sched_data** %2, align 8
  %27 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %26, i32 0, i32 3
  %28 = load i32**, i32*** %27, align 8
  %29 = load %struct.choke_sched_data*, %struct.choke_sched_data** %2, align 8
  %30 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32*, i32** %28, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %3, label %35

35:                                               ; preds = %25, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
