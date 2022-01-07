; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_update_route.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_update_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_neigh_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_update_route(%struct.batadv_priv* %0, %struct.batadv_orig_node* %1, %struct.batadv_hard_iface* %2, %struct.batadv_neigh_node* %3) #0 {
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca %struct.batadv_orig_node*, align 8
  %7 = alloca %struct.batadv_hard_iface*, align 8
  %8 = alloca %struct.batadv_neigh_node*, align 8
  %9 = alloca %struct.batadv_neigh_node*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %5, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %6, align 8
  store %struct.batadv_hard_iface* %2, %struct.batadv_hard_iface** %7, align 8
  store %struct.batadv_neigh_node* %3, %struct.batadv_neigh_node** %8, align 8
  store %struct.batadv_neigh_node* null, %struct.batadv_neigh_node** %9, align 8
  %10 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %11 = icmp ne %struct.batadv_orig_node* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %27

13:                                               ; preds = %4
  %14 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %15 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %16 = call %struct.batadv_neigh_node* @batadv_orig_router_get(%struct.batadv_orig_node* %14, %struct.batadv_hard_iface* %15)
  store %struct.batadv_neigh_node* %16, %struct.batadv_neigh_node** %9, align 8
  %17 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %9, align 8
  %18 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %8, align 8
  %19 = icmp ne %struct.batadv_neigh_node* %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %22 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %23 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %24 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %8, align 8
  %25 = call i32 @_batadv_update_route(%struct.batadv_priv* %21, %struct.batadv_orig_node* %22, %struct.batadv_hard_iface* %23, %struct.batadv_neigh_node* %24)
  br label %26

26:                                               ; preds = %20, %13
  br label %27

27:                                               ; preds = %26, %12
  %28 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %9, align 8
  %29 = icmp ne %struct.batadv_neigh_node* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %9, align 8
  %32 = call i32 @batadv_neigh_node_put(%struct.batadv_neigh_node* %31)
  br label %33

33:                                               ; preds = %30, %27
  ret void
}

declare dso_local %struct.batadv_neigh_node* @batadv_orig_router_get(%struct.batadv_orig_node*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @_batadv_update_route(%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_hard_iface*, %struct.batadv_neigh_node*) #1

declare dso_local i32 @batadv_neigh_node_put(%struct.batadv_neigh_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
