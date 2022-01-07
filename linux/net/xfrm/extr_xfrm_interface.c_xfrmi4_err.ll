; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_interface.c_xfrmi4_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_interface.c_xfrmi4_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.net = type { i32 }
%struct.ip_comp_hdr = type { i32 }
%struct.ip_esp_hdr = type { i32 }
%struct.ip_auth_hdr = type { i32 }
%struct.xfrm_state = type { i32 }
%struct.xfrm_if = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @xfrmi4_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrmi4_err(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip_comp_hdr*, align 8
  %10 = alloca %struct.ip_esp_hdr*, align 8
  %11 = alloca %struct.ip_auth_hdr*, align 8
  %12 = alloca %struct.xfrm_state*, align 8
  %13 = alloca %struct.xfrm_if*, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.iphdr*
  store %struct.iphdr* %18, %struct.iphdr** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.net* @dev_net(i32 %21)
  store %struct.net* %22, %struct.net** %7, align 8
  %23 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %24 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %71 [
    i32 128, label %27
    i32 130, label %41
    i32 129, label %55
  ]

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %30, %35
  %37 = inttoptr i64 %36 to %struct.ip_esp_hdr*
  store %struct.ip_esp_hdr* %37, %struct.ip_esp_hdr** %10, align 8
  %38 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %10, align 8
  %39 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  br label %72

41:                                               ; preds = %2
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %44, %49
  %51 = inttoptr i64 %50 to %struct.ip_auth_hdr*
  store %struct.ip_auth_hdr* %51, %struct.ip_auth_hdr** %11, align 8
  %52 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %11, align 8
  %53 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %14, align 4
  br label %72

55:                                               ; preds = %2
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %60 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %58, %63
  %65 = inttoptr i64 %64 to %struct.ip_comp_hdr*
  store %struct.ip_comp_hdr* %65, %struct.ip_comp_hdr** %9, align 8
  %66 = load %struct.ip_comp_hdr*, %struct.ip_comp_hdr** %9, align 8
  %67 = getelementptr inbounds %struct.ip_comp_hdr, %struct.ip_comp_hdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ntohs(i32 %68)
  %70 = call i32 @htonl(i32 %69)
  store i32 %70, i32* %14, align 4
  br label %72

71:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %131

72:                                               ; preds = %55, %41, %27
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call %struct.TYPE_2__* @icmp_hdr(%struct.sk_buff* %73)
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %87 [
    i32 132, label %77
    i32 131, label %86
  ]

77:                                               ; preds = %72
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call %struct.TYPE_2__* @icmp_hdr(%struct.sk_buff* %78)
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %131

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %72, %85
  br label %88

87:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %131

88:                                               ; preds = %86
  %89 = load %struct.net*, %struct.net** %7, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %94 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %93, i32 0, i32 2
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @AF_INET, align 4
  %98 = call %struct.xfrm_state* @xfrm_state_lookup(%struct.net* %89, i32 %92, i32* %94, i32 %95, i32 %96, i32 %97)
  store %struct.xfrm_state* %98, %struct.xfrm_state** %12, align 8
  %99 = load %struct.xfrm_state*, %struct.xfrm_state** %12, align 8
  %100 = icmp ne %struct.xfrm_state* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %88
  store i32 0, i32* %3, align 4
  br label %131

102:                                              ; preds = %88
  %103 = load %struct.net*, %struct.net** %7, align 8
  %104 = load %struct.xfrm_state*, %struct.xfrm_state** %12, align 8
  %105 = call %struct.xfrm_if* @xfrmi_lookup(%struct.net* %103, %struct.xfrm_state* %104)
  store %struct.xfrm_if* %105, %struct.xfrm_if** %13, align 8
  %106 = load %struct.xfrm_if*, %struct.xfrm_if** %13, align 8
  %107 = icmp ne %struct.xfrm_if* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %102
  %109 = load %struct.xfrm_state*, %struct.xfrm_state** %12, align 8
  %110 = call i32 @xfrm_state_put(%struct.xfrm_state* %109)
  store i32 -1, i32* %3, align 4
  br label %131

111:                                              ; preds = %102
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = call %struct.TYPE_2__* @icmp_hdr(%struct.sk_buff* %112)
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 132
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = load %struct.net*, %struct.net** %7, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @ipv4_update_pmtu(%struct.sk_buff* %118, %struct.net* %119, i32 %120, i32 0, i32 %121)
  br label %128

123:                                              ; preds = %111
  %124 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %125 = load %struct.net*, %struct.net** %7, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @ipv4_redirect(%struct.sk_buff* %124, %struct.net* %125, i32 0, i32 %126)
  br label %128

128:                                              ; preds = %123, %117
  %129 = load %struct.xfrm_state*, %struct.xfrm_state** %12, align 8
  %130 = call i32 @xfrm_state_put(%struct.xfrm_state* %129)
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %128, %108, %101, %87, %84, %71
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.TYPE_2__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup(%struct.net*, i32, i32*, i32, i32, i32) #1

declare dso_local %struct.xfrm_if* @xfrmi_lookup(%struct.net*, %struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

declare dso_local i32 @ipv4_update_pmtu(%struct.sk_buff*, %struct.net*, i32, i32, i32) #1

declare dso_local i32 @ipv4_redirect(%struct.sk_buff*, %struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
