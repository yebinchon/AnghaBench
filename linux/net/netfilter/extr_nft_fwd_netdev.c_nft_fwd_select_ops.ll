; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_fwd_netdev.c_nft_fwd_select_ops.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_fwd_netdev.c_nft_fwd_select_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr_ops = type { i32 }
%struct.nft_ctx = type { i32 }
%struct.nlattr = type { i32 }

@NFTA_FWD_SREG_ADDR = common dso_local global i64 0, align 8
@nft_fwd_neigh_netdev_ops = common dso_local global %struct.nft_expr_ops zeroinitializer, align 4
@NFTA_FWD_SREG_DEV = common dso_local global i64 0, align 8
@nft_fwd_netdev_ops = common dso_local global %struct.nft_expr_ops zeroinitializer, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nft_expr_ops* (%struct.nft_ctx*, %struct.nlattr**)* @nft_fwd_select_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nft_expr_ops* @nft_fwd_select_ops(%struct.nft_ctx* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.nft_expr_ops*, align 8
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nlattr**, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %6 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %7 = load i64, i64* @NFTA_FWD_SREG_ADDR, align 8
  %8 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %6, i64 %7
  %9 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %10 = icmp ne %struct.nlattr* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.nft_expr_ops* @nft_fwd_neigh_netdev_ops, %struct.nft_expr_ops** %3, align 8
  br label %23

12:                                               ; preds = %2
  %13 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %14 = load i64, i64* @NFTA_FWD_SREG_DEV, align 8
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %17 = icmp ne %struct.nlattr* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store %struct.nft_expr_ops* @nft_fwd_netdev_ops, %struct.nft_expr_ops** %3, align 8
  br label %23

19:                                               ; preds = %12
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.nft_expr_ops* @ERR_PTR(i32 %21)
  store %struct.nft_expr_ops* %22, %struct.nft_expr_ops** %3, align 8
  br label %23

23:                                               ; preds = %19, %18, %11
  %24 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %3, align 8
  ret %struct.nft_expr_ops* %24
}

declare dso_local %struct.nft_expr_ops* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
