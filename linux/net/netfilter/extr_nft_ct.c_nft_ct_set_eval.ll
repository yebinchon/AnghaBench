; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_ct.c_nft_ct_set_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_ct.c_nft_ct_set_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { i8** }
%struct.nft_pktinfo = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.nft_ct = type { i64, i32 }
%struct.nf_conn = type { i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@IPCT_MARK = common dso_local global i32 0, align 4
@IPCT_SECMARK = common dso_local global i32 0, align 4
@NF_CT_LABELS_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_ct_set_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_ct_set_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_ct*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conn*, align 8
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %11 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %12 = call %struct.nft_ct* @nft_expr_priv(%struct.nft_expr* %11)
  store %struct.nft_ct* %12, %struct.nft_ct** %7, align 8
  %13 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %14 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %13, i32 0, i32 0
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %16, i32* %9)
  store %struct.nf_conn* %17, %struct.nf_conn** %10, align 8
  %18 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %19 = icmp eq %struct.nf_conn* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %22 = call i64 @nf_ct_is_template(%struct.nf_conn* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %3
  br label %30

25:                                               ; preds = %20
  %26 = load %struct.nft_ct*, %struct.nft_ct** %7, align 8
  %27 = getelementptr inbounds %struct.nft_ct, %struct.nft_ct* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %29 [
  ]

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %24, %29
  ret void
}

declare dso_local %struct.nft_ct* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i64 @nf_ct_is_template(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
