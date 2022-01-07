; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_fill_gtable.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_fill_gtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_tvlv_tt_change = type { i32 }
%struct.batadv_orig_node = type { i32, i32, i32*, i64 }

@.str = private unnamed_addr constant [20 x i8] c"Received full table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_tvlv_tt_change*, i32, i32*, i32)* @batadv_tt_fill_gtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_tt_fill_gtable(%struct.batadv_priv* %0, %struct.batadv_tvlv_tt_change* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca %struct.batadv_tvlv_tt_change*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.batadv_orig_node*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %6, align 8
  store %struct.batadv_tvlv_tt_change* %1, %struct.batadv_tvlv_tt_change** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv* %12, i32* %13)
  store %struct.batadv_orig_node* %14, %struct.batadv_orig_node** %11, align 8
  %15 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %16 = icmp ne %struct.batadv_orig_node* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  br label %46

18:                                               ; preds = %5
  %19 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %20 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %21 = call i32 @batadv_tt_global_del_orig(%struct.batadv_priv* %19, %struct.batadv_orig_node* %20, i32 -1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %23 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %24 = load %struct.batadv_tvlv_tt_change*, %struct.batadv_tvlv_tt_change** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @_batadv_tt_update_changes(%struct.batadv_priv* %22, %struct.batadv_orig_node* %23, %struct.batadv_tvlv_tt_change* %24, i32 %25, i32 %26)
  %28 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %29 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %28, i32 0, i32 1
  %30 = call i32 @spin_lock_bh(i32* %29)
  %31 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %32 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %36 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %38 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  %39 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %40 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock_bh(i32* %40)
  %42 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %43 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %42, i32 0, i32 0
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @atomic_set(i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %18, %17
  %47 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %48 = icmp ne %struct.batadv_orig_node* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %51 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %50)
  br label %52

52:                                               ; preds = %49, %46
  ret void
}

declare dso_local %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv*, i32*) #1

declare dso_local i32 @batadv_tt_global_del_orig(%struct.batadv_priv*, %struct.batadv_orig_node*, i32, i8*) #1

declare dso_local i32 @_batadv_tt_update_changes(%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_tvlv_tt_change*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
