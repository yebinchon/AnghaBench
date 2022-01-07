; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_global_entry_has_orig.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_global_entry_has_orig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_tt_global_entry = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_tt_orig_list_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_tt_global_entry*, %struct.batadv_orig_node*, i32*)* @batadv_tt_global_entry_has_orig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_tt_global_entry_has_orig(%struct.batadv_tt_global_entry* %0, %struct.batadv_orig_node* %1, i32* %2) #0 {
  %4 = alloca %struct.batadv_tt_global_entry*, align 8
  %5 = alloca %struct.batadv_orig_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.batadv_tt_orig_list_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.batadv_tt_global_entry* %0, %struct.batadv_tt_global_entry** %4, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %4, align 8
  %10 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %11 = call %struct.batadv_tt_orig_list_entry* @batadv_tt_global_orig_entry_find(%struct.batadv_tt_global_entry* %9, %struct.batadv_orig_node* %10)
  store %struct.batadv_tt_orig_list_entry* %11, %struct.batadv_tt_orig_list_entry** %7, align 8
  %12 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %7, align 8
  %13 = icmp ne %struct.batadv_tt_orig_list_entry* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %7, align 8
  %19 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, %struct.batadv_tt_orig_list_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %17, %14
  %23 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %7, align 8
  %24 = call i32 @batadv_tt_orig_list_entry_put(%struct.batadv_tt_orig_list_entry* %23)
  br label %25

25:                                               ; preds = %22, %3
  %26 = load i32, i32* %8, align 4
  ret i32 %26
}

declare dso_local %struct.batadv_tt_orig_list_entry* @batadv_tt_global_orig_entry_find(%struct.batadv_tt_global_entry*, %struct.batadv_orig_node*) #1

declare dso_local i32 @batadv_tt_orig_list_entry_put(%struct.batadv_tt_orig_list_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
