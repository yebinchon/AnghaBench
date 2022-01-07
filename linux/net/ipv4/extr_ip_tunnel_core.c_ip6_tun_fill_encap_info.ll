; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel_core.c_ip6_tun_fill_encap_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel_core.c_ip6_tun_fill_encap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.lwtunnel_state = type { i32 }
%struct.ip_tunnel_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@LWTUNNEL_IP6_ID = common dso_local global i32 0, align 4
@LWTUNNEL_IP6_PAD = common dso_local global i32 0, align 4
@LWTUNNEL_IP6_DST = common dso_local global i32 0, align 4
@LWTUNNEL_IP6_SRC = common dso_local global i32 0, align 4
@LWTUNNEL_IP6_TC = common dso_local global i32 0, align 4
@LWTUNNEL_IP6_HOPLIMIT = common dso_local global i32 0, align 4
@LWTUNNEL_IP6_FLAGS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.lwtunnel_state*)* @ip6_tun_fill_encap_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_tun_fill_encap_info(%struct.sk_buff* %0, %struct.lwtunnel_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.lwtunnel_state*, align 8
  %6 = alloca %struct.ip_tunnel_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.lwtunnel_state* %1, %struct.lwtunnel_state** %5, align 8
  %7 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %5, align 8
  %8 = call %struct.ip_tunnel_info* @lwt_tun_info(%struct.lwtunnel_state* %7)
  store %struct.ip_tunnel_info* %8, %struct.ip_tunnel_info** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @LWTUNNEL_IP6_ID, align 4
  %11 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %12 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @LWTUNNEL_IP6_PAD, align 4
  %16 = call i64 @nla_put_be64(%struct.sk_buff* %9, i32 %10, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %65, label %18

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load i32, i32* @LWTUNNEL_IP6_DST, align 4
  %21 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %22 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = call i64 @nla_put_in6_addr(%struct.sk_buff* %19, i32 %20, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %65, label %28

28:                                               ; preds = %18
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i32, i32* @LWTUNNEL_IP6_SRC, align 4
  %31 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %32 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i64 @nla_put_in6_addr(%struct.sk_buff* %29, i32 %30, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %65, label %38

38:                                               ; preds = %28
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i32, i32* @LWTUNNEL_IP6_TC, align 4
  %41 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %42 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @nla_put_u8(%struct.sk_buff* %39, i32 %40, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %38
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = load i32, i32* @LWTUNNEL_IP6_HOPLIMIT, align 4
  %50 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %51 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @nla_put_u8(%struct.sk_buff* %48, i32 %49, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %47
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load i32, i32* @LWTUNNEL_IP6_FLAGS, align 4
  %59 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %60 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @nla_put_be16(%struct.sk_buff* %57, i32 %58, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56, %47, %38, %28, %18, %2
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %69

68:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %65
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.ip_tunnel_info* @lwt_tun_info(%struct.lwtunnel_state*) #1

declare dso_local i64 @nla_put_be64(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_in6_addr(%struct.sk_buff*, i32, i32*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
