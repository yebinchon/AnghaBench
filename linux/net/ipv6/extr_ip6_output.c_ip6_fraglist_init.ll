; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_fraglist_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_fraglist_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.ip6_fraglist_iter = type { i32, i32, i8*, i8*, i64, i32 }
%struct.frag_hdr = type { i8*, i8*, i64, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8* }

@NEXTHDR_FRAGMENT = common dso_local global i8* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IP6_MF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_fraglist_init(%struct.sk_buff* %0, i32 %1, i8** %2, i8* %3, i8* %4, %struct.ip6_fraglist_iter* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ip6_fraglist_iter*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.frag_hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8** %2, i8*** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.ip6_fraglist_iter* %5, %struct.ip6_fraglist_iter** %13, align 8
  %16 = load i8*, i8** @NEXTHDR_FRAGMENT, align 8
  %17 = load i8**, i8*** %10, align 8
  store i8* %16, i8** %17, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = call i32 @skb_network_header(%struct.sk_buff* %18)
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call i32 @kmemdup(i32 %19, i32 %20, i32 %21)
  %23 = load %struct.ip6_fraglist_iter*, %struct.ip6_fraglist_iter** %13, align 8
  %24 = getelementptr inbounds %struct.ip6_fraglist_iter, %struct.ip6_fraglist_iter* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ip6_fraglist_iter*, %struct.ip6_fraglist_iter** %13, align 8
  %26 = getelementptr inbounds %struct.ip6_fraglist_iter, %struct.ip6_fraglist_iter* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %101

32:                                               ; preds = %6
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ip6_fraglist_iter*, %struct.ip6_fraglist_iter** %13, align 8
  %38 = getelementptr inbounds %struct.ip6_fraglist_iter, %struct.ip6_fraglist_iter* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = call i32 @skb_frag_list_init(%struct.sk_buff* %39)
  %41 = load %struct.ip6_fraglist_iter*, %struct.ip6_fraglist_iter** %13, align 8
  %42 = getelementptr inbounds %struct.ip6_fraglist_iter, %struct.ip6_fraglist_iter* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.ip6_fraglist_iter*, %struct.ip6_fraglist_iter** %13, align 8
  %45 = getelementptr inbounds %struct.ip6_fraglist_iter, %struct.ip6_fraglist_iter* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load %struct.ip6_fraglist_iter*, %struct.ip6_fraglist_iter** %13, align 8
  %48 = getelementptr inbounds %struct.ip6_fraglist_iter, %struct.ip6_fraglist_iter* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.ip6_fraglist_iter*, %struct.ip6_fraglist_iter** %13, align 8
  %51 = getelementptr inbounds %struct.ip6_fraglist_iter, %struct.ip6_fraglist_iter* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @__skb_pull(%struct.sk_buff* %52, i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = call %struct.frag_hdr* @__skb_push(%struct.sk_buff* %55, i32 32)
  store %struct.frag_hdr* %56, %struct.frag_hdr** %15, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call %struct.frag_hdr* @__skb_push(%struct.sk_buff* %57, i32 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = call i32 @skb_reset_network_header(%struct.sk_buff* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = call i32 @skb_network_header(%struct.sk_buff* %62)
  %64 = load %struct.ip6_fraglist_iter*, %struct.ip6_fraglist_iter** %13, align 8
  %65 = getelementptr inbounds %struct.ip6_fraglist_iter, %struct.ip6_fraglist_iter* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @memcpy(i32 %63, i32 %66, i32 %67)
  %69 = load i8*, i8** %11, align 8
  %70 = load %struct.frag_hdr*, %struct.frag_hdr** %15, align 8
  %71 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load %struct.frag_hdr*, %struct.frag_hdr** %15, align 8
  %73 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @IP6_MF, align 4
  %75 = call i8* @htons(i32 %74)
  %76 = load %struct.frag_hdr*, %struct.frag_hdr** %15, align 8
  %77 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load %struct.frag_hdr*, %struct.frag_hdr** %15, align 8
  %80 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = call i32 @skb_pagelen(%struct.sk_buff* %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = zext i32 %83 to i64
  %85 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %86 = call i64 @skb_headlen(%struct.sk_buff* %85)
  %87 = sub nsw i64 %84, %86
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %14, align 4
  %94 = zext i32 %93 to i64
  %95 = sub i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i8* @htons(i32 %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %99 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %98)
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %32, %29
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i32 @kmemdup(i32, i32, i32) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_list_init(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.frag_hdr* @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @skb_pagelen(%struct.sk_buff*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
