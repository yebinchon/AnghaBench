; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_local_size_mod.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_local_size_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_softif_vlan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, i16, i32)* @batadv_tt_local_size_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_tt_local_size_mod(%struct.batadv_priv* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.batadv_softif_vlan*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  %8 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %9 = load i16, i16* %5, align 2
  %10 = call %struct.batadv_softif_vlan* @batadv_softif_vlan_get(%struct.batadv_priv* %8, i16 zeroext %9)
  store %struct.batadv_softif_vlan* %10, %struct.batadv_softif_vlan** %7, align 8
  %11 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %7, align 8
  %12 = icmp ne %struct.batadv_softif_vlan* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %22

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %7, align 8
  %17 = getelementptr inbounds %struct.batadv_softif_vlan, %struct.batadv_softif_vlan* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @atomic_add(i32 %15, i32* %18)
  %20 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %7, align 8
  %21 = call i32 @batadv_softif_vlan_put(%struct.batadv_softif_vlan* %20)
  br label %22

22:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.batadv_softif_vlan* @batadv_softif_vlan_get(%struct.batadv_priv*, i16 zeroext) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @batadv_softif_vlan_put(%struct.batadv_softif_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
