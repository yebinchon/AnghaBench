; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_forw_mode_check_ipv6.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_forw_mode_check_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ipv6hdr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPV6_ADDR_SCOPE_LINKLOCAL = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.sk_buff*, i32*, i32*)* @batadv_mcast_forw_mode_check_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_mcast_forw_mode_check_ipv6(%struct.batadv_priv* %0, %struct.sk_buff* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ipv6hdr*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = call i32 @pskb_may_pull(%struct.sk_buff* %11, i32 8)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %53

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call i64 @batadv_mcast_is_report_ipv6(%struct.sk_buff* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %53

24:                                               ; preds = %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %25)
  store %struct.ipv6hdr* %26, %struct.ipv6hdr** %10, align 8
  %27 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %28 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %27, i32 0, i32 0
  %29 = call i64 @IPV6_ADDR_MC_SCOPE(i32* %28)
  %30 = load i64, i64* @IPV6_ADDR_SCOPE_LINKLOCAL, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %53

35:                                               ; preds = %24
  %36 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %37 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %36, i32 0, i32 0
  %38 = call i64 @ipv6_addr_is_ll_all_nodes(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32*, i32** %8, align 8
  store i32 1, i32* %41, align 4
  br label %52

42:                                               ; preds = %35
  %43 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %44 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %43, i32 0, i32 0
  %45 = call i64 @IPV6_ADDR_MC_SCOPE(i32* %44)
  %46 = load i64, i64* @IPV6_ADDR_SCOPE_LINKLOCAL, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @ETH_P_IPV6, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %42
  br label %52

52:                                               ; preds = %51, %40
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %32, %21, %14
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @batadv_mcast_is_report_ipv6(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @IPV6_ADDR_MC_SCOPE(i32*) #1

declare dso_local i64 @ipv6_addr_is_ll_all_nodes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
