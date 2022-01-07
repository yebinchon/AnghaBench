; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_originator.c_batadv_hardif_neigh_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_originator.c_batadv_hardif_neigh_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hardif_neigh_node = type { i32, i32, i32, %struct.batadv_hard_iface*, i32, i32 }
%struct.batadv_hard_iface = type { i32, i32, i32, i32 }
%struct.batadv_orig_node = type { i32* }
%struct.batadv_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.batadv_hardif_neigh_node*)* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.batadv_hardif_neigh_node* (%struct.batadv_hard_iface*, i32*, %struct.batadv_orig_node*)* @batadv_hardif_neigh_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.batadv_hardif_neigh_node* @batadv_hardif_neigh_create(%struct.batadv_hard_iface* %0, i32* %1, %struct.batadv_orig_node* %2) #0 {
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.batadv_orig_node*, align 8
  %7 = alloca %struct.batadv_priv*, align 8
  %8 = alloca %struct.batadv_hardif_neigh_node*, align 8
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.batadv_orig_node* %2, %struct.batadv_orig_node** %6, align 8
  %9 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %10 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.batadv_priv* @netdev_priv(i32 %11)
  store %struct.batadv_priv* %12, %struct.batadv_priv** %7, align 8
  %13 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %14 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call %struct.batadv_hardif_neigh_node* @batadv_hardif_neigh_get(%struct.batadv_hard_iface* %16, i32* %17)
  store %struct.batadv_hardif_neigh_node* %18, %struct.batadv_hardif_neigh_node** %8, align 8
  %19 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %8, align 8
  %20 = icmp ne %struct.batadv_hardif_neigh_node* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %78

22:                                               ; preds = %3
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.batadv_hardif_neigh_node* @kzalloc(i32 32, i32 %23)
  store %struct.batadv_hardif_neigh_node* %24, %struct.batadv_hardif_neigh_node** %8, align 8
  %25 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %8, align 8
  %26 = icmp ne %struct.batadv_hardif_neigh_node* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %78

28:                                               ; preds = %22
  %29 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %30 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %29, i32 0, i32 2
  %31 = call i32 @kref_get(i32* %30)
  %32 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %8, align 8
  %33 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %32, i32 0, i32 0
  %34 = call i32 @INIT_HLIST_NODE(i32* %33)
  %35 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %8, align 8
  %36 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @ether_addr_copy(i32 %37, i32* %38)
  %40 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %8, align 8
  %41 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %44 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @ether_addr_copy(i32 %42, i32* %45)
  %47 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %48 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %8, align 8
  %49 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %48, i32 0, i32 3
  store %struct.batadv_hard_iface* %47, %struct.batadv_hard_iface** %49, align 8
  %50 = load i32, i32* @jiffies, align 4
  %51 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %8, align 8
  %52 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %8, align 8
  %54 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %53, i32 0, i32 1
  %55 = call i32 @kref_init(i32* %54)
  %56 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %57 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32 (%struct.batadv_hardif_neigh_node*)*, i32 (%struct.batadv_hardif_neigh_node*)** %60, align 8
  %62 = icmp ne i32 (%struct.batadv_hardif_neigh_node*)* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %28
  %64 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %65 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32 (%struct.batadv_hardif_neigh_node*)*, i32 (%struct.batadv_hardif_neigh_node*)** %68, align 8
  %70 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %8, align 8
  %71 = call i32 %69(%struct.batadv_hardif_neigh_node* %70)
  br label %72

72:                                               ; preds = %63, %28
  %73 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %8, align 8
  %74 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %73, i32 0, i32 0
  %75 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %76 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %75, i32 0, i32 1
  %77 = call i32 @hlist_add_head_rcu(i32* %74, i32* %76)
  br label %78

78:                                               ; preds = %72, %27, %21
  %79 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %80 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock_bh(i32* %80)
  %82 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %8, align 8
  ret %struct.batadv_hardif_neigh_node* %82
}

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.batadv_hardif_neigh_node* @batadv_hardif_neigh_get(%struct.batadv_hard_iface*, i32*) #1

declare dso_local %struct.batadv_hardif_neigh_node* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
