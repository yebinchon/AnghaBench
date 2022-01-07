; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_store_gw_bwidth.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_store_gw_bwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.batadv_priv = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*, i64)* @batadv_store_gw_bwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_store_gw_bwidth(%struct.kobject* %0, %struct.attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.batadv_priv*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.kobject*, %struct.kobject** %5, align 8
  %13 = call %struct.batadv_priv* @batadv_kobj_to_batpriv(%struct.kobject* %12)
  store %struct.batadv_priv* %13, %struct.batadv_priv** %9, align 8
  %14 = load %struct.kobject*, %struct.kobject** %5, align 8
  %15 = call %struct.net_device* @batadv_kobj_to_netdev(%struct.kobject* %14)
  store %struct.net_device* %15, %struct.net_device** %10, align 8
  %16 = load %struct.attribute*, %struct.attribute** %6, align 8
  %17 = call i32 @batadv_sysfs_deprecated(%struct.attribute* %16)
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = sub i64 %19, 1
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = sub i64 %27, 1
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8 0, i8* %29, align 1
  br label %30

30:                                               ; preds = %25, %4
  %31 = load %struct.net_device*, %struct.net_device** %10, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @batadv_gw_bandwidth_set(%struct.net_device* %31, i8* %32, i64 %33)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %36 = call i32 @batadv_netlink_notify_mesh(%struct.batadv_priv* %35)
  %37 = load i32, i32* %11, align 4
  ret i32 %37
}

declare dso_local %struct.batadv_priv* @batadv_kobj_to_batpriv(%struct.kobject*) #1

declare dso_local %struct.net_device* @batadv_kobj_to_netdev(%struct.kobject*) #1

declare dso_local i32 @batadv_sysfs_deprecated(%struct.attribute*) #1

declare dso_local i32 @batadv_gw_bandwidth_set(%struct.net_device*, i8*, i64) #1

declare dso_local i32 @batadv_netlink_notify_mesh(%struct.batadv_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
