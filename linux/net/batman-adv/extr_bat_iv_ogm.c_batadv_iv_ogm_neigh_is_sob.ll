; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_neigh_is_sob.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_neigh_is_sob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_neigh_node = type { i32 }
%struct.batadv_hard_iface = type { i32 }

@BATADV_TQ_SIMILARITY_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_neigh_node*, %struct.batadv_hard_iface*, %struct.batadv_neigh_node*, %struct.batadv_hard_iface*)* @batadv_iv_ogm_neigh_is_sob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_iv_ogm_neigh_is_sob(%struct.batadv_neigh_node* %0, %struct.batadv_hard_iface* %1, %struct.batadv_neigh_node* %2, %struct.batadv_hard_iface* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.batadv_neigh_node*, align 8
  %7 = alloca %struct.batadv_hard_iface*, align 8
  %8 = alloca %struct.batadv_neigh_node*, align 8
  %9 = alloca %struct.batadv_hard_iface*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.batadv_neigh_node* %0, %struct.batadv_neigh_node** %6, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %7, align 8
  store %struct.batadv_neigh_node* %2, %struct.batadv_neigh_node** %8, align 8
  store %struct.batadv_hard_iface* %3, %struct.batadv_hard_iface** %9, align 8
  %12 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %6, align 8
  %13 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %14 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %8, align 8
  %15 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %16 = call i32 @batadv_iv_ogm_neigh_diff(%struct.batadv_neigh_node* %12, %struct.batadv_hard_iface* %13, %struct.batadv_neigh_node* %14, %struct.batadv_hard_iface* %15, i32* %11)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %27

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @BATADV_TQ_SIMILARITY_THRESHOLD, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp sgt i32 %21, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @batadv_iv_ogm_neigh_diff(%struct.batadv_neigh_node*, %struct.batadv_hard_iface*, %struct.batadv_neigh_node*, %struct.batadv_hard_iface*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
