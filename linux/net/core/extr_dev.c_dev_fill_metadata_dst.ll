; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_fill_metadata_dst.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_fill_metadata_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.sk_buff = type { i32 }
%struct.ip_tunnel_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IP_TUNNEL_INFO_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_fill_metadata_dst(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ip_tunnel_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.net_device*, %struct.sk_buff*)**
  %17 = load i32 (%struct.net_device*, %struct.sk_buff*)*, i32 (%struct.net_device*, %struct.sk_buff*)** %16, align 8
  %18 = icmp ne i32 (%struct.net_device*, %struct.sk_buff*)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %11, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %54

22:                                               ; preds = %11
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call %struct.ip_tunnel_info* @skb_tunnel_info_unclone(%struct.sk_buff* %23)
  store %struct.ip_tunnel_info* %24, %struct.ip_tunnel_info** %6, align 8
  %25 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %26 = icmp ne %struct.ip_tunnel_info* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %54

30:                                               ; preds = %22
  %31 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %32 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IP_TUNNEL_INFO_TX, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %54

44:                                               ; preds = %30
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = bitcast {}** %48 to i32 (%struct.net_device*, %struct.sk_buff*)**
  %50 = load i32 (%struct.net_device*, %struct.sk_buff*)*, i32 (%struct.net_device*, %struct.sk_buff*)** %49, align 8
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call i32 %50(%struct.net_device* %51, %struct.sk_buff* %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %44, %41, %27, %19
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.ip_tunnel_info* @skb_tunnel_info_unclone(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
