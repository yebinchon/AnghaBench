; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_global_hash_count.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_global_hash_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_tt_global_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_tt_global_hash_count(%struct.batadv_priv* %0, i32* %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.batadv_tt_global_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %5, align 8
  store i32* %1, i32** %6, align 8
  store i16 %2, i16* %7, align 2
  %10 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i16, i16* %7, align 2
  %13 = call %struct.batadv_tt_global_entry* @batadv_tt_global_hash_find(%struct.batadv_priv* %10, i32* %11, i16 zeroext %12)
  store %struct.batadv_tt_global_entry* %13, %struct.batadv_tt_global_entry** %8, align 8
  %14 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %8, align 8
  %15 = icmp ne %struct.batadv_tt_global_entry* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %24

17:                                               ; preds = %3
  %18 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %8, align 8
  %19 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %18, i32 0, i32 0
  %20 = call i32 @atomic_read(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %8, align 8
  %22 = call i32 @batadv_tt_global_entry_put(%struct.batadv_tt_global_entry* %21)
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %17, %16
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local %struct.batadv_tt_global_entry* @batadv_tt_global_hash_find(%struct.batadv_priv*, i32*, i16 zeroext) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @batadv_tt_global_entry_put(%struct.batadv_tt_global_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
