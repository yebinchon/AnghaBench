; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_forw_mode_check_ipv4.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_forw_mode_check_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.sk_buff*, i32*, i32*)* @batadv_mcast_forw_mode_check_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_mcast_forw_mode_check_ipv4(%struct.batadv_priv* %0, %struct.sk_buff* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.iphdr*, align 8
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
  br label %38

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call i64 @batadv_mcast_is_report_ipv4(%struct.sk_buff* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %38

24:                                               ; preds = %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %25)
  store %struct.iphdr* %26, %struct.iphdr** %10, align 8
  %27 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %28 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ipv4_is_local_multicast(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32*, i32** %8, align 8
  store i32 1, i32* %33, align 4
  br label %37

34:                                               ; preds = %24
  %35 = load i32, i32* @ETH_P_IP, align 4
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %32
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %21, %14
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @batadv_mcast_is_report_ipv4(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ipv4_is_local_multicast(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
