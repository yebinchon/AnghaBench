; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_meta.c_nft_meta_set_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_meta.c_nft_meta_set_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_meta = type { i32, i32 }

@NFTA_META_KEY = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFTA_META_SREG = common dso_local global i64 0, align 8
@nft_trace_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nft_meta_set_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_meta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %11 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %12 = call %struct.nft_meta* @nft_expr_priv(%struct.nft_expr* %11)
  store %struct.nft_meta* %12, %struct.nft_meta** %8, align 8
  %13 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %14 = load i64, i64* @NFTA_META_KEY, align 8
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %17 = call i32 @nla_get_be32(%struct.nlattr* %16)
  %18 = call i32 @ntohl(i32 %17)
  %19 = load %struct.nft_meta*, %struct.nft_meta** %8, align 8
  %20 = getelementptr inbounds %struct.nft_meta, %struct.nft_meta* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.nft_meta*, %struct.nft_meta** %8, align 8
  %22 = getelementptr inbounds %struct.nft_meta, %struct.nft_meta* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %27 [
    i32 132, label %24
    i32 129, label %24
    i32 131, label %25
    i32 130, label %26
  ]

24:                                               ; preds = %3, %3
  store i32 4, i32* %9, align 4
  br label %30

25:                                               ; preds = %3
  store i32 4, i32* %9, align 4
  br label %30

26:                                               ; preds = %3
  store i32 4, i32* %9, align 4
  br label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %55

30:                                               ; preds = %26, %25, %24
  %31 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %32 = load i64, i64* @NFTA_META_SREG, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = call i32 @nft_parse_register(%struct.nlattr* %34)
  %36 = load %struct.nft_meta*, %struct.nft_meta** %8, align 8
  %37 = getelementptr inbounds %struct.nft_meta, %struct.nft_meta* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.nft_meta*, %struct.nft_meta** %8, align 8
  %39 = getelementptr inbounds %struct.nft_meta, %struct.nft_meta* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @nft_validate_register_load(i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %55

47:                                               ; preds = %30
  %48 = load %struct.nft_meta*, %struct.nft_meta** %8, align 8
  %49 = getelementptr inbounds %struct.nft_meta, %struct.nft_meta* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 131
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @static_branch_inc(i32* @nft_trace_enabled)
  br label %54

54:                                               ; preds = %52, %47
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %45, %27
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.nft_meta* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_load(i32, i32) #1

declare dso_local i32 @static_branch_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
