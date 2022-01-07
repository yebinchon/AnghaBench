; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ah4.c_ah_input_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ah4.c_ah_input_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_3__, %struct.ah_data* }
%struct.TYPE_3__ = type { i64 }
%struct.ah_data = type { i32, i32 }
%struct.ip_auth_hdr = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.iphdr* }

@EBADMSG = common dso_local global i32 0, align 4
@XFRM_MODE_TUNNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @ah_input_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ah_input_done(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.xfrm_state*, align 8
  %10 = alloca %struct.ah_data*, align 8
  %11 = alloca %struct.ip_auth_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %15 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %14, i32 0, i32 0
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %16, %struct.sk_buff** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = call %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff* %17)
  store %struct.xfrm_state* %18, %struct.xfrm_state** %9, align 8
  %19 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %20 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %19, i32 0, i32 1
  %21 = load %struct.ah_data*, %struct.ah_data** %20, align 8
  store %struct.ah_data* %21, %struct.ah_data** %10, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = call %struct.ip_auth_hdr* @ip_auth_hdr(%struct.sk_buff* %22)
  store %struct.ip_auth_hdr* %23, %struct.ip_auth_hdr** %11, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = call i32 @ip_hdrlen(%struct.sk_buff* %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %11, align 8
  %27 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 2
  %30 = shl i32 %29, 2
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %100

34:                                               ; preds = %2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = call %struct.TYPE_4__* @AH_SKB_CB(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.iphdr*, %struct.iphdr** %37, align 8
  store %struct.iphdr* %38, %struct.iphdr** %7, align 8
  %39 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32* @ah_tmp_auth(%struct.iphdr* %39, i32 %40)
  store i32* %41, i32** %5, align 8
  %42 = load %struct.ah_data*, %struct.ah_data** %10, align 8
  %43 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.ah_data*, %struct.ah_data** %10, align 8
  %47 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32* @ah_tmp_icv(i32 %44, i32* %45, i32 %48)
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.ah_data*, %struct.ah_data** %10, align 8
  %53 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @crypto_memneq(i32* %50, i32* %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %34
  %58 = load i32, i32* @EBADMSG, align 4
  %59 = sub nsw i32 0, %58
  br label %61

60:                                               ; preds = %34
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i32 [ %59, %57 ], [ 0, %60 ]
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %100

66:                                               ; preds = %61
  %67 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %11, align 8
  %68 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = call i32 @skb_network_header(%struct.sk_buff* %75)
  %77 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @memcpy(i32 %76, %struct.iphdr* %77, i32 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %81, %82
  %84 = call i32 @__skb_pull(%struct.sk_buff* %80, i32 %83)
  %85 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %86 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @XFRM_MODE_TUNNEL, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %66
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = call i32 @skb_reset_transport_header(%struct.sk_buff* %92)
  br label %99

94:                                               ; preds = %66
  %95 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sub nsw i32 0, %96
  %98 = call i32 @skb_set_transport_header(%struct.sk_buff* %95, i32 %97)
  br label %99

99:                                               ; preds = %94, %91
  br label %100

100:                                              ; preds = %99, %65, %33
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = call %struct.TYPE_4__* @AH_SKB_CB(%struct.sk_buff* %101)
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load %struct.iphdr*, %struct.iphdr** %103, align 8
  %105 = call i32 @kfree(%struct.iphdr* %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @xfrm_input_resume(%struct.sk_buff* %106, i32 %107)
  ret void
}

declare dso_local %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff*) #1

declare dso_local %struct.ip_auth_hdr* @ip_auth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @AH_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32* @ah_tmp_auth(%struct.iphdr*, i32) #1

declare dso_local i32* @ah_tmp_icv(i32, i32*, i32) #1

declare dso_local i64 @crypto_memneq(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.iphdr*, i32) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree(%struct.iphdr*) #1

declare dso_local i32 @xfrm_input_resume(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
