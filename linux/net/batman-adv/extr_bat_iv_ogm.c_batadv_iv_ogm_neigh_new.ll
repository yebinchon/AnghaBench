; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_neigh_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_neigh_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_neigh_node = type { %struct.batadv_orig_node* }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_orig_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.batadv_neigh_node* (%struct.batadv_hard_iface*, i32*, %struct.batadv_orig_node*, %struct.batadv_orig_node*)* @batadv_iv_ogm_neigh_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.batadv_neigh_node* @batadv_iv_ogm_neigh_new(%struct.batadv_hard_iface* %0, i32* %1, %struct.batadv_orig_node* %2, %struct.batadv_orig_node* %3) #0 {
  %5 = alloca %struct.batadv_hard_iface*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.batadv_orig_node*, align 8
  %8 = alloca %struct.batadv_orig_node*, align 8
  %9 = alloca %struct.batadv_neigh_node*, align 8
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.batadv_orig_node* %2, %struct.batadv_orig_node** %7, align 8
  store %struct.batadv_orig_node* %3, %struct.batadv_orig_node** %8, align 8
  %10 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %11 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call %struct.batadv_neigh_node* @batadv_neigh_node_get_or_create(%struct.batadv_orig_node* %10, %struct.batadv_hard_iface* %11, i32* %12)
  store %struct.batadv_neigh_node* %13, %struct.batadv_neigh_node** %9, align 8
  %14 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %9, align 8
  %15 = icmp ne %struct.batadv_neigh_node* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %21

17:                                               ; preds = %4
  %18 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  %19 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %9, align 8
  %20 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %19, i32 0, i32 0
  store %struct.batadv_orig_node* %18, %struct.batadv_orig_node** %20, align 8
  br label %21

21:                                               ; preds = %17, %16
  %22 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %9, align 8
  ret %struct.batadv_neigh_node* %22
}

declare dso_local %struct.batadv_neigh_node* @batadv_neigh_node_get_or_create(%struct.batadv_orig_node*, %struct.batadv_hard_iface*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
