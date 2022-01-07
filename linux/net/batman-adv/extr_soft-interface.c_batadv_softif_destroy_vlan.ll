; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_soft-interface.c_batadv_softif_destroy_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_soft-interface.c_batadv_softif_destroy_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_softif_vlan = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"vlan interface destroyed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_softif_vlan*)* @batadv_softif_destroy_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_softif_destroy_vlan(%struct.batadv_priv* %0, %struct.batadv_softif_vlan* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_softif_vlan*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.batadv_softif_vlan* %1, %struct.batadv_softif_vlan** %4, align 8
  %5 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %6 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %7 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %4, align 8
  %12 = getelementptr inbounds %struct.batadv_softif_vlan, %struct.batadv_softif_vlan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @batadv_tt_local_remove(%struct.batadv_priv* %5, i32 %10, i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 0)
  %15 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %16 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %4, align 8
  %17 = call i32 @batadv_sysfs_del_vlan(%struct.batadv_priv* %15, %struct.batadv_softif_vlan* %16)
  %18 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %4, align 8
  %19 = call i32 @batadv_softif_vlan_put(%struct.batadv_softif_vlan* %18)
  ret void
}

declare dso_local i32 @batadv_tt_local_remove(%struct.batadv_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @batadv_sysfs_del_vlan(%struct.batadv_priv*, %struct.batadv_softif_vlan*) #1

declare dso_local i32 @batadv_softif_vlan_put(%struct.batadv_softif_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
