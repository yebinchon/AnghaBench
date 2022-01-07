; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_exthdr.c_nft_exthdr_ipv4_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_exthdr.c_nft_exthdr_ipv4_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nft_pktinfo = type { %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.nft_exthdr = type { i64, i32, i32, i64, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@NFT_EXTHDR_F_PRESENT = common dso_local global i32 0, align 4
@NFT_REG32_SIZE = common dso_local global i64 0, align 8
@NFT_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_exthdr_ipv4_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_exthdr_ipv4_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_exthdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %12 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %13 = call %struct.nft_exthdr* @nft_expr_priv(%struct.nft_expr* %12)
  store %struct.nft_exthdr* %13, %struct.nft_exthdr** %7, align 8
  %14 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %15 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.nft_exthdr*, %struct.nft_exthdr** %7, align 8
  %18 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32* %20, i32** %8, align 8
  %21 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %22 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %21, i32 0, i32 0
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %9, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @ETH_P_IP, align 4
  %28 = call i64 @htons(i32 %27)
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %80

31:                                               ; preds = %3
  %32 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %33 = call i32 @nft_net(%struct.nft_pktinfo* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = load %struct.nft_exthdr*, %struct.nft_exthdr** %7, align 8
  %36 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ipv4_find_option(i32 %33, %struct.sk_buff* %34, i32* %10, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.nft_exthdr*, %struct.nft_exthdr** %7, align 8
  %40 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @NFT_EXTHDR_F_PRESENT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %31
  %46 = load i32, i32* %11, align 4
  %47 = icmp sge i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  br label %85

50:                                               ; preds = %31
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %80

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.nft_exthdr*, %struct.nft_exthdr** %7, align 8
  %57 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = add i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = load %struct.nft_exthdr*, %struct.nft_exthdr** %7, align 8
  %63 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NFT_REG32_SIZE, align 8
  %66 = udiv i64 %64, %65
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  store i32 0, i32* %67, align 4
  %68 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %69 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %68, i32 0, i32 0
  %70 = load %struct.sk_buff*, %struct.sk_buff** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = load %struct.nft_exthdr*, %struct.nft_exthdr** %7, align 8
  %74 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @skb_copy_bits(%struct.sk_buff* %70, i32 %71, i32* %72, i64 %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %55
  br label %80

79:                                               ; preds = %55
  br label %85

80:                                               ; preds = %78, %53, %30
  %81 = load i32, i32* @NFT_BREAK, align 4
  %82 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %83 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  br label %85

85:                                               ; preds = %80, %79, %45
  ret void
}

declare dso_local %struct.nft_exthdr* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ipv4_find_option(i32, %struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @nft_net(%struct.nft_pktinfo*) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
