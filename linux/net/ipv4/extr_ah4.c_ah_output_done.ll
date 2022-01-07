; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ah4.c_ah_output_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ah4.c_ah_output_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32, i32, i32, i32, i32 }
%struct.xfrm_state = type { %struct.ah_data* }
%struct.ah_data = type { i32, i32 }
%struct.ip_auth_hdr = type { %struct.iphdr* }
%struct.TYPE_3__ = type { %struct.xfrm_state* }
%struct.TYPE_4__ = type { %struct.iphdr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @ah_output_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ah_output_done(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.xfrm_state*, align 8
  %9 = alloca %struct.ah_data*, align 8
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca %struct.ip_auth_hdr*, align 8
  %12 = alloca i32, align 4
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %14 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %13, i32 0, i32 0
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call %struct.TYPE_3__* @skb_dst(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.xfrm_state*, %struct.xfrm_state** %18, align 8
  store %struct.xfrm_state* %19, %struct.xfrm_state** %8, align 8
  %20 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %21 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %20, i32 0, i32 0
  %22 = load %struct.ah_data*, %struct.ah_data** %21, align 8
  store %struct.ah_data* %22, %struct.ah_data** %9, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %23)
  store %struct.iphdr* %24, %struct.iphdr** %10, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = call %struct.ip_auth_hdr* @ip_auth_hdr(%struct.sk_buff* %25)
  store %struct.ip_auth_hdr* %26, %struct.ip_auth_hdr** %11, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = call i32 @ip_hdrlen(%struct.sk_buff* %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = call %struct.TYPE_4__* @AH_SKB_CB(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  store %struct.iphdr* %32, %struct.iphdr** %6, align 8
  %33 = load %struct.ah_data*, %struct.ah_data** %9, align 8
  %34 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call %struct.iphdr* @ah_tmp_icv(i32 %35, %struct.iphdr* %36, i32 %37)
  store %struct.iphdr* %38, %struct.iphdr** %5, align 8
  %39 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %11, align 8
  %40 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %39, i32 0, i32 0
  %41 = load %struct.iphdr*, %struct.iphdr** %40, align 8
  %42 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %43 = load %struct.ah_data*, %struct.ah_data** %9, align 8
  %44 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memcpy(%struct.iphdr* %41, %struct.iphdr* %42, i32 %45)
  %47 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %48 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %51 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %53 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %56 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %58 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %61 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %63 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 5
  br i1 %65, label %66, label %84

66:                                               ; preds = %2
  %67 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %68 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %71 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %73 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %72, i64 1
  %74 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %75 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %74, i64 1
  %76 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %77 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %78, 4
  %80 = sext i32 %79 to i64
  %81 = sub i64 %80, 20
  %82 = trunc i64 %81 to i32
  %83 = call i32 @memcpy(%struct.iphdr* %73, %struct.iphdr* %75, i32 %82)
  br label %84

84:                                               ; preds = %66, %2
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = call %struct.TYPE_4__* @AH_SKB_CB(%struct.sk_buff* %85)
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.iphdr*, %struct.iphdr** %87, align 8
  %89 = call i32 @kfree(%struct.iphdr* %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @xfrm_output_resume(%struct.sk_buff* %90, i32 %91)
  ret void
}

declare dso_local %struct.TYPE_3__* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ip_auth_hdr* @ip_auth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @AH_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ah_tmp_icv(i32, %struct.iphdr*, i32) #1

declare dso_local i32 @memcpy(%struct.iphdr*, %struct.iphdr*, i32) #1

declare dso_local i32 @kfree(%struct.iphdr*) #1

declare dso_local i32 @xfrm_output_resume(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
