; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v.c_batadv_v_hardif_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v.c_batadv_v_hardif_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i32 }

@batadv_v_ogm_aggr_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_v_hardif_init(%struct.batadv_hard_iface* %0) #0 {
  %2 = alloca %struct.batadv_hard_iface*, align 8
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %2, align 8
  %3 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %4 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 5
  %6 = call i32 @atomic_set(i32* %5, i32 0)
  %7 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %8 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 4
  %10 = call i32 @atomic_set(i32* %9, i32 500)
  %11 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %12 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %15 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = call i32 @skb_queue_head_init(i32* %16)
  %18 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %19 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %23 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* @batadv_v_ogm_aggr_work, align 4
  %26 = call i32 @INIT_DELAYED_WORK(i32* %24, i32 %25)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
