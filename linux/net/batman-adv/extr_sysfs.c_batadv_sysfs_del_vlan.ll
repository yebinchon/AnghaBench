; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_sysfs_del_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_sysfs_del_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_attribute = type { i32 }
%struct.batadv_priv = type { i32* }
%struct.batadv_softif_vlan = type { i32* }

@batadv_vlan_attrs = common dso_local global %struct.batadv_attribute** null, align 8
@KOBJ_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_sysfs_del_vlan(%struct.batadv_priv* %0, %struct.batadv_softif_vlan* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_softif_vlan*, align 8
  %5 = alloca %struct.batadv_attribute**, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.batadv_softif_vlan* %1, %struct.batadv_softif_vlan** %4, align 8
  %6 = load %struct.batadv_attribute**, %struct.batadv_attribute*** @batadv_vlan_attrs, align 8
  store %struct.batadv_attribute** %6, %struct.batadv_attribute*** %5, align 8
  br label %7

7:                                                ; preds = %19, %2
  %8 = load %struct.batadv_attribute**, %struct.batadv_attribute*** %5, align 8
  %9 = load %struct.batadv_attribute*, %struct.batadv_attribute** %8, align 8
  %10 = icmp ne %struct.batadv_attribute* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %4, align 8
  %13 = getelementptr inbounds %struct.batadv_softif_vlan, %struct.batadv_softif_vlan* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.batadv_attribute**, %struct.batadv_attribute*** %5, align 8
  %16 = load %struct.batadv_attribute*, %struct.batadv_attribute** %15, align 8
  %17 = getelementptr inbounds %struct.batadv_attribute, %struct.batadv_attribute* %16, i32 0, i32 0
  %18 = call i32 @sysfs_remove_file(i32* %14, i32* %17)
  br label %19

19:                                               ; preds = %11
  %20 = load %struct.batadv_attribute**, %struct.batadv_attribute*** %5, align 8
  %21 = getelementptr inbounds %struct.batadv_attribute*, %struct.batadv_attribute** %20, i32 1
  store %struct.batadv_attribute** %21, %struct.batadv_attribute*** %5, align 8
  br label %7

22:                                               ; preds = %7
  %23 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %4, align 8
  %24 = getelementptr inbounds %struct.batadv_softif_vlan, %struct.batadv_softif_vlan* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %27 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %25, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %4, align 8
  %32 = getelementptr inbounds %struct.batadv_softif_vlan, %struct.batadv_softif_vlan* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @KOBJ_REMOVE, align 4
  %35 = call i32 @kobject_uevent(i32* %33, i32 %34)
  %36 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %4, align 8
  %37 = getelementptr inbounds %struct.batadv_softif_vlan, %struct.batadv_softif_vlan* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @kobject_del(i32* %38)
  br label %40

40:                                               ; preds = %30, %22
  %41 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %4, align 8
  %42 = getelementptr inbounds %struct.batadv_softif_vlan, %struct.batadv_softif_vlan* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @kobject_put(i32* %43)
  %45 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %4, align 8
  %46 = getelementptr inbounds %struct.batadv_softif_vlan, %struct.batadv_softif_vlan* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  ret void
}

declare dso_local i32 @sysfs_remove_file(i32*, i32*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @kobject_del(i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
