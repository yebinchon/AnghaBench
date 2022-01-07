; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_originator.c_batadv_neigh_node_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_originator.c_batadv_neigh_node_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_neigh_node = type { i32, i32, %struct.batadv_hardif_neigh_node*, i32, %struct.batadv_orig_node*, %struct.batadv_hard_iface*, i32, i32, i32 }
%struct.batadv_hardif_neigh_node = type { i32 }
%struct.batadv_orig_node = type { i32, i32, i32, i32 }
%struct.batadv_hard_iface = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@BATADV_DBG_BATMAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Creating new neighbor %pM for orig_node %pM on interface %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.batadv_neigh_node* (%struct.batadv_orig_node*, %struct.batadv_hard_iface*, i32*)* @batadv_neigh_node_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.batadv_neigh_node* @batadv_neigh_node_create(%struct.batadv_orig_node* %0, %struct.batadv_hard_iface* %1, i32* %2) #0 {
  %4 = alloca %struct.batadv_orig_node*, align 8
  %5 = alloca %struct.batadv_hard_iface*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.batadv_neigh_node*, align 8
  %8 = alloca %struct.batadv_hardif_neigh_node*, align 8
  store %struct.batadv_orig_node* %0, %struct.batadv_orig_node** %4, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %5, align 8
  store i32* %2, i32** %6, align 8
  store %struct.batadv_hardif_neigh_node* null, %struct.batadv_hardif_neigh_node** %8, align 8
  %9 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %4, align 8
  %10 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %4, align 8
  %13 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call %struct.batadv_neigh_node* @batadv_neigh_node_get(%struct.batadv_orig_node* %12, %struct.batadv_hard_iface* %13, i32* %14)
  store %struct.batadv_neigh_node* %15, %struct.batadv_neigh_node** %7, align 8
  %16 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %7, align 8
  %17 = icmp ne %struct.batadv_neigh_node* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %91

19:                                               ; preds = %3
  %20 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %4, align 8
  %23 = call %struct.batadv_hardif_neigh_node* @batadv_hardif_neigh_get_or_create(%struct.batadv_hard_iface* %20, i32* %21, %struct.batadv_orig_node* %22)
  store %struct.batadv_hardif_neigh_node* %23, %struct.batadv_hardif_neigh_node** %8, align 8
  %24 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %8, align 8
  %25 = icmp ne %struct.batadv_hardif_neigh_node* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %91

27:                                               ; preds = %19
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.batadv_neigh_node* @kzalloc(i32 56, i32 %28)
  store %struct.batadv_neigh_node* %29, %struct.batadv_neigh_node** %7, align 8
  %30 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %7, align 8
  %31 = icmp ne %struct.batadv_neigh_node* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %91

33:                                               ; preds = %27
  %34 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %7, align 8
  %35 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %34, i32 0, i32 0
  %36 = call i32 @INIT_HLIST_NODE(i32* %35)
  %37 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %7, align 8
  %38 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %37, i32 0, i32 8
  %39 = call i32 @INIT_HLIST_HEAD(i32* %38)
  %40 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %7, align 8
  %41 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %40, i32 0, i32 7
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %44 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %43, i32 0, i32 1
  %45 = call i32 @kref_get(i32* %44)
  %46 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %7, align 8
  %47 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @ether_addr_copy(i32 %48, i32* %49)
  %51 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %52 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %7, align 8
  %53 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %52, i32 0, i32 5
  store %struct.batadv_hard_iface* %51, %struct.batadv_hard_iface** %53, align 8
  %54 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %4, align 8
  %55 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %7, align 8
  %56 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %55, i32 0, i32 4
  store %struct.batadv_orig_node* %54, %struct.batadv_orig_node** %56, align 8
  %57 = load i32, i32* @jiffies, align 4
  %58 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %7, align 8
  %59 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %8, align 8
  %61 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %60, i32 0, i32 0
  %62 = call i32 @kref_get(i32* %61)
  %63 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %8, align 8
  %64 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %7, align 8
  %65 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %64, i32 0, i32 2
  store %struct.batadv_hardif_neigh_node* %63, %struct.batadv_hardif_neigh_node** %65, align 8
  %66 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %7, align 8
  %67 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %66, i32 0, i32 1
  %68 = call i32 @kref_init(i32* %67)
  %69 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %7, align 8
  %70 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %69, i32 0, i32 1
  %71 = call i32 @kref_get(i32* %70)
  %72 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %7, align 8
  %73 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %72, i32 0, i32 0
  %74 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %4, align 8
  %75 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %74, i32 0, i32 3
  %76 = call i32 @hlist_add_head_rcu(i32* %73, i32* %75)
  %77 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %78 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %4, align 8
  %79 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %4, align 8
  %83 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %86 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @batadv_dbg(i32 %77, i32 %80, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32* %81, i32 %84, i32 %89)
  br label %91

91:                                               ; preds = %33, %32, %26, %18
  %92 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %4, align 8
  %93 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock_bh(i32* %93)
  %95 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %8, align 8
  %96 = icmp ne %struct.batadv_hardif_neigh_node* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %8, align 8
  %99 = call i32 @batadv_hardif_neigh_put(%struct.batadv_hardif_neigh_node* %98)
  br label %100

100:                                              ; preds = %97, %91
  %101 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %7, align 8
  ret %struct.batadv_neigh_node* %101
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.batadv_neigh_node* @batadv_neigh_node_get(%struct.batadv_orig_node*, %struct.batadv_hard_iface*, i32*) #1

declare dso_local %struct.batadv_hardif_neigh_node* @batadv_hardif_neigh_get_or_create(%struct.batadv_hard_iface*, i32*, %struct.batadv_orig_node*) #1

declare dso_local %struct.batadv_neigh_node* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @batadv_dbg(i32, i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @batadv_hardif_neigh_put(%struct.batadv_hardif_neigh_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
