; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_mpls_pop.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_mpls_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ethhdr = type { i32 }

@MPLS_HLEN = common dso_local global i64 0, align 8
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_mpls_pop(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @eth_p_mpls(i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @MPLS_HLEN, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @skb_ensure_writable(%struct.sk_buff* %21, i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %83

32:                                               ; preds = %20
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i64 @mpls_hdr(%struct.sk_buff* %34)
  %36 = load i64, i64* @MPLS_HLEN, align 8
  %37 = call i32 @skb_postpull_rcsum(%struct.sk_buff* %33, i64 %35, i64 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i64 @skb_mac_header(%struct.sk_buff* %38)
  %40 = load i64, i64* @MPLS_HLEN, align 8
  %41 = add nsw i64 %39, %40
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i64 @skb_mac_header(%struct.sk_buff* %42)
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @memmove(i64 %41, i64 %43, i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load i64, i64* @MPLS_HLEN, align 8
  %48 = call i32 @__skb_pull(%struct.sk_buff* %46, i64 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = call i32 @skb_reset_mac_header(%struct.sk_buff* %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @skb_set_network_header(%struct.sk_buff* %51, i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = icmp ne %struct.TYPE_2__* %56, null
  br i1 %57, label %58, label %79

58:                                               ; preds = %32
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ARPHRD_ETHER, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %58
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call i64 @mpls_hdr(%struct.sk_buff* %67)
  %69 = inttoptr i64 %68 to i8*
  %70 = load i8*, i8** @ETH_HLEN, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = inttoptr i64 %73 to %struct.ethhdr*
  store %struct.ethhdr* %74, %struct.ethhdr** %9, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @skb_mod_eth_type(%struct.sk_buff* %75, %struct.ethhdr* %76, i32 %77)
  br label %79

79:                                               ; preds = %66, %58, %32
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %30, %19
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @eth_p_mpls(i32) #1

declare dso_local i32 @skb_ensure_writable(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_postpull_rcsum(%struct.sk_buff*, i64, i64) #1

declare dso_local i64 @mpls_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_mod_eth_type(%struct.sk_buff*, %struct.ethhdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
