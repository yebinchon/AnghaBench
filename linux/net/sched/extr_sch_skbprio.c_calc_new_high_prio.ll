; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_skbprio.c_calc_new_high_prio.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_skbprio.c_calc_new_high_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skbprio_sched_data = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skbprio_sched_data*)* @calc_new_high_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_new_high_prio(%struct.skbprio_sched_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skbprio_sched_data*, align 8
  %4 = alloca i32, align 4
  store %struct.skbprio_sched_data* %0, %struct.skbprio_sched_data** %3, align 8
  %5 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %3, align 8
  %6 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %3, align 8
  %12 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %10, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %9
  %16 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %3, align 8
  %17 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @skb_queue_empty(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %31

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %4, align 4
  br label %9

30:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @skb_queue_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
