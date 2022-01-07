; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v.c_batadv_v_neigh_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v.c_batadv_v_neigh_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_neigh_node = type { i32 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_neigh_ifinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_neigh_node*, %struct.batadv_hard_iface*, %struct.batadv_neigh_node*, %struct.batadv_hard_iface*)* @batadv_v_neigh_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_v_neigh_cmp(%struct.batadv_neigh_node* %0, %struct.batadv_hard_iface* %1, %struct.batadv_neigh_node* %2, %struct.batadv_hard_iface* %3) #0 {
  %5 = alloca %struct.batadv_neigh_node*, align 8
  %6 = alloca %struct.batadv_hard_iface*, align 8
  %7 = alloca %struct.batadv_neigh_node*, align 8
  %8 = alloca %struct.batadv_hard_iface*, align 8
  %9 = alloca %struct.batadv_neigh_ifinfo*, align 8
  %10 = alloca %struct.batadv_neigh_ifinfo*, align 8
  %11 = alloca i32, align 4
  store %struct.batadv_neigh_node* %0, %struct.batadv_neigh_node** %5, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %6, align 8
  store %struct.batadv_neigh_node* %2, %struct.batadv_neigh_node** %7, align 8
  store %struct.batadv_hard_iface* %3, %struct.batadv_hard_iface** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %5, align 8
  %13 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %14 = call %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node* %12, %struct.batadv_hard_iface* %13)
  store %struct.batadv_neigh_ifinfo* %14, %struct.batadv_neigh_ifinfo** %9, align 8
  %15 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %9, align 8
  %16 = icmp ne %struct.batadv_neigh_ifinfo* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %40

18:                                               ; preds = %4
  %19 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %7, align 8
  %20 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %8, align 8
  %21 = call %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node* %19, %struct.batadv_hard_iface* %20)
  store %struct.batadv_neigh_ifinfo* %21, %struct.batadv_neigh_ifinfo** %10, align 8
  %22 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %10, align 8
  %23 = icmp ne %struct.batadv_neigh_ifinfo* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %37

25:                                               ; preds = %18
  %26 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %9, align 8
  %27 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %10, align 8
  %31 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %29, %33
  store i32 %34, i32* %11, align 4
  %35 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %10, align 8
  %36 = call i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo* %35)
  br label %37

37:                                               ; preds = %25, %24
  %38 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %9, align 8
  %39 = call i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo* %38)
  br label %40

40:                                               ; preds = %37, %17
  %41 = load i32, i32* %11, align 4
  ret i32 %41
}

declare dso_local %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
