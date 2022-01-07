; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_reorder_vlan_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_reorder_vlan_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i32 }

@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_TLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*)* @skb_reorder_vlan_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @skb_reorder_vlan_header(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call i32 @skb_headroom(%struct.sk_buff* %8)
  %10 = call i64 @skb_cow(%struct.sk_buff* %7, i32 %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call i32 @kfree_skb(%struct.sk_buff* %13)
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %73

15:                                               ; preds = %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = call i8* @skb_mac_header(%struct.sk_buff* %19)
  %21 = ptrtoint i8* %18 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @VLAN_HLEN, align 4
  %27 = load i32, i32* @ETH_TLEN, align 4
  %28 = add nsw i32 %26, %27
  %29 = icmp sgt i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %15
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = call i8* @skb_mac_header(%struct.sk_buff* %34)
  %36 = load i32, i32* @VLAN_HLEN, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, i8* %35, i64 %37
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = call i8* @skb_mac_header(%struct.sk_buff* %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @VLAN_HLEN, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load i32, i32* @ETH_TLEN, align 4
  %45 = sub nsw i32 %43, %44
  %46 = call i32 @memmove(i8* %38, i8* %40, i32 %45)
  br label %47

47:                                               ; preds = %33, %15
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = call i32 @skb_metadata_len(%struct.sk_buff* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = call i32 @skb_metadata_end(%struct.sk_buff* %53)
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* @VLAN_HLEN, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr i8, i8* %59, i64 %61
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @memmove(i8* %62, i8* %63, i32 %64)
  br label %66

66:                                               ; preds = %52, %47
  %67 = load i32, i32* @VLAN_HLEN, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  store %struct.sk_buff* %72, %struct.sk_buff** %2, align 8
  br label %73

73:                                               ; preds = %66, %12
  %74 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %74
}

declare dso_local i64 @skb_cow(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i8* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @skb_metadata_len(%struct.sk_buff*) #1

declare dso_local i32 @skb_metadata_end(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
