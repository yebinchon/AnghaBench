; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_dequeue_1.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_dequeue_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32 }
%struct.cbq_sched_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @cbq_dequeue_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @cbq_dequeue_1(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.cbq_sched_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %9 = call %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.cbq_sched_data* %9, %struct.cbq_sched_data** %4, align 8
  %10 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %4, align 8
  %11 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 255
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %33, %1
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = xor i32 %18, -1
  %20 = call i32 @ffz(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 1, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.sk_buff* @cbq_dequeue_prio(%struct.Qdisc* %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %32, %struct.sk_buff** %2, align 8
  br label %35

33:                                               ; preds = %17
  br label %14

34:                                               ; preds = %14
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %35

35:                                               ; preds = %34, %31
  %36 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %36
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @ffz(i32) #1

declare dso_local %struct.sk_buff* @cbq_dequeue_prio(%struct.Qdisc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
