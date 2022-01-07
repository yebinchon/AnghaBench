; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_vti.c_vti4_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_vti.c_vti4_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.xfrm_state = type { i32 }
%struct.ip_tunnel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ip_esp_hdr = type { i32 }
%struct.ip_auth_hdr = type { i32 }
%struct.ip_comp_hdr = type { i32 }
%struct.net = type { i32 }
%struct.iphdr = type { i32, i32, i32, i32 }
%struct.ip_tunnel_net = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@vti_net_id = common dso_local global i32 0, align 4
@TUNNEL_NO_KEY = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @vti4_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vti4_err(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfrm_state*, align 8
  %9 = alloca %struct.ip_tunnel*, align 8
  %10 = alloca %struct.ip_esp_hdr*, align 8
  %11 = alloca %struct.ip_auth_hdr*, align 8
  %12 = alloca %struct.ip_comp_hdr*, align 8
  %13 = alloca %struct.net*, align 8
  %14 = alloca %struct.iphdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ip_tunnel_net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = call %struct.net* @dev_net(%struct.TYPE_6__* %19)
  store %struct.net* %20, %struct.net** %13, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.iphdr*
  store %struct.iphdr* %24, %struct.iphdr** %14, align 8
  %25 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %26 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %15, align 4
  %28 = load %struct.net*, %struct.net** %13, align 8
  %29 = load i32, i32* @vti_net_id, align 4
  %30 = call %struct.ip_tunnel_net* @net_generic(%struct.net* %28, i32 %29)
  store %struct.ip_tunnel_net* %30, %struct.ip_tunnel_net** %16, align 8
  %31 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %16, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TUNNEL_NO_KEY, align 4
  %38 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %39 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %42 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.ip_tunnel* @ip_tunnel_lookup(%struct.ip_tunnel_net* %31, i32 %36, i32 %37, i32 %40, i32 %43, i32 0)
  store %struct.ip_tunnel* %44, %struct.ip_tunnel** %9, align 8
  %45 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %46 = icmp ne %struct.ip_tunnel* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %148

48:                                               ; preds = %2
  %49 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %50 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @be32_to_cpu(i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %15, align 4
  switch i32 %54, label %99 [
    i32 128, label %55
    i32 130, label %69
    i32 129, label %83
  ]

55:                                               ; preds = %48
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %60 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %58, %63
  %65 = inttoptr i64 %64 to %struct.ip_esp_hdr*
  store %struct.ip_esp_hdr* %65, %struct.ip_esp_hdr** %10, align 8
  %66 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %10, align 8
  %67 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %6, align 4
  br label %100

69:                                               ; preds = %48
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %74 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %72, %77
  %79 = inttoptr i64 %78 to %struct.ip_auth_hdr*
  store %struct.ip_auth_hdr* %79, %struct.ip_auth_hdr** %11, align 8
  %80 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %11, align 8
  %81 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %6, align 4
  br label %100

83:                                               ; preds = %48
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %88 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %86, %91
  %93 = inttoptr i64 %92 to %struct.ip_comp_hdr*
  store %struct.ip_comp_hdr* %93, %struct.ip_comp_hdr** %12, align 8
  %94 = load %struct.ip_comp_hdr*, %struct.ip_comp_hdr** %12, align 8
  %95 = getelementptr inbounds %struct.ip_comp_hdr, %struct.ip_comp_hdr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ntohs(i32 %96)
  %98 = call i32 @htonl(i32 %97)
  store i32 %98, i32* %6, align 4
  br label %100

99:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %148

100:                                              ; preds = %83, %69, %55
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = call %struct.TYPE_5__* @icmp_hdr(%struct.sk_buff* %101)
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %115 [
    i32 132, label %105
    i32 131, label %114
  ]

105:                                              ; preds = %100
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = call %struct.TYPE_5__* @icmp_hdr(%struct.sk_buff* %106)
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %148

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %100, %113
  br label %116

115:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %148

116:                                              ; preds = %114
  %117 = load %struct.net*, %struct.net** %13, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %120 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %119, i32 0, i32 2
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @AF_INET, align 4
  %124 = call %struct.xfrm_state* @xfrm_state_lookup(%struct.net* %117, i32 %118, i32* %120, i32 %121, i32 %122, i32 %123)
  store %struct.xfrm_state* %124, %struct.xfrm_state** %8, align 8
  %125 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %126 = icmp ne %struct.xfrm_state* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %148

128:                                              ; preds = %116
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = call %struct.TYPE_5__* @icmp_hdr(%struct.sk_buff* %129)
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 132
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %136 = load %struct.net*, %struct.net** %13, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @ipv4_update_pmtu(%struct.sk_buff* %135, %struct.net* %136, i32 %137, i32 0, i32 %138)
  br label %145

140:                                              ; preds = %128
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = load %struct.net*, %struct.net** %13, align 8
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @ipv4_redirect(%struct.sk_buff* %141, %struct.net* %142, i32 0, i32 %143)
  br label %145

145:                                              ; preds = %140, %134
  %146 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %147 = call i32 @xfrm_state_put(%struct.xfrm_state* %146)
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %145, %127, %115, %112, %99, %47
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_6__*) #1

declare dso_local %struct.ip_tunnel_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.ip_tunnel* @ip_tunnel_lookup(%struct.ip_tunnel_net*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.TYPE_5__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup(%struct.net*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ipv4_update_pmtu(%struct.sk_buff*, %struct.net*, i32, i32, i32) #1

declare dso_local i32 @ipv4_redirect(%struct.sk_buff*, %struct.net*, i32, i32) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
