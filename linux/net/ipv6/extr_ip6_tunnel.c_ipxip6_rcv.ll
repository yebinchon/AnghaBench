; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ipxip6_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ipxip6_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tnl_ptk_info = type { i32 }
%struct.ip6_tnl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ipv6hdr = type { i32, i32 }
%struct.metadata_dst = type { i32 }

@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@log_ecn_error = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64, %struct.tnl_ptk_info*, i32 (%struct.ip6_tnl*, %struct.ipv6hdr*, %struct.sk_buff*)*)* @ipxip6_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipxip6_rcv(%struct.sk_buff* %0, i64 %1, %struct.tnl_ptk_info* %2, i32 (%struct.ip6_tnl*, %struct.ipv6hdr*, %struct.sk_buff*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tnl_ptk_info*, align 8
  %9 = alloca i32 (%struct.ip6_tnl*, %struct.ipv6hdr*, %struct.sk_buff*)*, align 8
  %10 = alloca %struct.ip6_tnl*, align 8
  %11 = alloca %struct.ipv6hdr*, align 8
  %12 = alloca %struct.metadata_dst*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.tnl_ptk_info* %2, %struct.tnl_ptk_info** %8, align 8
  store i32 (%struct.ip6_tnl*, %struct.ipv6hdr*, %struct.sk_buff*)* %3, i32 (%struct.ip6_tnl*, %struct.ipv6hdr*, %struct.sk_buff*)** %9, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %15)
  store %struct.ipv6hdr* %16, %struct.ipv6hdr** %11, align 8
  store %struct.metadata_dst* null, %struct.metadata_dst** %12, align 8
  store i32 -1, i32* %13, align 4
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_net(i32 %20)
  %22 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %23 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %22, i32 0, i32 0
  %24 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %25 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %24, i32 0, i32 1
  %26 = call %struct.ip6_tnl* @ip6_tnl_lookup(i32 %21, i32* %23, i32* %25)
  store %struct.ip6_tnl* %26, %struct.ip6_tnl** %10, align 8
  %27 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %28 = icmp ne %struct.ip6_tnl* %27, null
  br i1 %28, label %29, label %88

29:                                               ; preds = %4
  %30 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %31 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @READ_ONCE(i32 %33)
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i64, i64* %14, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %91

42:                                               ; preds = %38, %29
  %43 = load i32, i32* @XFRM_POLICY_IN, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call i32 @xfrm6_policy_check(i32* null, i32 %43, %struct.sk_buff* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %91

48:                                               ; preds = %42
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %49)
  store %struct.ipv6hdr* %50, %struct.ipv6hdr** %11, align 8
  %51 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %52 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %53 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %52, i32 0, i32 1
  %54 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %55 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %54, i32 0, i32 0
  %56 = call i32 @ip6_tnl_rcv_ctl(%struct.ip6_tnl* %51, i32* %53, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  br label %91

59:                                               ; preds = %48
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %62 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @iptunnel_pull_header(%struct.sk_buff* %60, i32 0, i32 %63, i32 0)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %91

67:                                               ; preds = %59
  %68 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %69 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = call %struct.metadata_dst* @ipv6_tun_rx_dst(%struct.sk_buff* %74, i32 0, i32 0, i32 0)
  store %struct.metadata_dst* %75, %struct.metadata_dst** %12, align 8
  %76 = load %struct.metadata_dst*, %struct.metadata_dst** %12, align 8
  %77 = icmp ne %struct.metadata_dst* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %91

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %67
  %81 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %84 = load %struct.metadata_dst*, %struct.metadata_dst** %12, align 8
  %85 = load i32 (%struct.ip6_tnl*, %struct.ipv6hdr*, %struct.sk_buff*)*, i32 (%struct.ip6_tnl*, %struct.ipv6hdr*, %struct.sk_buff*)** %9, align 8
  %86 = load i32, i32* @log_ecn_error, align 4
  %87 = call i32 @__ip6_tnl_rcv(%struct.ip6_tnl* %81, %struct.sk_buff* %82, %struct.tnl_ptk_info* %83, %struct.metadata_dst* %84, i32 (%struct.ip6_tnl*, %struct.ipv6hdr*, %struct.sk_buff*)* %85, i32 %86)
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %80, %4
  %89 = call i32 (...) @rcu_read_unlock()
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %5, align 4
  br label %95

91:                                               ; preds = %78, %66, %58, %47, %41
  %92 = call i32 (...) @rcu_read_unlock()
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = call i32 @kfree_skb(%struct.sk_buff* %93)
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ip6_tnl* @ip6_tnl_lookup(i32, i32*, i32*) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @xfrm6_policy_check(i32*, i32, %struct.sk_buff*) #1

declare dso_local i32 @ip6_tnl_rcv_ctl(%struct.ip6_tnl*, i32*, i32*) #1

declare dso_local i64 @iptunnel_pull_header(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local %struct.metadata_dst* @ipv6_tun_rx_dst(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @__ip6_tnl_rcv(%struct.ip6_tnl*, %struct.sk_buff*, %struct.tnl_ptk_info*, %struct.metadata_dst*, i32 (%struct.ip6_tnl*, %struct.ipv6hdr*, %struct.sk_buff*)*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
