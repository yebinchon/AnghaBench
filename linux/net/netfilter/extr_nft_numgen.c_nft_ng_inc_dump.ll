; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_numgen.c_nft_ng_inc_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_numgen.c_nft_ng_inc_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_ng_inc = type { i32, i32, i32 }

@NFT_NG_INCREMENTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*)* @nft_ng_inc_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_ng_inc_dump(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_ng_inc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %4, align 8
  %6 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %7 = call %struct.nft_ng_inc* @nft_expr_priv(%struct.nft_expr* %6)
  store %struct.nft_ng_inc* %7, %struct.nft_ng_inc** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = load %struct.nft_ng_inc*, %struct.nft_ng_inc** %5, align 8
  %10 = getelementptr inbounds %struct.nft_ng_inc, %struct.nft_ng_inc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.nft_ng_inc*, %struct.nft_ng_inc** %5, align 8
  %13 = getelementptr inbounds %struct.nft_ng_inc, %struct.nft_ng_inc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NFT_NG_INCREMENTAL, align 4
  %16 = load %struct.nft_ng_inc*, %struct.nft_ng_inc** %5, align 8
  %17 = getelementptr inbounds %struct.nft_ng_inc, %struct.nft_ng_inc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @nft_ng_dump(%struct.sk_buff* %8, i32 %11, i32 %14, i32 %15, i32 %18)
  ret i32 %19
}

declare dso_local %struct.nft_ng_inc* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_ng_dump(%struct.sk_buff*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
