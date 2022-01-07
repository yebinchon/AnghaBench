; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v.c_batadv_v_neigh_is_sob.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v.c_batadv_v_neigh_is_sob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_neigh_node = type { i32 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_neigh_ifinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_neigh_node*, %struct.batadv_hard_iface*, %struct.batadv_neigh_node*, %struct.batadv_hard_iface*)* @batadv_v_neigh_is_sob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_v_neigh_is_sob(%struct.batadv_neigh_node* %0, %struct.batadv_hard_iface* %1, %struct.batadv_neigh_node* %2, %struct.batadv_hard_iface* %3) #0 {
  %5 = alloca %struct.batadv_neigh_node*, align 8
  %6 = alloca %struct.batadv_hard_iface*, align 8
  %7 = alloca %struct.batadv_neigh_node*, align 8
  %8 = alloca %struct.batadv_hard_iface*, align 8
  %9 = alloca %struct.batadv_neigh_ifinfo*, align 8
  %10 = alloca %struct.batadv_neigh_ifinfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.batadv_neigh_node* %0, %struct.batadv_neigh_node** %5, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %6, align 8
  store %struct.batadv_neigh_node* %2, %struct.batadv_neigh_node** %7, align 8
  store %struct.batadv_hard_iface* %3, %struct.batadv_hard_iface** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %5, align 8
  %14 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %15 = call %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node* %13, %struct.batadv_hard_iface* %14)
  store %struct.batadv_neigh_ifinfo* %15, %struct.batadv_neigh_ifinfo** %9, align 8
  %16 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %9, align 8
  %17 = icmp ne %struct.batadv_neigh_ifinfo* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %50

19:                                               ; preds = %4
  %20 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %7, align 8
  %21 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %8, align 8
  %22 = call %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node* %20, %struct.batadv_hard_iface* %21)
  store %struct.batadv_neigh_ifinfo* %22, %struct.batadv_neigh_ifinfo** %10, align 8
  %23 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %10, align 8
  %24 = icmp ne %struct.batadv_neigh_ifinfo* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %47

26:                                               ; preds = %19
  %27 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %9, align 8
  %28 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 4
  store i32 %31, i32* %11, align 4
  %32 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %9, align 8
  %33 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %10, align 8
  %39 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp sgt i32 %41, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %10, align 8
  %46 = call i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo* %45)
  br label %47

47:                                               ; preds = %26, %25
  %48 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %9, align 8
  %49 = call i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo* %48)
  br label %50

50:                                               ; preds = %47, %18
  %51 = load i32, i32* %12, align 4
  ret i32 %51
}

declare dso_local %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
