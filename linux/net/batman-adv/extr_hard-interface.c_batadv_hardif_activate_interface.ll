; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_hardif_activate_interface.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_hardif_activate_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.batadv_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.batadv_hard_iface*)*, i32 (%struct.batadv_hard_iface*)* }

@BATADV_IF_INACTIVE = common dso_local global i64 0, align 8
@BATADV_IF_TO_BE_ACTIVATED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Interface activated: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_hard_iface*)* @batadv_hardif_activate_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_hardif_activate_interface(%struct.batadv_hard_iface* %0) #0 {
  %2 = alloca %struct.batadv_hard_iface*, align 8
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %2, align 8
  store %struct.batadv_hard_iface* null, %struct.batadv_hard_iface** %4, align 8
  %5 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %6 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @BATADV_IF_INACTIVE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %66

11:                                               ; preds = %1
  %12 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %13 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.batadv_priv* @netdev_priv(i32 %14)
  store %struct.batadv_priv* %15, %struct.batadv_priv** %3, align 8
  %16 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %17 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32 (%struct.batadv_hard_iface*)*, i32 (%struct.batadv_hard_iface*)** %20, align 8
  %22 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %23 = call i32 %21(%struct.batadv_hard_iface* %22)
  %24 = load i64, i64* @BATADV_IF_TO_BE_ACTIVATED, align 8
  %25 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %26 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %28 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %27)
  store %struct.batadv_hard_iface* %28, %struct.batadv_hard_iface** %4, align 8
  %29 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %30 = icmp ne %struct.batadv_hard_iface* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %11
  %32 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %33 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %34 = call i32 @batadv_primary_if_select(%struct.batadv_priv* %32, %struct.batadv_hard_iface* %33)
  br label %35

35:                                               ; preds = %31, %11
  %36 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %37 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %40 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @batadv_info(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %46 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @batadv_update_min_mtu(i32 %47)
  %49 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %50 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32 (%struct.batadv_hard_iface*)*, i32 (%struct.batadv_hard_iface*)** %53, align 8
  %55 = icmp ne i32 (%struct.batadv_hard_iface*)* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %35
  %57 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %58 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32 (%struct.batadv_hard_iface*)*, i32 (%struct.batadv_hard_iface*)** %61, align 8
  %63 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %64 = call i32 %62(%struct.batadv_hard_iface* %63)
  br label %65

65:                                               ; preds = %56, %35
  br label %66

66:                                               ; preds = %65, %10
  %67 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %68 = icmp ne %struct.batadv_hard_iface* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %71 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %70)
  br label %72

72:                                               ; preds = %69, %66
  ret void
}

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_primary_if_select(%struct.batadv_priv*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_info(i32, i8*, i32) #1

declare dso_local i32 @batadv_update_min_mtu(i32) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
