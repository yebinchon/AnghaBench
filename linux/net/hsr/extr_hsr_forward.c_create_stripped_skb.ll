; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_forward.c_create_stripped_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_forward.c_create_stripped_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32 }
%struct.hsr_frame_info = type { i64 }
%struct.TYPE_2__ = type { i32 }

@HSR_HLEN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.hsr_frame_info*)* @create_stripped_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @create_stripped_skb(%struct.sk_buff* %0, %struct.hsr_frame_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hsr_frame_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.hsr_frame_info* %1, %struct.hsr_frame_info** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load i64, i64* @HSR_HLEN, align 8
  %12 = call i32 @skb_pull(%struct.sk_buff* %10, i64 %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i64 @skb_headroom(%struct.sk_buff* %14)
  %16 = load i64, i64* @HSR_HLEN, align 8
  %17 = sub nsw i64 %15, %16
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.sk_buff* @__pskb_copy(%struct.sk_buff* %13, i64 %17, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load i64, i64* @HSR_HLEN, align 8
  %22 = call i32 @skb_push(%struct.sk_buff* %20, i64 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %71

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i32 @skb_reset_mac_header(%struct.sk_buff* %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load i64, i64* @HSR_HLEN, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  br label %42

42:                                               ; preds = %34, %26
  %43 = load i32, i32* @ETH_ALEN, align 4
  %44 = mul nsw i32 2, %43
  store i32 %44, i32* %7, align 4
  %45 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %5, align 8
  %46 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i64, i64* @VLAN_HLEN, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call i8* @skb_mac_header(%struct.sk_buff* %56)
  store i8* %57, i8** %9, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = call i8* @skb_mac_header(%struct.sk_buff* %58)
  store i8* %59, i8** %8, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @memcpy(i8* %60, i8* %61, i32 %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %70, %struct.sk_buff** %3, align 8
  br label %71

71:                                               ; preds = %55, %25
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %72
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local %struct.sk_buff* @__pskb_copy(%struct.sk_buff*, i64, i32) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @eth_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
