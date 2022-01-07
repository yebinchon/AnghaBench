; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nft_dup_ipv6.c_nft_dup_ipv6_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nft_dup_ipv6.c_nft_dup_ipv6_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_dup_ipv6 = type { i64, i64 }

@NFTA_DUP_SREG_ADDR = common dso_local global i32 0, align 4
@NFTA_DUP_SREG_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*)* @nft_dup_ipv6_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_dup_ipv6_dump(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_dup_ipv6*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  %7 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %8 = call %struct.nft_dup_ipv6* @nft_expr_priv(%struct.nft_expr* %7)
  store %struct.nft_dup_ipv6* %8, %struct.nft_dup_ipv6** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @NFTA_DUP_SREG_ADDR, align 4
  %11 = load %struct.nft_dup_ipv6*, %struct.nft_dup_ipv6** %6, align 8
  %12 = getelementptr inbounds %struct.nft_dup_ipv6, %struct.nft_dup_ipv6* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @nft_dump_register(%struct.sk_buff* %9, i32 %10, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.nft_dup_ipv6*, %struct.nft_dup_ipv6** %6, align 8
  %19 = getelementptr inbounds %struct.nft_dup_ipv6, %struct.nft_dup_ipv6* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @NFTA_DUP_SREG_DEV, align 4
  %25 = load %struct.nft_dup_ipv6*, %struct.nft_dup_ipv6** %6, align 8
  %26 = getelementptr inbounds %struct.nft_dup_ipv6, %struct.nft_dup_ipv6* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @nft_dump_register(%struct.sk_buff* %23, i32 %24, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %32

31:                                               ; preds = %22, %17
  store i32 0, i32* %3, align 4
  br label %33

32:                                               ; preds = %30, %16
  store i32 -1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.nft_dup_ipv6* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nft_dump_register(%struct.sk_buff*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
