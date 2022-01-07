; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_hash.c_nft_symhash_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_hash.c_nft_symhash_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { i64* }
%struct.nft_pktinfo = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.nft_symhash = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_symhash_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_symhash_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_symhash*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %10 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %11 = call %struct.nft_symhash* @nft_expr_priv(%struct.nft_expr* %10)
  store %struct.nft_symhash* %11, %struct.nft_symhash** %7, align 8
  %12 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %13 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %12, i32 0, i32 0
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = call i32 @__skb_get_hash_symmetric(%struct.sk_buff* %15)
  %17 = load %struct.nft_symhash*, %struct.nft_symhash** %7, align 8
  %18 = getelementptr inbounds %struct.nft_symhash, %struct.nft_symhash* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @reciprocal_scale(i32 %16, i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.nft_symhash*, %struct.nft_symhash** %7, align 8
  %23 = getelementptr inbounds %struct.nft_symhash, %struct.nft_symhash* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %27 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load %struct.nft_symhash*, %struct.nft_symhash** %7, align 8
  %30 = getelementptr inbounds %struct.nft_symhash, %struct.nft_symhash* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  store i64 %25, i64* %32, align 8
  ret void
}

declare dso_local %struct.nft_symhash* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @reciprocal_scale(i32, i32) #1

declare dso_local i32 @__skb_get_hash_symmetric(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
