; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_red.c_red_dump_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_red.c_red_dump_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32, i32 }
%struct.red_sched_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)* @red_dump_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @red_dump_class(%struct.Qdisc* %0, i64 %1, %struct.sk_buff* %2, %struct.tcmsg* %3) #0 {
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tcmsg*, align 8
  %9 = alloca %struct.red_sched_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.tcmsg* %3, %struct.tcmsg** %8, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %11 = call %struct.red_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.red_sched_data* %11, %struct.red_sched_data** %9, align 8
  %12 = call i32 @TC_H_MIN(i32 1)
  %13 = load %struct.tcmsg*, %struct.tcmsg** %8, align 8
  %14 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.red_sched_data*, %struct.red_sched_data** %9, align 8
  %18 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tcmsg*, %struct.tcmsg** %8, align 8
  %23 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  ret i32 0
}

declare dso_local %struct.red_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @TC_H_MIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
