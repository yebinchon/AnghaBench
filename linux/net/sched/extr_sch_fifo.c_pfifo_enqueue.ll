; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_fifo.c_pfifo_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_fifo.c_pfifo_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @pfifo_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfifo_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %9 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %13 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %22 = call i32 @qdisc_enqueue_tail(%struct.sk_buff* %20, %struct.Qdisc* %21)
  store i32 %22, i32* %4, align 4
  br label %28

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %26 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %27 = call i32 @qdisc_drop(%struct.sk_buff* %24, %struct.Qdisc* %25, %struct.sk_buff** %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %23, %19
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @qdisc_enqueue_tail(%struct.sk_buff*, %struct.Qdisc*) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
