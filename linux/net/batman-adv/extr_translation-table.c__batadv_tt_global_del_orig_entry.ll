; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c__batadv_tt_global_del_orig_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c__batadv_tt_global_del_orig_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_tt_global_entry = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_tt_orig_list_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_tt_global_entry*, %struct.batadv_tt_orig_list_entry*)* @_batadv_tt_global_del_orig_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_batadv_tt_global_del_orig_entry(%struct.batadv_tt_global_entry* %0, %struct.batadv_tt_orig_list_entry* %1) #0 {
  %3 = alloca %struct.batadv_tt_global_entry*, align 8
  %4 = alloca %struct.batadv_tt_orig_list_entry*, align 8
  store %struct.batadv_tt_global_entry* %0, %struct.batadv_tt_global_entry** %3, align 8
  store %struct.batadv_tt_orig_list_entry* %1, %struct.batadv_tt_orig_list_entry** %4, align 8
  %5 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %3, align 8
  %6 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %5, i32 0, i32 2
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %4, align 8
  %9 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, %struct.batadv_tt_orig_list_entry* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %3, align 8
  %12 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @batadv_tt_global_size_dec(i32 %10, i32 %14)
  %16 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %3, align 8
  %17 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %16, i32 0, i32 0
  %18 = call i32 @atomic_dec(i32* %17)
  %19 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %4, align 8
  %20 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, %struct.batadv_tt_orig_list_entry* %19, i32 0, i32 0
  %21 = call i32 @hlist_del_rcu(i32* %20)
  %22 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %4, align 8
  %23 = call i32 @batadv_tt_orig_list_entry_put(%struct.batadv_tt_orig_list_entry* %22)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @batadv_tt_global_size_dec(i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @batadv_tt_orig_list_entry_put(%struct.batadv_tt_orig_list_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
