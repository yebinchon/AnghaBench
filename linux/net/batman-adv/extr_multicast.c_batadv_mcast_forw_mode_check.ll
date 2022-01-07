; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_forw_mode_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_forw_mode_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ethhdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CONFIG_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.sk_buff*, i32*, i32*)* @batadv_mcast_forw_mode_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_mcast_forw_mode_check(%struct.batadv_priv* %0, %struct.sk_buff* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ethhdr*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %11)
  store %struct.ethhdr* %12, %struct.ethhdr** %10, align 8
  %13 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %14 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %13, i32 0, i32 0
  %15 = call i32 @atomic_read(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %47

20:                                               ; preds = %4
  %21 = load %struct.ethhdr*, %struct.ethhdr** %10, align 8
  %22 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohs(i32 %23)
  switch i32 %24, label %44 [
    i32 129, label %25
    i32 128, label %31
  ]

25:                                               ; preds = %20
  %26 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @batadv_mcast_forw_mode_check_ipv4(%struct.batadv_priv* %26, %struct.sk_buff* %27, i32* %28, i32* %29)
  store i32 %30, i32* %5, align 4
  br label %47

31:                                               ; preds = %20
  %32 = load i32, i32* @CONFIG_IPV6, align 4
  %33 = call i32 @IS_ENABLED(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %47

38:                                               ; preds = %31
  %39 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @batadv_mcast_forw_mode_check_ipv6(%struct.batadv_priv* %39, %struct.sk_buff* %40, i32* %41, i32* %42)
  store i32 %43, i32* %5, align 4
  br label %47

44:                                               ; preds = %20
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %44, %38, %35, %25, %17
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @batadv_mcast_forw_mode_check_ipv4(%struct.batadv_priv*, %struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @batadv_mcast_forw_mode_check_ipv6(%struct.batadv_priv*, %struct.sk_buff*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
