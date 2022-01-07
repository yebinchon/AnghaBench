; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32 }
%struct.batadv_hard_iface = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_bla_free(%struct.batadv_priv* %0) #0 {
  %2 = alloca %struct.batadv_priv*, align 8
  %3 = alloca %struct.batadv_hard_iface*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %2, align 8
  %4 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %5 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  %7 = call i32 @cancel_delayed_work_sync(i32* %6)
  %8 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %9 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %8)
  store %struct.batadv_hard_iface* %9, %struct.batadv_hard_iface** %3, align 8
  %10 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %11 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %17 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %18 = call i32 @batadv_bla_purge_claims(%struct.batadv_priv* %16, %struct.batadv_hard_iface* %17, i32 1)
  %19 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %20 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @batadv_hash_destroy(i32* %22)
  %24 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %25 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %15, %1
  %28 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %29 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %35 = call i32 @batadv_bla_purge_backbone_gw(%struct.batadv_priv* %34, i32 1)
  %36 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %37 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @batadv_hash_destroy(i32* %39)
  %41 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %42 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %33, %27
  %45 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %46 = icmp ne %struct.batadv_hard_iface* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %49 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %48)
  br label %50

50:                                               ; preds = %47, %44
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_bla_purge_claims(%struct.batadv_priv*, %struct.batadv_hard_iface*, i32) #1

declare dso_local i32 @batadv_hash_destroy(i32*) #1

declare dso_local i32 @batadv_bla_purge_backbone_gw(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
