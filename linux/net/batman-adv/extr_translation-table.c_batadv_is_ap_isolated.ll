; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_is_ap_isolated.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_is_ap_isolated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_tt_local_entry = type { i32 }
%struct.batadv_tt_global_entry = type { i32 }
%struct.batadv_softif_vlan = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_is_ap_isolated(%struct.batadv_priv* %0, i32* %1, i32* %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i16, align 2
  %10 = alloca %struct.batadv_tt_local_entry*, align 8
  %11 = alloca %struct.batadv_tt_global_entry*, align 8
  %12 = alloca %struct.batadv_softif_vlan*, align 8
  %13 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i16 %3, i16* %9, align 2
  store i32 0, i32* %13, align 4
  %14 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %15 = load i16, i16* %9, align 2
  %16 = call %struct.batadv_softif_vlan* @batadv_softif_vlan_get(%struct.batadv_priv* %14, i16 zeroext %15)
  store %struct.batadv_softif_vlan* %16, %struct.batadv_softif_vlan** %12, align 8
  %17 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %12, align 8
  %18 = icmp ne %struct.batadv_softif_vlan* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %58

20:                                               ; preds = %4
  %21 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %12, align 8
  %22 = getelementptr inbounds %struct.batadv_softif_vlan, %struct.batadv_softif_vlan* %21, i32 0, i32 0
  %23 = call i32 @atomic_read(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %54

26:                                               ; preds = %20
  %27 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i16, i16* %9, align 2
  %30 = call %struct.batadv_tt_local_entry* @batadv_tt_local_hash_find(%struct.batadv_priv* %27, i32* %28, i16 zeroext %29)
  store %struct.batadv_tt_local_entry* %30, %struct.batadv_tt_local_entry** %10, align 8
  %31 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %10, align 8
  %32 = icmp ne %struct.batadv_tt_local_entry* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %54

34:                                               ; preds = %26
  %35 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i16, i16* %9, align 2
  %38 = call %struct.batadv_tt_global_entry* @batadv_tt_global_hash_find(%struct.batadv_priv* %35, i32* %36, i16 zeroext %37)
  store %struct.batadv_tt_global_entry* %38, %struct.batadv_tt_global_entry** %11, align 8
  %39 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %11, align 8
  %40 = icmp ne %struct.batadv_tt_global_entry* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %51

42:                                               ; preds = %34
  %43 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %10, align 8
  %44 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %11, align 8
  %45 = call i64 @_batadv_is_ap_isolated(%struct.batadv_tt_local_entry* %43, %struct.batadv_tt_global_entry* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %13, align 4
  br label %48

48:                                               ; preds = %47, %42
  %49 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %11, align 8
  %50 = call i32 @batadv_tt_global_entry_put(%struct.batadv_tt_global_entry* %49)
  br label %51

51:                                               ; preds = %48, %41
  %52 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %10, align 8
  %53 = call i32 @batadv_tt_local_entry_put(%struct.batadv_tt_local_entry* %52)
  br label %54

54:                                               ; preds = %51, %33, %25
  %55 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %12, align 8
  %56 = call i32 @batadv_softif_vlan_put(%struct.batadv_softif_vlan* %55)
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %19
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.batadv_softif_vlan* @batadv_softif_vlan_get(%struct.batadv_priv*, i16 zeroext) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.batadv_tt_local_entry* @batadv_tt_local_hash_find(%struct.batadv_priv*, i32*, i16 zeroext) #1

declare dso_local %struct.batadv_tt_global_entry* @batadv_tt_global_hash_find(%struct.batadv_priv*, i32*, i16 zeroext) #1

declare dso_local i64 @_batadv_is_ap_isolated(%struct.batadv_tt_local_entry*, %struct.batadv_tt_global_entry*) #1

declare dso_local i32 @batadv_tt_global_entry_put(%struct.batadv_tt_global_entry*) #1

declare dso_local i32 @batadv_tt_local_entry_put(%struct.batadv_tt_local_entry*) #1

declare dso_local i32 @batadv_softif_vlan_put(%struct.batadv_softif_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
