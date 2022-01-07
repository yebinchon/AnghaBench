; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_increment_features.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_increment_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_CSUM_MASK = common dso_local global i32 0, align 4
@NETIF_F_VLAN_CHALLENGED = common dso_local global i32 0, align 4
@NETIF_F_ONE_FOR_ALL = common dso_local global i32 0, align 4
@NETIF_F_ALL_FOR_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netdev_increment_features(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @NETIF_F_CSUM_MASK, align 4
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %11, %3
  %16 = load i32, i32* @NETIF_F_VLAN_CHALLENGED, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @NETIF_F_ONE_FOR_ALL, align 4
  %21 = load i32, i32* @NETIF_F_CSUM_MASK, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @NETIF_F_ALL_FOR_ALL, align 4
  %30 = xor i32 %29, -1
  %31 = or i32 %28, %30
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %15
  %39 = load i32, i32* @NETIF_F_CSUM_MASK, align 4
  %40 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %38, %15
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
