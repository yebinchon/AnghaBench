; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_interface.c_xfrmi6_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_interface.c_xfrmi6_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.inet6_skb_parm = type { i32 }
%struct.ipv6hdr = type { i32, i32 }
%struct.net = type { i32 }
%struct.ip_comp_hdr = type { i32 }
%struct.ip_esp_hdr = type { i32 }
%struct.ip_auth_hdr = type { i32 }
%struct.xfrm_state = type { i32 }
%struct.xfrm_if = type { i32 }

@ICMPV6_PKT_TOOBIG = common dso_local global i64 0, align 8
@NDISC_REDIRECT = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.inet6_skb_parm*, i64, i64, i32, i32)* @xfrmi6_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrmi6_err(%struct.sk_buff* %0, %struct.inet6_skb_parm* %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.inet6_skb_parm*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ipv6hdr*, align 8
  %15 = alloca %struct.net*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ip_comp_hdr*, align 8
  %18 = alloca %struct.ip_esp_hdr*, align 8
  %19 = alloca %struct.ip_auth_hdr*, align 8
  %20 = alloca %struct.xfrm_state*, align 8
  %21 = alloca %struct.xfrm_if*, align 8
  %22 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.inet6_skb_parm* %1, %struct.inet6_skb_parm** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %26, %struct.ipv6hdr** %14, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call %struct.net* @dev_net(%struct.TYPE_2__* %29)
  store %struct.net* %30, %struct.net** %15, align 8
  %31 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %32 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  switch i32 %34, label %70 [
    i32 128, label %35
    i32 130, label %46
    i32 129, label %57
  ]

35:                                               ; preds = %6
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = inttoptr i64 %41 to %struct.ip_esp_hdr*
  store %struct.ip_esp_hdr* %42, %struct.ip_esp_hdr** %18, align 8
  %43 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %18, align 8
  %44 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %22, align 4
  br label %71

46:                                               ; preds = %6
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = inttoptr i64 %52 to %struct.ip_auth_hdr*
  store %struct.ip_auth_hdr* %53, %struct.ip_auth_hdr** %19, align 8
  %54 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %19, align 8
  %55 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %22, align 4
  br label %71

57:                                               ; preds = %6
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = inttoptr i64 %63 to %struct.ip_comp_hdr*
  store %struct.ip_comp_hdr* %64, %struct.ip_comp_hdr** %17, align 8
  %65 = load %struct.ip_comp_hdr*, %struct.ip_comp_hdr** %17, align 8
  %66 = getelementptr inbounds %struct.ip_comp_hdr, %struct.ip_comp_hdr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ntohs(i32 %67)
  %69 = call i32 @htonl(i32 %68)
  store i32 %69, i32* %22, align 4
  br label %71

70:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %128

71:                                               ; preds = %57, %46, %35
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* @ICMPV6_PKT_TOOBIG, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @NDISC_REDIRECT, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 0, i32* %7, align 4
  br label %128

80:                                               ; preds = %75, %71
  %81 = load %struct.net*, %struct.net** %15, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %86 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %85, i32 0, i32 1
  %87 = load i32, i32* %22, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* @AF_INET6, align 4
  %90 = call %struct.xfrm_state* @xfrm_state_lookup(%struct.net* %81, i32 %84, i32* %86, i32 %87, i32 %88, i32 %89)
  store %struct.xfrm_state* %90, %struct.xfrm_state** %20, align 8
  %91 = load %struct.xfrm_state*, %struct.xfrm_state** %20, align 8
  %92 = icmp ne %struct.xfrm_state* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %80
  store i32 0, i32* %7, align 4
  br label %128

94:                                               ; preds = %80
  %95 = load %struct.net*, %struct.net** %15, align 8
  %96 = load %struct.xfrm_state*, %struct.xfrm_state** %20, align 8
  %97 = call %struct.xfrm_if* @xfrmi_lookup(%struct.net* %95, %struct.xfrm_state* %96)
  store %struct.xfrm_if* %97, %struct.xfrm_if** %21, align 8
  %98 = load %struct.xfrm_if*, %struct.xfrm_if** %21, align 8
  %99 = icmp ne %struct.xfrm_if* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %94
  %101 = load %struct.xfrm_state*, %struct.xfrm_state** %20, align 8
  %102 = call i32 @xfrm_state_put(%struct.xfrm_state* %101)
  store i32 -1, i32* %7, align 4
  br label %128

103:                                              ; preds = %94
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* @NDISC_REDIRECT, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %103
  %108 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %109 = load %struct.net*, %struct.net** %15, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.net*, %struct.net** %15, align 8
  %116 = call i32 @sock_net_uid(%struct.net* %115, i32* null)
  %117 = call i32 @ip6_redirect(%struct.sk_buff* %108, %struct.net* %109, i32 %114, i32 0, i32 %116)
  br label %125

118:                                              ; preds = %103
  %119 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %120 = load %struct.net*, %struct.net** %15, align 8
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.net*, %struct.net** %15, align 8
  %123 = call i32 @sock_net_uid(%struct.net* %122, i32* null)
  %124 = call i32 @ip6_update_pmtu(%struct.sk_buff* %119, %struct.net* %120, i32 %121, i32 0, i32 0, i32 %123)
  br label %125

125:                                              ; preds = %118, %107
  %126 = load %struct.xfrm_state*, %struct.xfrm_state** %20, align 8
  %127 = call i32 @xfrm_state_put(%struct.xfrm_state* %126)
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %125, %100, %93, %79, %70
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_2__*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup(%struct.net*, i32, i32*, i32, i32, i32) #1

declare dso_local %struct.xfrm_if* @xfrmi_lookup(%struct.net*, %struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

declare dso_local i32 @ip6_redirect(%struct.sk_buff*, %struct.net*, i32, i32, i32) #1

declare dso_local i32 @sock_net_uid(%struct.net*, i32*) #1

declare dso_local i32 @ip6_update_pmtu(%struct.sk_buff*, %struct.net*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
