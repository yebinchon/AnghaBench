; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_queue_on_if.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_queue_on_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.batadv_hard_iface = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.batadv_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.batadv_hard_iface*)* @batadv_v_ogm_queue_on_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_v_ogm_queue_on_if(%struct.sk_buff* %0, %struct.batadv_hard_iface* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca %struct.batadv_priv*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %4, align 8
  %6 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %7 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.batadv_priv* @netdev_priv(i32 %8)
  store %struct.batadv_priv* %9, %struct.batadv_priv** %5, align 8
  %10 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %11 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %10, i32 0, i32 0
  %12 = call i32 @atomic_read(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %17 = call i32 @batadv_v_ogm_send_to_if(%struct.sk_buff* %15, %struct.batadv_hard_iface* %16)
  br label %49

18:                                               ; preds = %2
  %19 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %20 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %25 = call i32 @batadv_v_ogm_queue_left(%struct.sk_buff* %23, %struct.batadv_hard_iface* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %29 = call i32 @batadv_v_ogm_aggr_send(%struct.batadv_hard_iface* %28)
  br label %30

30:                                               ; preds = %27, %18
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = call i64 @batadv_v_ogm_len(%struct.sk_buff* %31)
  %33 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %34 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %32
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  %40 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %41 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = call i32 @skb_queue_tail(i32* %42, %struct.sk_buff* %43)
  %45 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %46 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_bh(i32* %47)
  br label %49

49:                                               ; preds = %30, %14
  ret void
}

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @batadv_v_ogm_send_to_if(%struct.sk_buff*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @batadv_v_ogm_queue_left(%struct.sk_buff*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_v_ogm_aggr_send(%struct.batadv_hard_iface*) #1

declare dso_local i64 @batadv_v_ogm_len(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
