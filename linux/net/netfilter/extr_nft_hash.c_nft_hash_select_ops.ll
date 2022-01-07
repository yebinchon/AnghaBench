; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_hash.c_nft_hash_select_ops.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_hash.c_nft_hash_select_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr_ops = type { i32 }
%struct.nft_ctx = type { i32 }
%struct.nlattr = type { i32 }

@NFTA_HASH_TYPE = common dso_local global i64 0, align 8
@nft_jhash_ops = common dso_local global %struct.nft_expr_ops zeroinitializer, align 4
@nft_symhash_ops = common dso_local global %struct.nft_expr_ops zeroinitializer, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nft_expr_ops* (%struct.nft_ctx*, %struct.nlattr**)* @nft_hash_select_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nft_expr_ops* @nft_hash_select_ops(%struct.nft_ctx* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.nft_expr_ops*, align 8
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %7 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %8 = load i64, i64* @NFTA_HASH_TYPE, align 8
  %9 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %7, i64 %8
  %10 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.nft_expr_ops* @nft_jhash_ops, %struct.nft_expr_ops** %3, align 8
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %15 = load i64, i64* @NFTA_HASH_TYPE, align 8
  %16 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %15
  %17 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %18 = call i32 @nla_get_be32(%struct.nlattr* %17)
  %19 = call i32 @ntohl(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %23 [
    i32 128, label %21
    i32 129, label %22
  ]

21:                                               ; preds = %13
  store %struct.nft_expr_ops* @nft_symhash_ops, %struct.nft_expr_ops** %3, align 8
  br label %28

22:                                               ; preds = %13
  store %struct.nft_expr_ops* @nft_jhash_ops, %struct.nft_expr_ops** %3, align 8
  br label %28

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.nft_expr_ops* @ERR_PTR(i32 %26)
  store %struct.nft_expr_ops* %27, %struct.nft_expr_ops** %3, align 8
  br label %28

28:                                               ; preds = %24, %22, %21, %12
  %29 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %3, align 8
  ret %struct.nft_expr_ops* %29
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local %struct.nft_expr_ops* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
