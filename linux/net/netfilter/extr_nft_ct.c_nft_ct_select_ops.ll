; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_ct.c_nft_ct_select_ops.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_ct.c_nft_ct_select_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr_ops = type { i32 }
%struct.nft_ctx = type { i32 }
%struct.nlattr = type { i32 }

@NFTA_CT_KEY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_CT_DREG = common dso_local global i64 0, align 8
@NFTA_CT_SREG = common dso_local global i64 0, align 8
@nft_ct_get_ops = common dso_local global %struct.nft_expr_ops zeroinitializer, align 4
@nft_ct_set_ops = common dso_local global %struct.nft_expr_ops zeroinitializer, align 4
@NFT_CT_ZONE = common dso_local global i32 0, align 4
@nft_ct_set_zone_ops = common dso_local global %struct.nft_expr_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nft_expr_ops* (%struct.nft_ctx*, %struct.nlattr**)* @nft_ct_select_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nft_expr_ops* @nft_ct_select_ops(%struct.nft_ctx* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.nft_expr_ops*, align 8
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nlattr**, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %6 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %7 = load i64, i64* @NFTA_CT_KEY, align 8
  %8 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %6, i64 %7
  %9 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %10 = icmp eq %struct.nlattr* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.nft_expr_ops* @ERR_PTR(i32 %13)
  store %struct.nft_expr_ops* %14, %struct.nft_expr_ops** %3, align 8
  br label %49

15:                                               ; preds = %2
  %16 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %17 = load i64, i64* @NFTA_CT_DREG, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %23 = load i64, i64* @NFTA_CT_SREG, align 8
  %24 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %23
  %25 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %26 = icmp ne %struct.nlattr* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.nft_expr_ops* @ERR_PTR(i32 %29)
  store %struct.nft_expr_ops* %30, %struct.nft_expr_ops** %3, align 8
  br label %49

31:                                               ; preds = %21, %15
  %32 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %33 = load i64, i64* @NFTA_CT_DREG, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = icmp ne %struct.nlattr* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store %struct.nft_expr_ops* @nft_ct_get_ops, %struct.nft_expr_ops** %3, align 8
  br label %49

38:                                               ; preds = %31
  %39 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %40 = load i64, i64* @NFTA_CT_SREG, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = icmp ne %struct.nlattr* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store %struct.nft_expr_ops* @nft_ct_set_ops, %struct.nft_expr_ops** %3, align 8
  br label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.nft_expr_ops* @ERR_PTR(i32 %47)
  store %struct.nft_expr_ops* %48, %struct.nft_expr_ops** %3, align 8
  br label %49

49:                                               ; preds = %45, %44, %37, %27, %11
  %50 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %3, align 8
  ret %struct.nft_expr_ops* %50
}

declare dso_local %struct.nft_expr_ops* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
