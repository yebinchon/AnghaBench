; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_xfrm.c_nft_xfrm_get_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_xfrm.c_nft_xfrm_get_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nft_pktinfo = type { i32 }
%struct.nft_xfrm = type { i32 }

@NFT_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_xfrm_get_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_xfrm_get_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_xfrm*, align 8
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %8 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %9 = call %struct.nft_xfrm* @nft_expr_priv(%struct.nft_expr* %8)
  store %struct.nft_xfrm* %9, %struct.nft_xfrm** %7, align 8
  %10 = load %struct.nft_xfrm*, %struct.nft_xfrm** %7, align 8
  %11 = getelementptr inbounds %struct.nft_xfrm, %struct.nft_xfrm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %23 [
    i32 129, label %13
    i32 128, label %18
  ]

13:                                               ; preds = %3
  %14 = load %struct.nft_xfrm*, %struct.nft_xfrm** %7, align 8
  %15 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %16 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %17 = call i32 @nft_xfrm_get_eval_in(%struct.nft_xfrm* %14, %struct.nft_regs* %15, %struct.nft_pktinfo* %16)
  br label %29

18:                                               ; preds = %3
  %19 = load %struct.nft_xfrm*, %struct.nft_xfrm** %7, align 8
  %20 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %21 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %22 = call i32 @nft_xfrm_get_eval_out(%struct.nft_xfrm* %19, %struct.nft_regs* %20, %struct.nft_pktinfo* %21)
  br label %29

23:                                               ; preds = %3
  %24 = call i32 @WARN_ON_ONCE(i32 1)
  %25 = load i32, i32* @NFT_BREAK, align 4
  %26 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %27 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  br label %29

29:                                               ; preds = %23, %18, %13
  ret void
}

declare dso_local %struct.nft_xfrm* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_xfrm_get_eval_in(%struct.nft_xfrm*, %struct.nft_regs*, %struct.nft_pktinfo*) #1

declare dso_local i32 @nft_xfrm_get_eval_out(%struct.nft_xfrm*, %struct.nft_regs*, %struct.nft_pktinfo*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
