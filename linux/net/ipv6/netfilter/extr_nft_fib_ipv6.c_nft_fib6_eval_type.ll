; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nft_fib_ipv6.c_nft_fib6_eval_type.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nft_fib_ipv6.c_nft_fib6_eval_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.nft_pktinfo = type { i32 }
%struct.nft_fib = type { i64 }
%struct.ipv6hdr = type { i32 }

@NFT_BREAK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nft_fib6_eval_type(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_fib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ipv6hdr*, align 8
  %11 = alloca %struct.ipv6hdr, align 4
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %12 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %13 = call %struct.nft_fib* @nft_expr_priv(%struct.nft_expr* %12)
  store %struct.nft_fib* %13, %struct.nft_fib** %7, align 8
  %14 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %15 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @skb_network_offset(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %19 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %22 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32* %24, i32** %9, align 8
  %25 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %26 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.ipv6hdr* @skb_header_pointer(i32 %27, i32 %28, i32 4, %struct.ipv6hdr* %11)
  store %struct.ipv6hdr* %29, %struct.ipv6hdr** %10, align 8
  %30 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %31 = icmp ne %struct.ipv6hdr* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @NFT_BREAK, align 4
  %34 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %35 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  br label %43

37:                                               ; preds = %3
  %38 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %39 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %40 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %41 = call i32 @__nft_fib6_eval_type(%struct.nft_fib* %38, %struct.nft_pktinfo* %39, %struct.ipv6hdr* %40)
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %32
  ret void
}

declare dso_local %struct.nft_fib* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @skb_network_offset(i32) #1

declare dso_local %struct.ipv6hdr* @skb_header_pointer(i32, i32, i32, %struct.ipv6hdr*) #1

declare dso_local i32 @__nft_fib6_eval_type(%struct.nft_fib*, %struct.nft_pktinfo*, %struct.ipv6hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
