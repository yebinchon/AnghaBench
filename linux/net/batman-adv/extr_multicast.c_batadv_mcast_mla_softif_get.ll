; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_mla_softif_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_mla_softif_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hlist_head = type { i32 }
%struct.batadv_mcast_mla_flags = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.hlist_head*, %struct.batadv_mcast_mla_flags*)* @batadv_mcast_mla_softif_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_mcast_mla_softif_get(%struct.net_device* %0, %struct.hlist_head* %1, %struct.batadv_mcast_mla_flags* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.hlist_head*, align 8
  %6 = alloca %struct.batadv_mcast_mla_flags*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.hlist_head* %1, %struct.hlist_head** %5, align 8
  store %struct.batadv_mcast_mla_flags* %2, %struct.batadv_mcast_mla_flags** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.net_device* @batadv_mcast_get_bridge(%struct.net_device* %10)
  store %struct.net_device* %11, %struct.net_device** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %15, %struct.net_device** %4, align 8
  br label %16

16:                                               ; preds = %14, %3
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = load %struct.hlist_head*, %struct.hlist_head** %5, align 8
  %19 = load %struct.batadv_mcast_mla_flags*, %struct.batadv_mcast_mla_flags** %6, align 8
  %20 = call i32 @batadv_mcast_mla_softif_get_ipv4(%struct.net_device* %17, %struct.hlist_head* %18, %struct.batadv_mcast_mla_flags* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %33

24:                                               ; preds = %16
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load %struct.hlist_head*, %struct.hlist_head** %5, align 8
  %27 = load %struct.batadv_mcast_mla_flags*, %struct.batadv_mcast_mla_flags** %6, align 8
  %28 = call i32 @batadv_mcast_mla_softif_get_ipv6(%struct.net_device* %25, %struct.hlist_head* %26, %struct.batadv_mcast_mla_flags* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %33

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %31, %23
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = icmp ne %struct.net_device* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = call i32 @dev_put(%struct.net_device* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %40, %41
  ret i32 %42
}

declare dso_local %struct.net_device* @batadv_mcast_get_bridge(%struct.net_device*) #1

declare dso_local i32 @batadv_mcast_mla_softif_get_ipv4(%struct.net_device*, %struct.hlist_head*, %struct.batadv_mcast_mla_flags*) #1

declare dso_local i32 @batadv_mcast_mla_softif_get_ipv6(%struct.net_device*, %struct.hlist_head*, %struct.batadv_mcast_mla_flags*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
