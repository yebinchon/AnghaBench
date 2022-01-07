; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_lwt_push_ip_encap.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_lwt_push_ip_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i8*, i64 }
%struct.iphdr = type { i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@LWT_BPF_MAX_HEADROOM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_lwt_push_ip_encap(%struct.sk_buff* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 16
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @LWT_BPF_MAX_HEADROOM, align 4
  %19 = icmp sgt i32 %17, %18
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i1 [ true, %4 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %170

28:                                               ; preds = %20
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to %struct.iphdr*
  store %struct.iphdr* %30, %struct.iphdr** %10, align 8
  %31 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 4
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  store i32 1, i32* %11, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %38 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 4
  %41 = icmp slt i32 %36, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %170

48:                                               ; preds = %35
  br label %69

49:                                               ; preds = %28
  %50 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %51 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 6
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %56, 4
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %170

64:                                               ; preds = %54
  br label %68

65:                                               ; preds = %49
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %170

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68, %48
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = call i32 @skb_cow_head(%struct.sk_buff* %73, i64 %79)
  store i32 %80, i32* %12, align 4
  br label %92

81:                                               ; preds = %69
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = call %struct.TYPE_2__* @skb_dst(%struct.sk_buff* %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @LL_RESERVED_SPACE(i32 %88)
  %90 = add nsw i64 %84, %89
  %91 = call i32 @skb_cow_head(%struct.sk_buff* %82, i64 %90)
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %81, %72
  %93 = load i32, i32* %12, align 4
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %5, align 4
  br label %170

98:                                               ; preds = %92
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = call i32 @skb_reset_inner_headers(%struct.sk_buff* %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = call i32 @skb_reset_inner_mac_header(%struct.sk_buff* %101)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @skb_set_inner_protocol(%struct.sk_buff* %103, i8* %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @skb_push(%struct.sk_buff* %110, i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %98
  %116 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %117 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @skb_postpush_rcsum(%struct.sk_buff* %116, %struct.iphdr* %117, i32 %118)
  br label %120

120:                                              ; preds = %115, %98
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = call i32 @skb_reset_network_header(%struct.sk_buff* %121)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %124 = call i32 @skb_network_header(%struct.sk_buff* %123)
  %125 = load i8*, i8** %7, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @memcpy(i32 %124, i8* %125, i32 %126)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %129 = call i32 @bpf_compute_data_pointers(%struct.sk_buff* %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = call i32 @skb_clear_hash(%struct.sk_buff* %130)
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %155

134:                                              ; preds = %120
  %135 = load i32, i32* @ETH_P_IP, align 4
  %136 = call i8* @htons(i32 %135)
  %137 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %140 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %139)
  store %struct.iphdr* %140, %struct.iphdr** %10, align 8
  %141 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %142 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %154, label %145

145:                                              ; preds = %134
  %146 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %147 = bitcast %struct.iphdr* %146 to i8*
  %148 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %149 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @ip_fast_csum(i8* %147, i32 %150)
  %152 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %153 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %152, i32 0, i32 2
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %145, %134
  br label %160

155:                                              ; preds = %120
  %156 = load i32, i32* @ETH_P_IPV6, align 4
  %157 = call i8* @htons(i32 %156)
  %158 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 1
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %155, %154
  %161 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %162 = call i64 @skb_is_gso(%struct.sk_buff* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @handle_gso_encap(%struct.sk_buff* %165, i32 %166, i32 %167)
  store i32 %168, i32* %5, align 4
  br label %170

169:                                              ; preds = %160
  store i32 0, i32* %5, align 4
  br label %170

170:                                              ; preds = %169, %164, %96, %65, %61, %45, %25
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i64) #1

declare dso_local i64 @LL_RESERVED_SPACE(i32) #1

declare dso_local %struct.TYPE_2__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_inner_headers(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_inner_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_inner_protocol(%struct.sk_buff*, i8*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_postpush_rcsum(%struct.sk_buff*, %struct.iphdr*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @bpf_compute_data_pointers(%struct.sk_buff*) #1

declare dso_local i32 @skb_clear_hash(%struct.sk_buff*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ip_fast_csum(i8*, i32) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @handle_gso_encap(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
