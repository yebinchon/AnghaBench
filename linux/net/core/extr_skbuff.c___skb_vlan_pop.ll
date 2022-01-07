; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c___skb_vlan_pop.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c___skb_vlan_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.vlan_hdr = type { i32 }

@.str = private unnamed_addr constant [69 x i8] c"__skb_vlan_pop got skb with skb->data not at mac header (offset %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__skb_vlan_pop(%struct.sk_buff* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vlan_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @skb_mac_header(%struct.sk_buff* %12)
  %14 = sub nsw i32 %11, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @WARN_ONCE(i32 %15, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %91

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %25 = call i32 @skb_ensure_writable(%struct.sk_buff* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %91

31:                                               ; preds = %22
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = mul nsw i32 2, %36
  %38 = add nsw i32 %35, %37
  %39 = load i64, i64* @VLAN_HLEN, align 8
  %40 = call i32 @skb_postpull_rcsum(%struct.sk_buff* %32, i32 %38, i64 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @ETH_HLEN, align 8
  %46 = add nsw i64 %44, %45
  %47 = inttoptr i64 %46 to %struct.vlan_hdr*
  store %struct.vlan_hdr* %47, %struct.vlan_hdr** %6, align 8
  %48 = load %struct.vlan_hdr*, %struct.vlan_hdr** %6, align 8
  %49 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntohs(i32 %50)
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* @VLAN_HLEN, align 8
  %58 = add nsw i64 %56, %57
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = load i32, i32* @ETH_ALEN, align 4
  %64 = mul nsw i32 2, %63
  %65 = call i32 @memmove(i64 %58, i64 %62, i32 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load i64, i64* @VLAN_HLEN, align 8
  %68 = call i32 @__skb_pull(%struct.sk_buff* %66, i64 %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = load %struct.vlan_hdr*, %struct.vlan_hdr** %6, align 8
  %71 = call i32 @vlan_set_encap_proto(%struct.sk_buff* %69, %struct.vlan_hdr* %70)
  %72 = load i64, i64* @VLAN_HLEN, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %72
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = call i64 @skb_network_offset(%struct.sk_buff* %79)
  %81 = load i64, i64* @ETH_HLEN, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %31
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = load i64, i64* @ETH_HLEN, align 8
  %86 = call i32 @skb_set_network_header(%struct.sk_buff* %84, i64 %85)
  br label %87

87:                                               ; preds = %83, %31
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = call i32 @skb_reset_mac_len(%struct.sk_buff* %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %29, %19
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_postpull_rcsum(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @vlan_set_encap_proto(%struct.sk_buff*, %struct.vlan_hdr*) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_mac_len(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
