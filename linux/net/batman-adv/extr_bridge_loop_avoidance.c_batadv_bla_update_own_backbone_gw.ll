; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_update_own_backbone_gw.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_update_own_backbone_gw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_hard_iface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_bla_backbone_gw = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_hard_iface*, i16)* @batadv_bla_update_own_backbone_gw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_bla_update_own_backbone_gw(%struct.batadv_priv* %0, %struct.batadv_hard_iface* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca %struct.batadv_hard_iface*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.batadv_bla_backbone_gw*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %4, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %5, align 8
  store i16 %2, i16* %6, align 2
  %8 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %9 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %10 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i16, i16* %6, align 2
  %15 = call %struct.batadv_bla_backbone_gw* @batadv_bla_get_backbone_gw(%struct.batadv_priv* %8, i32 %13, i16 zeroext %14, i32 1)
  store %struct.batadv_bla_backbone_gw* %15, %struct.batadv_bla_backbone_gw** %7, align 8
  %16 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %7, align 8
  %17 = icmp ne %struct.batadv_bla_backbone_gw* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %29

23:                                               ; preds = %3
  %24 = load i32, i32* @jiffies, align 4
  %25 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %7, align 8
  %26 = getelementptr inbounds %struct.batadv_bla_backbone_gw, %struct.batadv_bla_backbone_gw* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %7, align 8
  %28 = call i32 @batadv_backbone_gw_put(%struct.batadv_bla_backbone_gw* %27)
  br label %29

29:                                               ; preds = %23, %22
  ret void
}

declare dso_local %struct.batadv_bla_backbone_gw* @batadv_bla_get_backbone_gw(%struct.batadv_priv*, i32, i16 zeroext, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @batadv_backbone_gw_put(%struct.batadv_bla_backbone_gw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
