; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_codel.c_dequeue_func.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_codel.c_dequeue_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.codel_vars = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.codel_vars*, i8*)* @dequeue_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @dequeue_func(%struct.codel_vars* %0, i8* %1) #0 {
  %3 = alloca %struct.codel_vars*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.codel_vars* %0, %struct.codel_vars** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.Qdisc*
  store %struct.Qdisc* %8, %struct.Qdisc** %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %10 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %9, i32 0, i32 1
  %11 = call %struct.sk_buff* @__qdisc_dequeue_head(i32* %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i64 @qdisc_pkt_len(%struct.sk_buff* %15)
  %17 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %18 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = sub nsw i64 %21, %16
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = call i32 @prefetch(i32* %25)
  br label %27

27:                                               ; preds = %14, %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %28
}

declare dso_local %struct.sk_buff* @__qdisc_dequeue_head(i32*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @prefetch(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
