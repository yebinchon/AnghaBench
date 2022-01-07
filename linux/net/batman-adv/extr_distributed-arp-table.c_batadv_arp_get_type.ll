; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_arp_get_type.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_arp_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.arphdr = type { i64, i64, i64, i32, i64 }
%struct.ethhdr = type { i64 }

@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_P_ARP = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@ARPOP_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.sk_buff*, i32)* @batadv_arp_get_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_arp_get_type(%struct.batadv_priv* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arphdr*, align 8
  %8 = alloca %struct.ethhdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @ETH_HLEN, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @pskb_may_pull(%struct.sk_buff* %14, i64 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %173

26:                                               ; preds = %3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = inttoptr i64 %32 to %struct.ethhdr*
  store %struct.ethhdr* %33, %struct.ethhdr** %8, align 8
  %34 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %35 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @ETH_P_ARP, align 4
  %38 = call i64 @htons(i32 %37)
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %173

41:                                               ; preds = %26
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @ETH_HLEN, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @arp_hdr_len(i32 %49)
  %51 = add nsw i64 %46, %50
  %52 = call i32 @pskb_may_pull(%struct.sk_buff* %42, i64 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %41
  br label %173

59:                                               ; preds = %41
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = load i64, i64* @ETH_HLEN, align 8
  %67 = add nsw i64 %65, %66
  %68 = inttoptr i64 %67 to %struct.arphdr*
  store %struct.arphdr* %68, %struct.arphdr** %7, align 8
  %69 = load %struct.arphdr*, %struct.arphdr** %7, align 8
  %70 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @ARPHRD_ETHER, align 4
  %73 = call i64 @htons(i32 %72)
  %74 = icmp ne i64 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %59
  br label %173

76:                                               ; preds = %59
  %77 = load %struct.arphdr*, %struct.arphdr** %7, align 8
  %78 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @ETH_P_IP, align 4
  %81 = call i64 @htons(i32 %80)
  %82 = icmp ne i64 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %173

84:                                               ; preds = %76
  %85 = load %struct.arphdr*, %struct.arphdr** %7, align 8
  %86 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ETH_ALEN, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %173

91:                                               ; preds = %84
  %92 = load %struct.arphdr*, %struct.arphdr** %7, align 8
  %93 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 4
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %173

97:                                               ; preds = %91
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @batadv_arp_ip_src(%struct.sk_buff* %98, i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @batadv_arp_ip_dst(%struct.sk_buff* %101, i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i64 @ipv4_is_loopback(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %135, label %107

107:                                              ; preds = %97
  %108 = load i32, i32* %9, align 4
  %109 = call i64 @ipv4_is_multicast(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %135, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %10, align 4
  %113 = call i64 @ipv4_is_loopback(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %135, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %10, align 4
  %117 = call i64 @ipv4_is_multicast(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %135, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %9, align 4
  %121 = call i64 @ipv4_is_zeronet(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %9, align 4
  %125 = call i64 @ipv4_is_lbcast(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %10, align 4
  %129 = call i64 @ipv4_is_zeronet(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %10, align 4
  %133 = call i64 @ipv4_is_lbcast(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131, %127, %123, %119, %115, %111, %107, %97
  br label %173

136:                                              ; preds = %131
  %137 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call i32* @batadv_arp_hw_src(%struct.sk_buff* %137, i32 %138)
  store i32* %139, i32** %11, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = call i64 @is_zero_ether_addr(i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %136
  %144 = load i32*, i32** %11, align 8
  %145 = call i64 @is_multicast_ether_addr(i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143, %136
  br label %173

148:                                              ; preds = %143
  %149 = load %struct.arphdr*, %struct.arphdr** %7, align 8
  %150 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @ARPOP_REQUEST, align 4
  %153 = call i64 @htons(i32 %152)
  %154 = icmp ne i64 %151, %153
  br i1 %154, label %155, label %168

155:                                              ; preds = %148
  %156 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i32* @batadv_arp_hw_dst(%struct.sk_buff* %156, i32 %157)
  store i32* %158, i32** %12, align 8
  %159 = load i32*, i32** %12, align 8
  %160 = call i64 @is_zero_ether_addr(i32* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %155
  %163 = load i32*, i32** %12, align 8
  %164 = call i64 @is_multicast_ether_addr(i32* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %162, %155
  br label %173

167:                                              ; preds = %162
  br label %168

168:                                              ; preds = %167, %148
  %169 = load %struct.arphdr*, %struct.arphdr** %7, align 8
  %170 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @ntohs(i64 %171)
  store i32 %172, i32* %13, align 4
  br label %173

173:                                              ; preds = %168, %166, %147, %135, %96, %90, %83, %75, %58, %40, %25
  %174 = load i32, i32* %13, align 4
  ret i32 %174
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @arp_hdr_len(i32) #1

declare dso_local i32 @batadv_arp_ip_src(%struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_arp_ip_dst(%struct.sk_buff*, i32) #1

declare dso_local i64 @ipv4_is_loopback(i32) #1

declare dso_local i64 @ipv4_is_multicast(i32) #1

declare dso_local i64 @ipv4_is_zeronet(i32) #1

declare dso_local i64 @ipv4_is_lbcast(i32) #1

declare dso_local i32* @batadv_arp_hw_src(%struct.sk_buff*, i32) #1

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

declare dso_local i32* @batadv_arp_hw_dst(%struct.sk_buff*, i32) #1

declare dso_local i32 @ntohs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
