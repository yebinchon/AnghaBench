; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_start_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_start_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@BATADV_JITTER = common dso_local global i32 0, align 4
@batadv_event_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*)* @batadv_v_ogm_start_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_v_ogm_start_timer(%struct.batadv_priv* %0) #0 {
  %2 = alloca %struct.batadv_priv*, align 8
  %3 = alloca i64, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %2, align 8
  %4 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %5 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i64 @delayed_work_pending(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %12 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %11, i32 0, i32 1
  %13 = call i64 @atomic_read(i32* %12)
  %14 = load i32, i32* @BATADV_JITTER, align 4
  %15 = sext i32 %14 to i64
  %16 = sub i64 %13, %15
  store i64 %16, i64* %3, align 8
  %17 = call i32 (...) @prandom_u32()
  %18 = load i32, i32* @BATADV_JITTER, align 4
  %19 = mul nsw i32 2, %18
  %20 = srem i32 %17, %19
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %3, align 8
  %24 = load i32, i32* @batadv_event_workqueue, align 4
  %25 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %26 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @msecs_to_jiffies(i64 %28)
  %30 = call i32 @queue_delayed_work(i32 %24, i32* %27, i32 %29)
  br label %31

31:                                               ; preds = %10, %9
  ret void
}

declare dso_local i64 @delayed_work_pending(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
