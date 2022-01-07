; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v.c_batadv_v_iface_update_mac.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v.c_batadv_v_iface_update_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { i32 }
%struct.batadv_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_hard_iface*)* @batadv_v_iface_update_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_v_iface_update_mac(%struct.batadv_hard_iface* %0) #0 {
  %2 = alloca %struct.batadv_hard_iface*, align 8
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %2, align 8
  %5 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %6 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.batadv_priv* @netdev_priv(i32 %7)
  store %struct.batadv_priv* %8, %struct.batadv_priv** %3, align 8
  %9 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %10 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %9)
  store %struct.batadv_hard_iface* %10, %struct.batadv_hard_iface** %4, align 8
  %11 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %12 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %13 = icmp ne %struct.batadv_hard_iface* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %17 = call i32 @batadv_v_primary_iface_set(%struct.batadv_hard_iface* %16)
  br label %18

18:                                               ; preds = %15, %14
  %19 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %20 = icmp ne %struct.batadv_hard_iface* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %23 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %22)
  br label %24

24:                                               ; preds = %21, %18
  ret void
}

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_v_primary_iface_set(%struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
