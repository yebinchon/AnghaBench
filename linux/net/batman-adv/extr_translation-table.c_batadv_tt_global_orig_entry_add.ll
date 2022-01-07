; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_global_orig_entry_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_global_orig_entry_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_tt_global_entry = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_tt_orig_list_entry = type { i32, i32, i32, i8*, %struct.batadv_orig_node* }

@batadv_tt_orig_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_tt_global_entry*, %struct.batadv_orig_node*, i32, i8*)* @batadv_tt_global_orig_entry_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_tt_global_orig_entry_add(%struct.batadv_tt_global_entry* %0, %struct.batadv_orig_node* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.batadv_tt_global_entry*, align 8
  %6 = alloca %struct.batadv_orig_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.batadv_tt_orig_list_entry*, align 8
  store %struct.batadv_tt_global_entry* %0, %struct.batadv_tt_global_entry** %5, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %5, align 8
  %11 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %5, align 8
  %14 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %15 = call %struct.batadv_tt_orig_list_entry* @batadv_tt_global_orig_entry_find(%struct.batadv_tt_global_entry* %13, %struct.batadv_orig_node* %14)
  store %struct.batadv_tt_orig_list_entry* %15, %struct.batadv_tt_orig_list_entry** %9, align 8
  %16 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %9, align 8
  %17 = icmp ne %struct.batadv_tt_orig_list_entry* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %9, align 8
  %21 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, %struct.batadv_tt_orig_list_entry* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %9, align 8
  %24 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, %struct.batadv_tt_orig_list_entry* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  br label %68

25:                                               ; preds = %4
  %26 = load i32, i32* @batadv_tt_orig_cache, align 4
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.batadv_tt_orig_list_entry* @kmem_cache_zalloc(i32 %26, i32 %27)
  store %struct.batadv_tt_orig_list_entry* %28, %struct.batadv_tt_orig_list_entry** %9, align 8
  %29 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %9, align 8
  %30 = icmp ne %struct.batadv_tt_orig_list_entry* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %71

32:                                               ; preds = %25
  %33 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %9, align 8
  %34 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, %struct.batadv_tt_orig_list_entry* %33, i32 0, i32 1
  %35 = call i32 @INIT_HLIST_NODE(i32* %34)
  %36 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %37 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %36, i32 0, i32 0
  %38 = call i32 @kref_get(i32* %37)
  %39 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %40 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %5, align 8
  %41 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @batadv_tt_global_size_inc(%struct.batadv_orig_node* %39, i32 %43)
  %45 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %46 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %9, align 8
  %47 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, %struct.batadv_tt_orig_list_entry* %46, i32 0, i32 4
  store %struct.batadv_orig_node* %45, %struct.batadv_orig_node** %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %9, align 8
  %50 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, %struct.batadv_tt_orig_list_entry* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %9, align 8
  %53 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, %struct.batadv_tt_orig_list_entry* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %9, align 8
  %55 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, %struct.batadv_tt_orig_list_entry* %54, i32 0, i32 2
  %56 = call i32 @kref_init(i32* %55)
  %57 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %9, align 8
  %58 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, %struct.batadv_tt_orig_list_entry* %57, i32 0, i32 2
  %59 = call i32 @kref_get(i32* %58)
  %60 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %9, align 8
  %61 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, %struct.batadv_tt_orig_list_entry* %60, i32 0, i32 1
  %62 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %5, align 8
  %63 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %62, i32 0, i32 2
  %64 = call i32 @hlist_add_head_rcu(i32* %61, i32* %63)
  %65 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %5, align 8
  %66 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %65, i32 0, i32 1
  %67 = call i32 @atomic_inc(i32* %66)
  br label %68

68:                                               ; preds = %32, %18
  %69 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %5, align 8
  %70 = call i32 @batadv_tt_global_sync_flags(%struct.batadv_tt_global_entry* %69)
  br label %71

71:                                               ; preds = %68, %31
  %72 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %9, align 8
  %73 = icmp ne %struct.batadv_tt_orig_list_entry* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %9, align 8
  %76 = call i32 @batadv_tt_orig_list_entry_put(%struct.batadv_tt_orig_list_entry* %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %5, align 8
  %79 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock_bh(i32* %79)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.batadv_tt_orig_list_entry* @batadv_tt_global_orig_entry_find(%struct.batadv_tt_global_entry*, %struct.batadv_orig_node*) #1

declare dso_local %struct.batadv_tt_orig_list_entry* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @batadv_tt_global_size_inc(%struct.batadv_orig_node*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @batadv_tt_global_sync_flags(%struct.batadv_tt_global_entry*) #1

declare dso_local i32 @batadv_tt_orig_list_entry_put(%struct.batadv_tt_orig_list_entry*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
