; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_start_queue_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_start_queue_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BATADV_MAX_AGGREGATION_MS = common dso_local global i32 0, align 4
@batadv_event_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_hard_iface*)* @batadv_v_ogm_start_queue_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_v_ogm_start_queue_timer(%struct.batadv_hard_iface* %0) #0 {
  %2 = alloca %struct.batadv_hard_iface*, align 8
  %3 = alloca i32, align 4
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %2, align 8
  %4 = load i32, i32* @BATADV_MAX_AGGREGATION_MS, align 4
  %5 = mul nsw i32 %4, 1000
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @prandom_u32()
  %7 = load i32, i32* %3, align 4
  %8 = udiv i32 %7, 5
  %9 = urem i32 %6, %8
  %10 = load i32, i32* %3, align 4
  %11 = udiv i32 %10, 10
  %12 = sub i32 %9, %11
  %13 = load i32, i32* %3, align 4
  %14 = add i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @batadv_event_workqueue, align 4
  %16 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %17 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %3, align 4
  %20 = udiv i32 %19, 1000
  %21 = call i32 @msecs_to_jiffies(i32 %20)
  %22 = call i32 @queue_delayed_work(i32 %15, i32* %18, i32 %21)
  ret void
}

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
