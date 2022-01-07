; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_tso.c_tso_build_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_tso.c_tso_build_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tso_t = type { i32, i32, i32 }
%struct.tcphdr = type { i64, i64, i64, i32 }
%struct.iphdr = type { i8*, i8* }
%struct.ipv6hdr = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tso_build_hdr(%struct.sk_buff* %0, i8* %1, %struct.tso_t* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tso_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tcphdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.iphdr*, align 8
  %15 = alloca %struct.ipv6hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.tso_t* %2, %struct.tso_t** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i32 @skb_transport_offset(%struct.sk_buff* %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @tcp_hdrlen(%struct.sk_buff* %18)
  %20 = add nsw i32 %17, %19
  store i32 %20, i32* %12, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i32 @skb_network_offset(%struct.sk_buff* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @memcpy(i8* %23, i32 %26, i32 %27)
  %29 = load %struct.tso_t*, %struct.tso_t** %8, align 8
  %30 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %5
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = bitcast i8* %37 to %struct.iphdr*
  store %struct.iphdr* %38, %struct.iphdr** %14, align 8
  %39 = load %struct.tso_t*, %struct.tso_t** %8, align 8
  %40 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @htons(i32 %41)
  %43 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* %13, align 4
  %49 = sub nsw i32 %47, %48
  %50 = call i8* @htons(i32 %49)
  %51 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %52 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.tso_t*, %struct.tso_t** %8, align 8
  %54 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %70

57:                                               ; preds = %5
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = bitcast i8* %61 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %62, %struct.ipv6hdr** %15, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = call i32 @tcp_hdrlen(%struct.sk_buff* %64)
  %66 = add nsw i32 %63, %65
  %67 = call i8* @htons(i32 %66)
  %68 = load %struct.ipv6hdr*, %struct.ipv6hdr** %15, align 8
  %69 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %57, %33
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = call i32 @skb_transport_offset(%struct.sk_buff* %72)
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = bitcast i8* %75 to %struct.tcphdr*
  store %struct.tcphdr* %76, %struct.tcphdr** %11, align 8
  %77 = load %struct.tso_t*, %struct.tso_t** %8, align 8
  %78 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %81 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %80, i32 0, i32 3
  %82 = call i32 @put_unaligned_be32(i32 %79, i32* %81)
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %70
  %86 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %87 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %89 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %91 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %85, %70
  ret void
}

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
