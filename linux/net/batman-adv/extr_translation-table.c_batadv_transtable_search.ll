; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_transtable_search.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_transtable_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_orig_node = type { i32 }
%struct.batadv_priv = type { i32 }
%struct.batadv_tt_local_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_tt_global_entry = type { i32 }
%struct.batadv_tt_orig_list_entry = type { %struct.batadv_orig_node* }

@BATADV_TT_CLIENT_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.batadv_orig_node* @batadv_transtable_search(%struct.batadv_priv* %0, i32* %1, i32* %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct.batadv_tt_local_entry*, align 8
  %10 = alloca %struct.batadv_tt_global_entry*, align 8
  %11 = alloca %struct.batadv_orig_node*, align 8
  %12 = alloca %struct.batadv_tt_orig_list_entry*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i16 %3, i16* %8, align 2
  store %struct.batadv_tt_local_entry* null, %struct.batadv_tt_local_entry** %9, align 8
  store %struct.batadv_tt_global_entry* null, %struct.batadv_tt_global_entry** %10, align 8
  store %struct.batadv_orig_node* null, %struct.batadv_orig_node** %11, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %4
  %16 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %17 = load i16, i16* %8, align 2
  %18 = call i64 @batadv_vlan_ap_isola_get(%struct.batadv_priv* %16, i16 zeroext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i16, i16* %8, align 2
  %24 = call %struct.batadv_tt_local_entry* @batadv_tt_local_hash_find(%struct.batadv_priv* %21, i32* %22, i16 zeroext %23)
  store %struct.batadv_tt_local_entry* %24, %struct.batadv_tt_local_entry** %9, align 8
  %25 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %9, align 8
  %26 = icmp ne %struct.batadv_tt_local_entry* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %9, align 8
  %29 = getelementptr inbounds %struct.batadv_tt_local_entry, %struct.batadv_tt_local_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BATADV_TT_CLIENT_PENDING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27, %20
  br label %76

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %15, %4
  %38 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i16, i16* %8, align 2
  %41 = call %struct.batadv_tt_global_entry* @batadv_tt_global_hash_find(%struct.batadv_priv* %38, i32* %39, i16 zeroext %40)
  store %struct.batadv_tt_global_entry* %41, %struct.batadv_tt_global_entry** %10, align 8
  %42 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %10, align 8
  %43 = icmp ne %struct.batadv_tt_global_entry* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %76

45:                                               ; preds = %37
  %46 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %9, align 8
  %47 = icmp ne %struct.batadv_tt_local_entry* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %9, align 8
  %50 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %10, align 8
  %51 = call i64 @_batadv_is_ap_isolated(%struct.batadv_tt_local_entry* %49, %struct.batadv_tt_global_entry* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %76

54:                                               ; preds = %48, %45
  %55 = call i32 (...) @rcu_read_lock()
  %56 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %57 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %10, align 8
  %58 = call %struct.batadv_tt_orig_list_entry* @batadv_transtable_best_orig(%struct.batadv_priv* %56, %struct.batadv_tt_global_entry* %57)
  store %struct.batadv_tt_orig_list_entry* %58, %struct.batadv_tt_orig_list_entry** %12, align 8
  %59 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %12, align 8
  %60 = icmp ne %struct.batadv_tt_orig_list_entry* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %12, align 8
  %63 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, %struct.batadv_tt_orig_list_entry* %62, i32 0, i32 0
  %64 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %63, align 8
  store %struct.batadv_orig_node* %64, %struct.batadv_orig_node** %11, align 8
  br label %65

65:                                               ; preds = %61, %54
  %66 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %67 = icmp ne %struct.batadv_orig_node* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %70 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %69, i32 0, i32 0
  %71 = call i32 @kref_get_unless_zero(i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  store %struct.batadv_orig_node* null, %struct.batadv_orig_node** %11, align 8
  br label %74

74:                                               ; preds = %73, %68, %65
  %75 = call i32 (...) @rcu_read_unlock()
  br label %76

76:                                               ; preds = %74, %53, %44, %35
  %77 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %10, align 8
  %78 = icmp ne %struct.batadv_tt_global_entry* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %10, align 8
  %81 = call i32 @batadv_tt_global_entry_put(%struct.batadv_tt_global_entry* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %9, align 8
  %84 = icmp ne %struct.batadv_tt_local_entry* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %9, align 8
  %87 = call i32 @batadv_tt_local_entry_put(%struct.batadv_tt_local_entry* %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  ret %struct.batadv_orig_node* %89
}

declare dso_local i64 @batadv_vlan_ap_isola_get(%struct.batadv_priv*, i16 zeroext) #1

declare dso_local %struct.batadv_tt_local_entry* @batadv_tt_local_hash_find(%struct.batadv_priv*, i32*, i16 zeroext) #1

declare dso_local %struct.batadv_tt_global_entry* @batadv_tt_global_hash_find(%struct.batadv_priv*, i32*, i16 zeroext) #1

declare dso_local i64 @_batadv_is_ap_isolated(%struct.batadv_tt_local_entry*, %struct.batadv_tt_global_entry*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.batadv_tt_orig_list_entry* @batadv_transtable_best_orig(%struct.batadv_priv*, %struct.batadv_tt_global_entry*) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @batadv_tt_global_entry_put(%struct.batadv_tt_global_entry*) #1

declare dso_local i32 @batadv_tt_local_entry_put(%struct.batadv_tt_local_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
