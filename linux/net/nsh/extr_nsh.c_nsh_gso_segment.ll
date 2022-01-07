; ModuleID = '/home/carl/AnghaBench/linux/net/nsh/extr_nsh.c_nsh_gso_segment.c'
source_filename = "/home/carl/AnghaBench/linux/net/nsh/extr_nsh.c_nsh_gso_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i64, %struct.sk_buff* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NSH_BASE_HDR_LEN = common dso_local global i32 0, align 4
@ETH_P_TEB = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@ETH_P_NSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, i32)* @nsh_gso_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @nsh_gso_segment(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.sk_buff* @ERR_PTR(i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call i32 @skb_reset_network_header(%struct.sk_buff* %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = load i32, i32* @NSH_BASE_HDR_LEN, align 4
  %27 = call i32 @pskb_may_pull(%struct.sk_buff* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %134

34:                                               ; preds = %2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = call %struct.TYPE_3__* @nsh_hdr(%struct.sk_buff* %35)
  %37 = call i32 @nsh_hdr_len(%struct.TYPE_3__* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @NSH_BASE_HDR_LEN, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %134

42:                                               ; preds = %34
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @pskb_may_pull(%struct.sk_buff* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %134

52:                                               ; preds = %42
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = call %struct.TYPE_3__* @nsh_hdr(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @tun_p_to_eth_p(i32 %56)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  br label %134

61:                                               ; preds = %52
  %62 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @__skb_pull(%struct.sk_buff* %62, i32 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = call i32 @skb_reset_mac_header(%struct.sk_buff* %65)
  %67 = load i64, i64* %8, align 8
  %68 = load i32, i32* @ETH_P_TEB, align 4
  %69 = call i64 @htons(i32 %68)
  %70 = icmp eq i64 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @ETH_HLEN, align 4
  br label %74

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  %76 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 3
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* @NETIF_F_SG, align 4
  %82 = load i32, i32* %4, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call %struct.sk_buff* @skb_mac_gso_segment(%struct.sk_buff* %84, i32 %85)
  store %struct.sk_buff* %86, %struct.sk_buff** %5, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = call i64 @IS_ERR_OR_NULL(%struct.sk_buff* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %74
  %91 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %92 = load i32, i32* @ETH_P_NSH, align 4
  %93 = call i64 @htons(i32 %92)
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @skb_gso_error_unwind(%struct.sk_buff* %91, i64 %93, i32 %94, i32 %99, i32 %100)
  br label %134

102:                                              ; preds = %74
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %103, %struct.sk_buff** %3, align 8
  br label %104

104:                                              ; preds = %129, %102
  %105 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %106 = icmp ne %struct.sk_buff* %105, null
  br i1 %106, label %107, label %133

107:                                              ; preds = %104
  %108 = load i32, i32* @ETH_P_NSH, align 4
  %109 = call i64 @htons(i32 %108)
  %110 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 3
  store i64 %109, i64* %111, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @__skb_push(%struct.sk_buff* %112, i32 %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sub nsw i32 0, %116
  %118 = call i32 @skb_set_mac_header(%struct.sk_buff* %115, i32 %117)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %7, align 4
  %123 = add i32 %121, %122
  %124 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %107
  %130 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 4
  %132 = load %struct.sk_buff*, %struct.sk_buff** %131, align 8
  store %struct.sk_buff* %132, %struct.sk_buff** %3, align 8
  br label %104

133:                                              ; preds = %104
  br label %134

134:                                              ; preds = %133, %90, %60, %51, %41, %33
  %135 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %135
}

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @nsh_hdr_len(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @nsh_hdr(%struct.sk_buff*) #1

declare dso_local i64 @tun_p_to_eth_p(i32) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.sk_buff* @skb_mac_gso_segment(%struct.sk_buff*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.sk_buff*) #1

declare dso_local i32 @skb_gso_error_unwind(%struct.sk_buff*, i64, i32, i32, i32) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_mac_header(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
