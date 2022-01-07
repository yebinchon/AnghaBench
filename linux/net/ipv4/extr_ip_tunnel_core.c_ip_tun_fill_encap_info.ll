; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel_core.c_ip_tun_fill_encap_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel_core.c_ip_tun_fill_encap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.lwtunnel_state = type { i32 }
%struct.ip_tunnel_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@LWTUNNEL_IP_ID = common dso_local global i32 0, align 4
@LWTUNNEL_IP_PAD = common dso_local global i32 0, align 4
@LWTUNNEL_IP_DST = common dso_local global i32 0, align 4
@LWTUNNEL_IP_SRC = common dso_local global i32 0, align 4
@LWTUNNEL_IP_TOS = common dso_local global i32 0, align 4
@LWTUNNEL_IP_TTL = common dso_local global i32 0, align 4
@LWTUNNEL_IP_FLAGS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.lwtunnel_state*)* @ip_tun_fill_encap_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_tun_fill_encap_info(%struct.sk_buff* %0, %struct.lwtunnel_state* %1) #0 {
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
  %10 = load i32, i32* @LWTUNNEL_IP_ID, align 4
  %11 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %12 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @LWTUNNEL_IP_PAD, align 4
  %16 = call i64 @nla_put_be64(%struct.sk_buff* %9, i32 %10, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %67, label %18

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load i32, i32* @LWTUNNEL_IP_DST, align 4
  %21 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %22 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @nla_put_in_addr(%struct.sk_buff* %19, i32 %20, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %67, label %29

29:                                               ; preds = %18
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* @LWTUNNEL_IP_SRC, align 4
  %32 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %33 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @nla_put_in_addr(%struct.sk_buff* %30, i32 %31, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %67, label %40

40:                                               ; preds = %29
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load i32, i32* @LWTUNNEL_IP_TOS, align 4
  %43 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %44 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @nla_put_u8(%struct.sk_buff* %41, i32 %42, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %40
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = load i32, i32* @LWTUNNEL_IP_TTL, align 4
  %52 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %53 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @nla_put_u8(%struct.sk_buff* %50, i32 %51, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %49
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = load i32, i32* @LWTUNNEL_IP_FLAGS, align 4
  %61 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %62 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @nla_put_be16(%struct.sk_buff* %59, i32 %60, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58, %49, %40, %29, %18, %2
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %71

70:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %67
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.ip_tunnel_info* @lwt_tun_info(%struct.lwtunnel_state*) #1

declare dso_local i64 @nla_put_be64(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_in_addr(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
