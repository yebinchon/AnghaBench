; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ah6.c_ah6_input_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ah6.c_ah6_input_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_3__, %struct.ah_data* }
%struct.TYPE_3__ = type { i64 }
%struct.ah_data = type { i32, i32 }
%struct.ip_auth_hdr = type { i32 }
%struct.TYPE_4__ = type { i32* }

@EBADMSG = common dso_local global i32 0, align 4
@XFRM_MODE_TUNNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @ah6_input_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ah6_input_done(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
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
  %25 = call i32 @skb_network_header_len(%struct.sk_buff* %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %11, align 8
  %27 = call i32 @ipv6_authlen(%struct.ip_auth_hdr* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %97

31:                                               ; preds = %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = call %struct.TYPE_4__* @AH_SKB_CB(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32* @ah_tmp_auth(i32* %36, i32 %37)
  store i32* %38, i32** %5, align 8
  %39 = load %struct.ah_data*, %struct.ah_data** %10, align 8
  %40 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.ah_data*, %struct.ah_data** %10, align 8
  %44 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32* @ah_tmp_icv(i32 %41, i32* %42, i32 %45)
  store i32* %46, i32** %6, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.ah_data*, %struct.ah_data** %10, align 8
  %50 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @crypto_memneq(i32* %47, i32* %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %31
  %55 = load i32, i32* @EBADMSG, align 4
  %56 = sub nsw i32 0, %55
  br label %58

57:                                               ; preds = %31
  br label %58

58:                                               ; preds = %57, %54
  %59 = phi i32 [ %56, %54 ], [ 0, %57 ]
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %97

63:                                               ; preds = %58
  %64 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %11, align 8
  %65 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = call i32 @skb_network_header(%struct.sk_buff* %72)
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @memcpy(i32 %73, i32* %74, i32 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 @__skb_pull(%struct.sk_buff* %77, i32 %80)
  %82 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %83 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @XFRM_MODE_TUNNEL, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %63
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = call i32 @skb_reset_transport_header(%struct.sk_buff* %89)
  br label %96

91:                                               ; preds = %63
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sub nsw i32 0, %93
  %95 = call i32 @skb_set_transport_header(%struct.sk_buff* %92, i32 %94)
  br label %96

96:                                               ; preds = %91, %88
  br label %97

97:                                               ; preds = %96, %62, %30
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %99 = call %struct.TYPE_4__* @AH_SKB_CB(%struct.sk_buff* %98)
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @kfree(i32* %101)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @xfrm_input_resume(%struct.sk_buff* %103, i32 %104)
  ret void
}

declare dso_local %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff*) #1

declare dso_local %struct.ip_auth_hdr* @ip_auth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_authlen(%struct.ip_auth_hdr*) #1

declare dso_local %struct.TYPE_4__* @AH_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32* @ah_tmp_auth(i32*, i32) #1

declare dso_local i32* @ah_tmp_icv(i32, i32*, i32) #1

declare dso_local i64 @crypto_memneq(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @xfrm_input_resume(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
