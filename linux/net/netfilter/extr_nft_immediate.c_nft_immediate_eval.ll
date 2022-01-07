; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_immediate.c_nft_immediate_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_immediate.c_nft_immediate_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { i32* }
%struct.nft_pktinfo = type { i32 }
%struct.nft_immediate_expr = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nft_immediate_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_immediate_expr*, align 8
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %8 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %9 = call %struct.nft_immediate_expr* @nft_expr_priv(%struct.nft_expr* %8)
  store %struct.nft_immediate_expr* %9, %struct.nft_immediate_expr** %7, align 8
  %10 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %11 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.nft_immediate_expr*, %struct.nft_immediate_expr** %7, align 8
  %14 = getelementptr inbounds %struct.nft_immediate_expr, %struct.nft_immediate_expr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load %struct.nft_immediate_expr*, %struct.nft_immediate_expr** %7, align 8
  %18 = getelementptr inbounds %struct.nft_immediate_expr, %struct.nft_immediate_expr* %17, i32 0, i32 2
  %19 = load %struct.nft_immediate_expr*, %struct.nft_immediate_expr** %7, align 8
  %20 = getelementptr inbounds %struct.nft_immediate_expr, %struct.nft_immediate_expr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @nft_data_copy(i32* %16, i32* %18, i32 %21)
  ret void
}

declare dso_local %struct.nft_immediate_expr* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_data_copy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
