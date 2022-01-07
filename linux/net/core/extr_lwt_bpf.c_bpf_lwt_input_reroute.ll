; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_lwt_input_reroute.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_lwt_input_reroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.sk_buff*)* }
%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.net_device* }

@EINVAL = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@ipv6_stub = common dso_local global %struct.TYPE_4__* null, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @bpf_lwt_input_reroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_lwt_input_reroute(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @ETH_P_IP, align 4
  %13 = call i64 @htons(i32 %12)
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call %struct.TYPE_3__* @skb_dst(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %20)
  store %struct.iphdr* %21, %struct.iphdr** %6, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call i32 @dev_hold(%struct.net_device* %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = call i32 @skb_dst_drop(%struct.sk_buff* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %28 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %31 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %34 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = call i32 @ip_route_input_noref(%struct.sk_buff* %26, i32 %29, i32 %32, i32 %35, %struct.net_device* %36)
  store i32 %37, i32* %4, align 4
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = call i32 @dev_put(%struct.net_device* %38)
  br label %59

40:                                               ; preds = %1
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @ETH_P_IPV6, align 4
  %45 = call i64 @htons(i32 %44)
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = call i32 @skb_dst_drop(%struct.sk_buff* %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ipv6_stub, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %51, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = call i32 %52(%struct.sk_buff* %53)
  store i32 %54, i32* %4, align 4
  br label %58

55:                                               ; preds = %40
  %56 = load i32, i32* @EAFNOSUPPORT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %47
  br label %59

59:                                               ; preds = %58, %15
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %66

63:                                               ; preds = %59
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = call i32 @dst_input(%struct.sk_buff* %64)
  store i32 %65, i32* %2, align 4
  br label %70

66:                                               ; preds = %62
  %67 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %68 = call i32 @kfree_skb(%struct.sk_buff* %67)
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_3__* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @ip_route_input_noref(%struct.sk_buff*, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @dst_input(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
