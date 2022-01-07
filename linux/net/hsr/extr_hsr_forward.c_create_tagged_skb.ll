; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_forward.c_create_tagged_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_forward.c_create_tagged_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.hsr_frame_info = type { i64 }
%struct.hsr_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HSR_HLEN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.hsr_frame_info*, %struct.hsr_port*)* @create_tagged_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @create_tagged_skb(%struct.sk_buff* %0, %struct.hsr_frame_info* %1, %struct.hsr_port* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.hsr_frame_info*, align 8
  %7 = alloca %struct.hsr_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.hsr_frame_info* %1, %struct.hsr_frame_info** %6, align 8
  store %struct.hsr_port* %2, %struct.hsr_port** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i64 @skb_headroom(%struct.sk_buff* %13)
  %15 = load i64, i64* @HSR_HLEN, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.sk_buff* @__pskb_copy(%struct.sk_buff* %12, i64 %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %11, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %72

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %24 = call i32 @skb_reset_mac_header(%struct.sk_buff* %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load i64, i64* @HSR_HLEN, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 8
  br label %38

38:                                               ; preds = %30, %22
  %39 = load i32, i32* @ETH_HLEN, align 4
  store i32 %39, i32* %8, align 4
  %40 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %6, align 8
  %41 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i64, i64* @VLAN_HLEN, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %52 = call i8* @skb_mac_header(%struct.sk_buff* %51)
  store i8* %52, i8** %10, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %54 = load i64, i64* @HSR_HLEN, align 8
  %55 = call i8* @skb_push(%struct.sk_buff* %53, i64 %54)
  store i8* %55, i8** %9, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @memmove(i8* %56, i8* %57, i32 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %61 = call i32 @skb_reset_mac_header(%struct.sk_buff* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %63 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %6, align 8
  %64 = load %struct.hsr_port*, %struct.hsr_port** %7, align 8
  %65 = load %struct.hsr_port*, %struct.hsr_port** %7, align 8
  %66 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @hsr_fill_tag(%struct.sk_buff* %62, %struct.hsr_frame_info* %63, %struct.hsr_port* %64, i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %71, %struct.sk_buff** %4, align 8
  br label %72

72:                                               ; preds = %50, %21
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %73
}

declare dso_local %struct.sk_buff* @__pskb_copy(%struct.sk_buff*, i64, i32) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @hsr_fill_tag(%struct.sk_buff*, %struct.hsr_frame_info*, %struct.hsr_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
