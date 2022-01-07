; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_originator.c_batadv_hardif_neigh_get_or_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_originator.c_batadv_hardif_neigh_get_or_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hardif_neigh_node = type { i32 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_orig_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.batadv_hardif_neigh_node* (%struct.batadv_hard_iface*, i32*, %struct.batadv_orig_node*)* @batadv_hardif_neigh_get_or_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.batadv_hardif_neigh_node* @batadv_hardif_neigh_get_or_create(%struct.batadv_hard_iface* %0, i32* %1, %struct.batadv_orig_node* %2) #0 {
  %4 = alloca %struct.batadv_hardif_neigh_node*, align 8
  %5 = alloca %struct.batadv_hard_iface*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.batadv_orig_node*, align 8
  %8 = alloca %struct.batadv_hardif_neigh_node*, align 8
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.batadv_orig_node* %2, %struct.batadv_orig_node** %7, align 8
  %9 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call %struct.batadv_hardif_neigh_node* @batadv_hardif_neigh_get(%struct.batadv_hard_iface* %9, i32* %10)
  store %struct.batadv_hardif_neigh_node* %11, %struct.batadv_hardif_neigh_node** %8, align 8
  %12 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %8, align 8
  %13 = icmp ne %struct.batadv_hardif_neigh_node* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %8, align 8
  store %struct.batadv_hardif_neigh_node* %15, %struct.batadv_hardif_neigh_node** %4, align 8
  br label %21

16:                                               ; preds = %3
  %17 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %20 = call %struct.batadv_hardif_neigh_node* @batadv_hardif_neigh_create(%struct.batadv_hard_iface* %17, i32* %18, %struct.batadv_orig_node* %19)
  store %struct.batadv_hardif_neigh_node* %20, %struct.batadv_hardif_neigh_node** %4, align 8
  br label %21

21:                                               ; preds = %16, %14
  %22 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %4, align 8
  ret %struct.batadv_hardif_neigh_node* %22
}

declare dso_local %struct.batadv_hardif_neigh_node* @batadv_hardif_neigh_get(%struct.batadv_hard_iface*, i32*) #1

declare dso_local %struct.batadv_hardif_neigh_node* @batadv_hardif_neigh_create(%struct.batadv_hard_iface*, i32*, %struct.batadv_orig_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
