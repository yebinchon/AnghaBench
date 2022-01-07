; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_peek.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32 }
%struct.taprio_sched = type { %struct.sk_buff* (%struct.Qdisc.0*)* }
%struct.Qdisc.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @taprio_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @taprio_peek(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.taprio_sched*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %4 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %5 = call %struct.taprio_sched* @qdisc_priv(%struct.Qdisc* %4)
  store %struct.taprio_sched* %5, %struct.taprio_sched** %3, align 8
  %6 = load %struct.taprio_sched*, %struct.taprio_sched** %3, align 8
  %7 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %6, i32 0, i32 0
  %8 = load %struct.sk_buff* (%struct.Qdisc.0*)*, %struct.sk_buff* (%struct.Qdisc.0*)** %7, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %10 = bitcast %struct.Qdisc* %9 to %struct.Qdisc.0*
  %11 = call %struct.sk_buff* %8(%struct.Qdisc.0* %10)
  ret %struct.sk_buff* %11
}

declare dso_local %struct.taprio_sched* @qdisc_priv(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
