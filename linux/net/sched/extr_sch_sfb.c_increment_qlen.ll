; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfb.c_increment_qlen.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfb.c_increment_qlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sfb_sched_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.sfb_sched_data*)* @increment_qlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @increment_qlen(%struct.sk_buff* %0, %struct.sfb_sched_data* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sfb_sched_data*, align 8
  %5 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.sfb_sched_data* %1, %struct.sfb_sched_data** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call i64 @sfb_hash(%struct.sk_buff* %6, i32 0)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %4, align 8
  %13 = call i32 @increment_one_qlen(i64 %11, i32 0, %struct.sfb_sched_data* %12)
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call i64 @sfb_hash(%struct.sk_buff* %15, i32 1)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %4, align 8
  %22 = call i32 @increment_one_qlen(i64 %20, i32 1, %struct.sfb_sched_data* %21)
  br label %23

23:                                               ; preds = %19, %14
  ret void
}

declare dso_local i64 @sfb_hash(%struct.sk_buff*, i32) #1

declare dso_local i32 @increment_one_qlen(i64, i32, %struct.sfb_sched_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
