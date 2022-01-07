; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_vlan_kobj_to_batpriv.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_vlan_kobj_to_batpriv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.kobject = type { %struct.kobject*, i32 }

@BATADV_SYSFS_IF_MESH_SUBDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.batadv_priv* (%struct.kobject*)* @batadv_vlan_kobj_to_batpriv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.batadv_priv* @batadv_vlan_kobj_to_batpriv(%struct.kobject* %0) #0 {
  %2 = alloca %struct.batadv_priv*, align 8
  %3 = alloca %struct.kobject*, align 8
  store %struct.kobject* %0, %struct.kobject** %3, align 8
  %4 = load i32, i32* @BATADV_SYSFS_IF_MESH_SUBDIR, align 4
  %5 = load %struct.kobject*, %struct.kobject** %3, align 8
  %6 = getelementptr inbounds %struct.kobject, %struct.kobject* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @strcmp(i32 %4, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.kobject*, %struct.kobject** %3, align 8
  %12 = call %struct.batadv_priv* @batadv_kobj_to_batpriv(%struct.kobject* %11)
  store %struct.batadv_priv* %12, %struct.batadv_priv** %2, align 8
  br label %18

13:                                               ; preds = %1
  %14 = load %struct.kobject*, %struct.kobject** %3, align 8
  %15 = getelementptr inbounds %struct.kobject, %struct.kobject* %14, i32 0, i32 0
  %16 = load %struct.kobject*, %struct.kobject** %15, align 8
  %17 = call %struct.batadv_priv* @batadv_kobj_to_batpriv(%struct.kobject* %16)
  store %struct.batadv_priv* %17, %struct.batadv_priv** %2, align 8
  br label %18

18:                                               ; preds = %13, %10
  %19 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  ret %struct.batadv_priv* %19
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local %struct.batadv_priv* @batadv_kobj_to_batpriv(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
