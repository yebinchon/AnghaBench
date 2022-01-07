; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_reject_ipv6.c_nf_reject_ip6_tcphdr_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_reject_ipv6.c_nf_reject_ip6_tcphdr_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_reject_ip6_tcphdr_put(%struct.sk_buff* %0, %struct.sk_buff* %1, %struct.tcphdr* %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i32 @skb_reset_transport_header(%struct.sk_buff* %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.tcphdr* @skb_put(%struct.sk_buff* %13, i32 80)
  store %struct.tcphdr* %14, %struct.tcphdr** %9, align 8
  %15 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %16 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %15, i32 0, i32 0
  store i32 20, i32* %16, align 8
  %17 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %18 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %17, i32 0, i32 11
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %21 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 8
  %22 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %23 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %26 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %25, i32 0, i32 11
  store i32 %24, i32* %26, align 4
  %27 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %28 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  %32 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %33 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %32, i32 0, i32 9
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %36 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %35, i32 0, i32 6
  store i64 %34, i64* %36, align 8
  %37 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %38 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %37, i32 0, i32 9
  store i64 0, i64* %38, align 8
  br label %66

39:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  %40 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %41 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @ntohl(i64 %42)
  %44 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %45 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %44, i32 0, i32 8
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %49 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %56 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = shl i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %54, %59
  %61 = call i64 @htonl(i64 %60)
  %62 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %63 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %62, i32 0, i32 9
  store i64 %61, i64* %63, align 8
  %64 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %65 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %64, i32 0, i32 6
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %39, %31
  %67 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %68 = bitcast %struct.tcphdr* %67 to i64*
  %69 = getelementptr inbounds i64, i64* %68, i64 13
  store i64 0, i64* %69, align 8
  %70 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %71 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %70, i32 0, i32 2
  store i32 1, i32* %71, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %74 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %76 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %75, i32 0, i32 5
  store i64 0, i64* %76, align 8
  %77 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %78 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %80 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %79, i32 0, i32 3
  store i64 0, i64* %80, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %81)
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* @IPPROTO_TCP, align 4
  %88 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %89 = call i32 @csum_partial(%struct.tcphdr* %88, i32 80, i32 0)
  %90 = call i64 @csum_ipv6_magic(i32* %83, i32* %86, i32 80, i32 %87, i32 %89)
  %91 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %92 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %91, i32 0, i32 3
  store i64 %90, i64* %92, align 8
  ret void
}

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.tcphdr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @htonl(i64) #1

declare dso_local i64 @ntohl(i64) #1

declare dso_local i64 @csum_ipv6_magic(i32*, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @csum_partial(%struct.tcphdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
