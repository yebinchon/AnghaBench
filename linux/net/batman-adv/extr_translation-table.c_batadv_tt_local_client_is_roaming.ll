; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_local_client_is_roaming.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_local_client_is_roaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_tt_local_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BATADV_TT_CLIENT_ROAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_tt_local_client_is_roaming(%struct.batadv_priv* %0, i32* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.batadv_tt_local_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i16 %2, i16* %6, align 2
  store i32 0, i32* %8, align 4
  %9 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i16, i16* %6, align 2
  %12 = call %struct.batadv_tt_local_entry* @batadv_tt_local_hash_find(%struct.batadv_priv* %9, i32* %10, i16 zeroext %11)
  store %struct.batadv_tt_local_entry* %12, %struct.batadv_tt_local_entry** %7, align 8
  %13 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %7, align 8
  %14 = icmp ne %struct.batadv_tt_local_entry* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %25

16:                                               ; preds = %3
  %17 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %7, align 8
  %18 = getelementptr inbounds %struct.batadv_tt_local_entry, %struct.batadv_tt_local_entry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BATADV_TT_CLIENT_ROAM, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %7, align 8
  %24 = call i32 @batadv_tt_local_entry_put(%struct.batadv_tt_local_entry* %23)
  br label %25

25:                                               ; preds = %16, %15
  %26 = load i32, i32* %8, align 4
  ret i32 %26
}

declare dso_local %struct.batadv_tt_local_entry* @batadv_tt_local_hash_find(%struct.batadv_priv*, i32*, i16 zeroext) #1

declare dso_local i32 @batadv_tt_local_entry_put(%struct.batadv_tt_local_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
