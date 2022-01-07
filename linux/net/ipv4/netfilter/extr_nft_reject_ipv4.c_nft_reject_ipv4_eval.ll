; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nft_reject_ipv4.c_nft_reject_ipv4_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nft_reject_ipv4.c_nft_reject_ipv4_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nft_pktinfo = type { i32 }
%struct.nft_reject = type { i32, i32 }

@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_reject_ipv4_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_reject_ipv4_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_reject*, align 8
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %8 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %9 = call %struct.nft_reject* @nft_expr_priv(%struct.nft_expr* %8)
  store %struct.nft_reject* %9, %struct.nft_reject** %7, align 8
  %10 = load %struct.nft_reject*, %struct.nft_reject** %7, align 8
  %11 = getelementptr inbounds %struct.nft_reject, %struct.nft_reject* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %32 [
    i32 129, label %13
    i32 128, label %23
  ]

13:                                               ; preds = %3
  %14 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %15 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nft_reject*, %struct.nft_reject** %7, align 8
  %18 = getelementptr inbounds %struct.nft_reject, %struct.nft_reject* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %21 = call i32 @nft_hook(%struct.nft_pktinfo* %20)
  %22 = call i32 @nf_send_unreach(i32 %16, i32 %19, i32 %21)
  br label %33

23:                                               ; preds = %3
  %24 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %25 = call i32 @nft_net(%struct.nft_pktinfo* %24)
  %26 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %27 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %30 = call i32 @nft_hook(%struct.nft_pktinfo* %29)
  %31 = call i32 @nf_send_reset(i32 %25, i32 %28, i32 %30)
  br label %33

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %32, %23, %13
  %34 = load i32, i32* @NF_DROP, align 4
  %35 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %36 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  ret void
}

declare dso_local %struct.nft_reject* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nf_send_unreach(i32, i32, i32) #1

declare dso_local i32 @nft_hook(%struct.nft_pktinfo*) #1

declare dso_local i32 @nf_send_reset(i32, i32, i32) #1

declare dso_local i32 @nft_net(%struct.nft_pktinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
