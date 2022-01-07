; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_uncompress_multicast_ctx_daddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_uncompress_multicast_ctx_daddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.lowpan_iphc_ctx = type { i32, i32 }
%struct.in6_addr = type { i32* }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.lowpan_iphc_ctx*, %struct.in6_addr*, i32)* @lowpan_uncompress_multicast_ctx_daddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_uncompress_multicast_ctx_daddr(%struct.sk_buff* %0, %struct.lowpan_iphc_ctx* %1, %struct.in6_addr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.lowpan_iphc_ctx*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.in6_addr, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.lowpan_iphc_ctx* %1, %struct.lowpan_iphc_ctx** %7, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = bitcast %struct.in6_addr* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 8, i1 false)
  %13 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %14 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 255, i32* %16, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %19 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = call i32 @lowpan_fetch_skb(%struct.sk_buff* %17, i32* %21, i32 2)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %25 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 12
  %28 = call i32 @lowpan_fetch_skb(%struct.sk_buff* %23, i32* %27, i32 4)
  %29 = load i32, i32* %11, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %55

36:                                               ; preds = %4
  %37 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %7, align 8
  %38 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %41 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  store i32 %39, i32* %43, align 4
  %44 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %7, align 8
  %45 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %44, i32 0, i32 1
  %46 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %7, align 8
  %47 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ipv6_addr_prefix(%struct.in6_addr* %10, i32* %45, i32 %48)
  %50 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %51 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = call i32 @memcpy(i32* %53, %struct.in6_addr* %10, i32 8)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %36, %33
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lowpan_fetch_skb(%struct.sk_buff*, i32*, i32) #2

declare dso_local i32 @ipv6_addr_prefix(%struct.in6_addr*, i32*, i32) #2

declare dso_local i32 @memcpy(i32*, %struct.in6_addr*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
