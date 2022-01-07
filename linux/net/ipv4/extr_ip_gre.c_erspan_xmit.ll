; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_erspan_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_erspan_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ip_tunnel = type { i32, %struct.TYPE_3__, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@ETH_P_ERSPAN = common dso_local global i32 0, align 4
@ETH_P_ERSPAN2 = common dso_local global i32 0, align 4
@TUNNEL_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @erspan_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erspan_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ip_tunnel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %9)
  store %struct.ip_tunnel* %10, %struct.ip_tunnel** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @pskb_inet_may_pull(%struct.sk_buff* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %119

15:                                               ; preds = %2
  %16 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %17 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call i32 @erspan_fb_xmit(%struct.sk_buff* %21, %struct.net_device* %22)
  %24 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %24, i32* %3, align 4
  br label %128

25:                                               ; preds = %15
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i64 @gre_handle_offloads(%struct.sk_buff* %26, i32 0)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %119

30:                                               ; preds = %25
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @skb_cow_head(%struct.sk_buff* %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %119

38:                                               ; preds = %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = icmp sgt i64 %41, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %38
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = call i32 @pskb_trim(%struct.sk_buff* %51, i64 %58)
  store i32 1, i32* %7, align 4
  br label %60

60:                                               ; preds = %50, %38
  %61 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %62 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %68 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ntohl(i32 %70)
  %72 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %73 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @erspan_build_header(%struct.sk_buff* %66, i32 %71, i32 %74, i32 %75, i32 1)
  %77 = load i32, i32* @ETH_P_ERSPAN, align 4
  %78 = call i32 @htons(i32 %77)
  store i32 %78, i32* %8, align 4
  br label %103

79:                                               ; preds = %60
  %80 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %81 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %101

84:                                               ; preds = %79
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %87 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ntohl(i32 %89)
  %91 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %92 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %95 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @erspan_build_header_v2(%struct.sk_buff* %85, i32 %90, i32 %93, i32 %96, i32 %97, i32 1)
  %99 = load i32, i32* @ETH_P_ERSPAN2, align 4
  %100 = call i32 @htons(i32 %99)
  store i32 %100, i32* %8, align 4
  br label %102

101:                                              ; preds = %79
  br label %119

102:                                              ; preds = %84
  br label %103

103:                                              ; preds = %102, %65
  %104 = load i32, i32* @TUNNEL_KEY, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %107 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, %105
  store i32 %110, i32* %108, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = load %struct.net_device*, %struct.net_device** %5, align 8
  %113 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %114 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @__gre_xmit(%struct.sk_buff* %111, %struct.net_device* %112, i32* %115, i32 %116)
  %118 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %118, i32* %3, align 4
  br label %128

119:                                              ; preds = %101, %37, %29, %14
  %120 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %121 = call i32 @kfree_skb(%struct.sk_buff* %120)
  %122 = load %struct.net_device*, %struct.net_device** %5, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  %127 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %119, %103, %20
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pskb_inet_may_pull(%struct.sk_buff*) #1

declare dso_local i32 @erspan_fb_xmit(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @gre_handle_offloads(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @erspan_build_header(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @erspan_build_header_v2(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__gre_xmit(%struct.sk_buff*, %struct.net_device*, i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
