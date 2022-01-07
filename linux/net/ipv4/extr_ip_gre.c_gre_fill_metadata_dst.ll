; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_gre_fill_metadata_dst.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_gre_fill_metadata_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key }
%struct.ip_tunnel_key = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.rtable = type { i32 }
%struct.flowi4 = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IPPROTO_GRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*)* @gre_fill_metadata_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gre_fill_metadata_dst(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ip_tunnel_info*, align 8
  %7 = alloca %struct.ip_tunnel_key*, align 8
  %8 = alloca %struct.rtable*, align 8
  %9 = alloca %struct.flowi4, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.ip_tunnel_info* @skb_tunnel_info(%struct.sk_buff* %10)
  store %struct.ip_tunnel_info* %11, %struct.ip_tunnel_info** %6, align 8
  %12 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %13 = call i64 @ip_tunnel_info_af(%struct.ip_tunnel_info* %12)
  %14 = load i64, i64* @AF_INET, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %21 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %20, i32 0, i32 0
  store %struct.ip_tunnel_key* %21, %struct.ip_tunnel_key** %7, align 8
  %22 = load i32, i32* @IPPROTO_GRE, align 4
  %23 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %7, align 8
  %24 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %7, align 8
  %29 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %7, align 8
  %34 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @tunnel_id_to_key32(i32 %35)
  %37 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %7, align 8
  %38 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i32 @skb_get_hash(%struct.sk_buff* %43)
  %45 = call i32 @ip_tunnel_init_flow(%struct.flowi4* %9, i32 %22, i32 %27, i32 %32, i32 %36, i32 %39, i32 0, i32 %42, i32 %44)
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = call i32 @dev_net(%struct.net_device* %46)
  %48 = call %struct.rtable* @ip_route_output_key(i32 %47, %struct.flowi4* %9)
  store %struct.rtable* %48, %struct.rtable** %8, align 8
  %49 = load %struct.rtable*, %struct.rtable** %8, align 8
  %50 = call i64 @IS_ERR(%struct.rtable* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %19
  %53 = load %struct.rtable*, %struct.rtable** %8, align 8
  %54 = call i32 @PTR_ERR(%struct.rtable* %53)
  store i32 %54, i32* %3, align 4
  br label %65

55:                                               ; preds = %19
  %56 = load %struct.rtable*, %struct.rtable** %8, align 8
  %57 = call i32 @ip_rt_put(%struct.rtable* %56)
  %58 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %61 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %59, i32* %64, align 4
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %55, %52, %16
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.ip_tunnel_info* @skb_tunnel_info(%struct.sk_buff*) #1

declare dso_local i64 @ip_tunnel_info_af(%struct.ip_tunnel_info*) #1

declare dso_local i32 @ip_tunnel_init_flow(%struct.flowi4*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tunnel_id_to_key32(i32) #1

declare dso_local i32 @skb_get_hash(%struct.sk_buff*) #1

declare dso_local %struct.rtable* @ip_route_output_key(i32, %struct.flowi4*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @PTR_ERR(%struct.rtable*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
