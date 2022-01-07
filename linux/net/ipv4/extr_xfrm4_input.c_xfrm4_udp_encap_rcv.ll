; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_xfrm4_input.c_xfrm4_udp_encap_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_xfrm4_input.c_xfrm4_udp_encap_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.udp_sock = type { i32 }
%struct.udphdr = type { i32 }
%struct.iphdr = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@IPPROTO_ESP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm4_udp_encap_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.udp_sock*, align 8
  %7 = alloca %struct.udphdr*, align 8
  %8 = alloca %struct.iphdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call %struct.udp_sock* @udp_sk(%struct.sock* %14)
  store %struct.udp_sock* %15, %struct.udp_sock** %6, align 8
  %16 = load %struct.udp_sock*, %struct.udp_sock** %6, align 8
  %17 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %138

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = sub i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @min(i32 %30, i32 8)
  %32 = add i64 4, %31
  %33 = call i32 @pskb_may_pull(%struct.sk_buff* %29, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %138

36:                                               ; preds = %22
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %37)
  store %struct.udphdr* %38, %struct.udphdr** %7, align 8
  %39 = load %struct.udphdr*, %struct.udphdr** %7, align 8
  %40 = bitcast %struct.udphdr* %39 to i32*
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %11, align 8
  store i32* %42, i32** %12, align 8
  %43 = load i32, i32* %13, align 4
  switch i32 %43, label %44 [
    i32 129, label %45
    i32 128, label %67
  ]

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %36, %44
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 255
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %135

54:                                               ; preds = %48, %45
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ugt i64 %56, 4
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32*, i32** %12, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 4, i32* %10, align 4
  br label %65

64:                                               ; preds = %58, %54
  store i32 1, i32* %3, align 4
  br label %138

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65
  br label %94

67:                                               ; preds = %36
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32*, i32** %11, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 255
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %135

76:                                               ; preds = %70, %67
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp ugt i64 %78, 12
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load i32*, i32** %12, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32*, i32** %12, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 12, i32* %10, align 4
  br label %92

91:                                               ; preds = %85, %80, %76
  store i32 1, i32* %3, align 4
  br label %138

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93, %66
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = load i32, i32* @GFP_ATOMIC, align 4
  %97 = call i64 @skb_unclone(%struct.sk_buff* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %135

100:                                              ; preds = %94
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %101)
  store %struct.iphdr* %102, %struct.iphdr** %8, align 8
  %103 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %104 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 2
  store i32 %106, i32* %9, align 4
  %107 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %108 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @ntohs(i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = sub nsw i64 %110, %112
  %114 = call i32 @htons(i64 %113)
  %115 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %116 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %120, %121
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %100
  br label %135

125:                                              ; preds = %100
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @__skb_pull(%struct.sk_buff* %126, i32 %127)
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = call i32 @skb_reset_transport_header(%struct.sk_buff* %129)
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = load i32, i32* @IPPROTO_ESP, align 4
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @xfrm4_rcv_encap(%struct.sk_buff* %131, i32 %132, i32 0, i32 %133)
  store i32 %134, i32* %3, align 4
  br label %138

135:                                              ; preds = %124, %99, %75, %53
  %136 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %137 = call i32 @kfree_skb(%struct.sk_buff* %136)
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %135, %125, %91, %64, %35, %21
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.udp_sock* @udp_sk(%struct.sock*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_unclone(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @xfrm4_rcv_encap(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
