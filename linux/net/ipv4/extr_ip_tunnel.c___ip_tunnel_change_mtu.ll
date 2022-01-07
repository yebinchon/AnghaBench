; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c___ip_tunnel_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c___ip_tunnel_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ip_tunnel = type { i32 }

@IP_MAX_MTU = common dso_local global i32 0, align 4
@ETH_MIN_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ip_tunnel_change_mtu(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_tunnel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %11)
  store %struct.ip_tunnel* %12, %struct.ip_tunnel** %8, align 8
  %13 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %14 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @IP_MAX_MTU, align 4
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ETH_MIN_MTU, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %48

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %48

42:                                               ; preds = %36
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %32
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %44, %39, %29
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
