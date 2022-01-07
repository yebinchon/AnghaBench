; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_sysfs_del_meshif.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_sysfs_del_meshif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_attribute = type { i32 }
%struct.net_device = type { i32 }
%struct.batadv_priv = type { i32* }

@batadv_mesh_attrs = common dso_local global %struct.batadv_attribute** null, align 8
@KOBJ_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_sysfs_del_meshif(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_attribute**, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.batadv_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.batadv_priv* %6, %struct.batadv_priv** %3, align 8
  %7 = load %struct.batadv_attribute**, %struct.batadv_attribute*** @batadv_mesh_attrs, align 8
  store %struct.batadv_attribute** %7, %struct.batadv_attribute*** %4, align 8
  br label %8

8:                                                ; preds = %20, %1
  %9 = load %struct.batadv_attribute**, %struct.batadv_attribute*** %4, align 8
  %10 = load %struct.batadv_attribute*, %struct.batadv_attribute** %9, align 8
  %11 = icmp ne %struct.batadv_attribute* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %14 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.batadv_attribute**, %struct.batadv_attribute*** %4, align 8
  %17 = load %struct.batadv_attribute*, %struct.batadv_attribute** %16, align 8
  %18 = getelementptr inbounds %struct.batadv_attribute, %struct.batadv_attribute* %17, i32 0, i32 0
  %19 = call i32 @sysfs_remove_file(i32* %15, i32* %18)
  br label %20

20:                                               ; preds = %12
  %21 = load %struct.batadv_attribute**, %struct.batadv_attribute*** %4, align 8
  %22 = getelementptr inbounds %struct.batadv_attribute*, %struct.batadv_attribute** %21, i32 1
  store %struct.batadv_attribute** %22, %struct.batadv_attribute*** %4, align 8
  br label %8

23:                                               ; preds = %8
  %24 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %25 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @KOBJ_REMOVE, align 4
  %28 = call i32 @kobject_uevent(i32* %26, i32 %27)
  %29 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %30 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kobject_del(i32* %31)
  %33 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %34 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @kobject_put(i32* %35)
  %37 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %38 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  ret void
}

declare dso_local %struct.batadv_priv* @netdev_priv(%struct.net_device*) #1

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
