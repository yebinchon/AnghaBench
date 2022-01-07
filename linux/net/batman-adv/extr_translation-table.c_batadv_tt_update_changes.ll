; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_update_changes.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_update_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_tvlv_tt_change = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_orig_node*, i32, i32, %struct.batadv_tvlv_tt_change*)* @batadv_tt_update_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_tt_update_changes(%struct.batadv_priv* %0, %struct.batadv_orig_node* %1, i32 %2, i32 %3, %struct.batadv_tvlv_tt_change* %4) #0 {
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca %struct.batadv_orig_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.batadv_tvlv_tt_change*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %6, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.batadv_tvlv_tt_change* %4, %struct.batadv_tvlv_tt_change** %10, align 8
  %11 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %12 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %13 = load %struct.batadv_tvlv_tt_change*, %struct.batadv_tvlv_tt_change** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @_batadv_tt_update_changes(%struct.batadv_priv* %11, %struct.batadv_orig_node* %12, %struct.batadv_tvlv_tt_change* %13, i32 %14, i32 %15)
  %17 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %18 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %19 = load %struct.batadv_tvlv_tt_change*, %struct.batadv_tvlv_tt_change** %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @batadv_tt_len(i32 %20)
  %22 = call i32 @batadv_tt_save_orig_buffer(%struct.batadv_priv* %17, %struct.batadv_orig_node* %18, %struct.batadv_tvlv_tt_change* %19, i32 %21)
  %23 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %24 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %23, i32 0, i32 0
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @atomic_set(i32* %24, i32 %25)
  ret void
}

declare dso_local i32 @_batadv_tt_update_changes(%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_tvlv_tt_change*, i32, i32) #1

declare dso_local i32 @batadv_tt_save_orig_buffer(%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_tvlv_tt_change*, i32) #1

declare dso_local i32 @batadv_tt_len(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
