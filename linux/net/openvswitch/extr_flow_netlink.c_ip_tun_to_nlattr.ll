; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_ip_tun_to_nlattr.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_ip_tun_to_nlattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_tunnel_key = type { i32 }
%struct.nlattr = type { i32 }

@OVS_KEY_ATTR_TUNNEL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ip_tunnel_key*, i8*, i32, i16, i32)* @ip_tun_to_nlattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_tun_to_nlattr(%struct.sk_buff* %0, %struct.ip_tunnel_key* %1, i8* %2, i32 %3, i16 zeroext %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ip_tunnel_key*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.ip_tunnel_key* %1, %struct.ip_tunnel_key** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i16 %4, i16* %12, align 2
  store i32 %5, i32* %13, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = load i32, i32* @OVS_KEY_ATTR_TUNNEL, align 4
  %18 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %16, i32 %17)
  store %struct.nlattr* %18, %struct.nlattr** %14, align 8
  %19 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @EMSGSIZE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %40

24:                                               ; preds = %6
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i16, i16* %12, align 2
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @__ip_tun_to_nlattr(%struct.sk_buff* %25, %struct.ip_tunnel_key* %26, i8* %27, i32 %28, i16 zeroext %29, i32 %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %7, align 4
  br label %40

36:                                               ; preds = %24
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %39 = call i32 @nla_nest_end(%struct.sk_buff* %37, %struct.nlattr* %38)
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %36, %34, %21
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @__ip_tun_to_nlattr(%struct.sk_buff*, %struct.ip_tunnel_key*, i8*, i32, i16 zeroext, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
