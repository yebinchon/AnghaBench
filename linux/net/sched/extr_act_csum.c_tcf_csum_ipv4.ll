; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_csum.c_tcf_csum_ipv4.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_csum.c_tcf_csum_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32, i32, i32, i32 }

@IP_OFFSET = common dso_local global i32 0, align 4
@TCA_CSUM_UPDATE_FLAG_ICMP = common dso_local global i32 0, align 4
@TCA_CSUM_UPDATE_FLAG_IGMP = common dso_local global i32 0, align 4
@TCA_CSUM_UPDATE_FLAG_TCP = common dso_local global i32 0, align 4
@TCA_CSUM_UPDATE_FLAG_UDP = common dso_local global i32 0, align 4
@TCA_CSUM_UPDATE_FLAG_UDPLITE = common dso_local global i32 0, align 4
@TCA_CSUM_UPDATE_FLAG_SCTP = common dso_local global i32 0, align 4
@TCA_CSUM_UPDATE_FLAG_IPV4HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @tcf_csum_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_csum_ipv4(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call i32 @skb_network_offset(%struct.sk_buff* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 16, %12
  %14 = trunc i64 %13 to i32
  %15 = call i32 @pskb_may_pull(%struct.sk_buff* %10, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %173

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %19)
  store %struct.iphdr* %20, %struct.iphdr** %6, align 8
  %21 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %22 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IP_OFFSET, align 4
  %25 = call i32 @htons(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %33

29:                                               ; preds = %18
  %30 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %31 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  br label %33

33:                                               ; preds = %29, %28
  %34 = phi i32 [ 0, %28 ], [ %32, %29 ]
  switch i32 %34, label %154 [
    i32 133, label %35
    i32 132, label %55
    i32 130, label %75
    i32 129, label %95
    i32 128, label %115
    i32 131, label %135
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @TCA_CSUM_UPDATE_FLAG_ICMP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 4
  %46 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %47 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohs(i32 %48)
  %50 = call i32 @tcf_csum_ipv4_icmp(%struct.sk_buff* %41, i32 %45, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %40
  br label %173

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %35
  br label %154

55:                                               ; preds = %33
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @TCA_CSUM_UPDATE_FLAG_IGMP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %63 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, 4
  %66 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %67 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ntohs(i32 %68)
  %70 = call i32 @tcf_csum_ipv4_igmp(%struct.sk_buff* %61, i32 %65, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %60
  br label %173

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %55
  br label %154

75:                                               ; preds = %33
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @TCA_CSUM_UPDATE_FLAG_TCP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %83 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %84, 4
  %86 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %87 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ntohs(i32 %88)
  %90 = call i32 @tcf_csum_ipv4_tcp(%struct.sk_buff* %81, i32 %85, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %80
  br label %173

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93, %75
  br label %154

95:                                               ; preds = %33
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @TCA_CSUM_UPDATE_FLAG_UDP, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %103 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %104, 4
  %106 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %107 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ntohs(i32 %108)
  %110 = call i32 @tcf_csum_ipv4_udp(%struct.sk_buff* %101, i32 %105, i32 %109, i32 0)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %100
  br label %173

113:                                              ; preds = %100
  br label %114

114:                                              ; preds = %113, %95
  br label %154

115:                                              ; preds = %33
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @TCA_CSUM_UPDATE_FLAG_UDPLITE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %115
  %121 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %122 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %123 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %124, 4
  %126 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %127 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ntohs(i32 %128)
  %130 = call i32 @tcf_csum_ipv4_udp(%struct.sk_buff* %121, i32 %125, i32 %129, i32 1)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %120
  br label %173

133:                                              ; preds = %120
  br label %134

134:                                              ; preds = %133, %115
  br label %154

135:                                              ; preds = %33
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @TCA_CSUM_UPDATE_FLAG_SCTP, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %135
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %143 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %144, 4
  %146 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %147 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ntohs(i32 %148)
  %150 = call i32 @tcf_csum_sctp(%struct.sk_buff* %141, i32 %145, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %140
  br label %173

153:                                              ; preds = %140, %135
  br label %154

154:                                              ; preds = %33, %153, %134, %114, %94, %74, %54
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* @TCA_CSUM_UPDATE_FLAG_IPV4HDR, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %154
  %160 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = add i64 16, %162
  %164 = trunc i64 %163 to i32
  %165 = call i64 @skb_try_make_writable(%struct.sk_buff* %160, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  br label %173

168:                                              ; preds = %159
  %169 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %170 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %169)
  %171 = call i32 @ip_send_check(%struct.iphdr* %170)
  br label %172

172:                                              ; preds = %168, %154
  store i32 1, i32* %3, align 4
  br label %174

173:                                              ; preds = %167, %152, %132, %112, %92, %72, %52, %17
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %173, %172
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @tcf_csum_ipv4_icmp(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @tcf_csum_ipv4_igmp(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @tcf_csum_ipv4_tcp(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @tcf_csum_ipv4_udp(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @tcf_csum_sctp(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @skb_try_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @ip_send_check(%struct.iphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
