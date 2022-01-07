; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_objref.c_nft_objref_select_ops.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_objref.c_nft_objref_select_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr_ops = type { i32 }
%struct.nft_ctx = type { i32 }
%struct.nlattr = type { i32 }

@NFTA_OBJREF_SET_SREG = common dso_local global i64 0, align 8
@NFTA_OBJREF_SET_NAME = common dso_local global i64 0, align 8
@NFTA_OBJREF_SET_ID = common dso_local global i64 0, align 8
@nft_objref_map_ops = common dso_local global %struct.nft_expr_ops zeroinitializer, align 4
@NFTA_OBJREF_IMM_NAME = common dso_local global i64 0, align 8
@NFTA_OBJREF_IMM_TYPE = common dso_local global i64 0, align 8
@nft_objref_ops = common dso_local global %struct.nft_expr_ops zeroinitializer, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nft_expr_ops* (%struct.nft_ctx*, %struct.nlattr**)* @nft_objref_select_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nft_expr_ops* @nft_objref_select_ops(%struct.nft_ctx* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.nft_expr_ops*, align 8
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nlattr**, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %6 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %7 = load i64, i64* @NFTA_OBJREF_SET_SREG, align 8
  %8 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %6, i64 %7
  %9 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %10 = icmp ne %struct.nlattr* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %13 = load i64, i64* @NFTA_OBJREF_SET_NAME, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %19 = load i64, i64* @NFTA_OBJREF_SET_ID, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = icmp ne %struct.nlattr* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %11
  store %struct.nft_expr_ops* @nft_objref_map_ops, %struct.nft_expr_ops** %3, align 8
  br label %42

24:                                               ; preds = %17, %2
  %25 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %26 = load i64, i64* @NFTA_OBJREF_IMM_NAME, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %32 = load i64, i64* @NFTA_OBJREF_IMM_TYPE, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = icmp ne %struct.nlattr* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store %struct.nft_expr_ops* @nft_objref_ops, %struct.nft_expr_ops** %3, align 8
  br label %42

37:                                               ; preds = %30, %24
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.nft_expr_ops* @ERR_PTR(i32 %40)
  store %struct.nft_expr_ops* %41, %struct.nft_expr_ops** %3, align 8
  br label %42

42:                                               ; preds = %38, %36, %23
  %43 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %3, align 8
  ret %struct.nft_expr_ops* %43
}

declare dso_local %struct.nft_expr_ops* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
