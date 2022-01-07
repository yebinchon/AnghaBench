; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_exthdr.c_nft_exthdr_ipv6_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_exthdr.c_nft_exthdr_ipv6_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nft_pktinfo = type { i32 }
%struct.nft_exthdr = type { i64, i32, i32, i64, i32 }

@NFT_EXTHDR_F_PRESENT = common dso_local global i32 0, align 4
@NFT_REG32_SIZE = common dso_local global i64 0, align 8
@NFT_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_exthdr_ipv6_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_exthdr_ipv6_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_exthdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %11 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %12 = call %struct.nft_exthdr* @nft_expr_priv(%struct.nft_expr* %11)
  store %struct.nft_exthdr* %12, %struct.nft_exthdr** %7, align 8
  %13 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %14 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.nft_exthdr*, %struct.nft_exthdr** %7, align 8
  %17 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  store i32* %19, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %21 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nft_exthdr*, %struct.nft_exthdr** %7, align 8
  %24 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ipv6_find_hdr(i32 %22, i32* %9, i32 %25, i32* null, i32* null)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.nft_exthdr*, %struct.nft_exthdr** %7, align 8
  %28 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @NFT_EXTHDR_F_PRESENT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load i32, i32* %10, align 4
  %35 = icmp sge i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  br label %73

38:                                               ; preds = %3
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %68

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.nft_exthdr*, %struct.nft_exthdr** %7, align 8
  %45 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load %struct.nft_exthdr*, %struct.nft_exthdr** %7, align 8
  %51 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NFT_REG32_SIZE, align 8
  %54 = udiv i64 %52, %53
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  store i32 0, i32* %55, align 4
  %56 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %57 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = load %struct.nft_exthdr*, %struct.nft_exthdr** %7, align 8
  %62 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @skb_copy_bits(i32 %58, i32 %59, i32* %60, i64 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %43
  br label %68

67:                                               ; preds = %43
  br label %73

68:                                               ; preds = %66, %41
  %69 = load i32, i32* @NFT_BREAK, align 4
  %70 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %71 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  br label %73

73:                                               ; preds = %68, %67, %33
  ret void
}

declare dso_local %struct.nft_exthdr* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @ipv6_find_hdr(i32, i32*, i32, i32*, i32*) #1

declare dso_local i64 @skb_copy_bits(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
