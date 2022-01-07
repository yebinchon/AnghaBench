; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_tso.c_tso_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_tso.c_tso_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.tso_t = type { i64, i32, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32* }

@ETH_P_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tso_start(%struct.sk_buff* %0, %struct.tso_t* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.tso_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.tso_t* %1, %struct.tso_t** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call i32 @skb_transport_offset(%struct.sk_buff* %7)
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call i32 @tcp_hdrlen(%struct.sk_buff* %9)
  %11 = add nsw i32 %8, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ntohs(i32 %15)
  %17 = load %struct.tso_t*, %struct.tso_t** %4, align 8
  %18 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = call %struct.TYPE_4__* @tcp_hdr(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ntohl(i32 %22)
  %24 = load %struct.tso_t*, %struct.tso_t** %4, align 8
  %25 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.tso_t*, %struct.tso_t** %4, align 8
  %27 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call i64 @vlan_get_protocol(%struct.sk_buff* %28)
  %30 = load i32, i32* @ETH_P_IPV6, align 4
  %31 = call i64 @htons(i32 %30)
  %32 = icmp eq i64 %29, %31
  %33 = zext i1 %32 to i32
  %34 = load %struct.tso_t*, %struct.tso_t** %4, align 8
  %35 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = call i64 @skb_headlen(%struct.sk_buff* %36)
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %37, %39
  %41 = load %struct.tso_t*, %struct.tso_t** %4, align 8
  %42 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load %struct.tso_t*, %struct.tso_t** %4, align 8
  %50 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load %struct.tso_t*, %struct.tso_t** %4, align 8
  %52 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %85

55:                                               ; preds = %2
  %56 = load %struct.tso_t*, %struct.tso_t** %4, align 8
  %57 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %58, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %55
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.tso_t*, %struct.tso_t** %4, align 8
  %70 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32* %72, i32** %6, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i64 @skb_frag_size(i32* %73)
  %75 = load %struct.tso_t*, %struct.tso_t** %4, align 8
  %76 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call i64 @skb_frag_address(i32* %77)
  %79 = load %struct.tso_t*, %struct.tso_t** %4, align 8
  %80 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %79, i32 0, i32 3
  store i64 %78, i64* %80, align 8
  %81 = load %struct.tso_t*, %struct.tso_t** %4, align 8
  %82 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %82, align 8
  br label %85

85:                                               ; preds = %64, %55, %2
  ret void
}

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.TYPE_6__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.TYPE_4__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local i64 @skb_frag_address(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
