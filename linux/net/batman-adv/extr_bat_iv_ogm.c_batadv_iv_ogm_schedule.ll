; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BATADV_IF_NOT_IN_USE = common dso_local global i64 0, align 8
@BATADV_IF_TO_BE_REMOVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_hard_iface*)* @batadv_iv_ogm_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_iv_ogm_schedule(%struct.batadv_hard_iface* %0) #0 {
  %2 = alloca %struct.batadv_hard_iface*, align 8
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %2, align 8
  %3 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %4 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BATADV_IF_NOT_IN_USE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %10 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BATADV_IF_TO_BE_REMOVED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %1
  br label %26

15:                                               ; preds = %8
  %16 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %17 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %21 = call i32 @batadv_iv_ogm_schedule_buff(%struct.batadv_hard_iface* %20)
  %22 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %23 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  br label %26

26:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @batadv_iv_ogm_schedule_buff(%struct.batadv_hard_iface*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
