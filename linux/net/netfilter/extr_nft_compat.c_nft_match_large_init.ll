; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nft_match_large_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nft_match_large_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xt_match* }
%struct.xt_match = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_xt_match_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_match_large_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_match_large_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_xt_match_priv*, align 8
  %9 = alloca %struct.xt_match*, align 8
  %10 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %11 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %12 = call %struct.nft_xt_match_priv* @nft_expr_priv(%struct.nft_expr* %11)
  store %struct.nft_xt_match_priv* %12, %struct.nft_xt_match_priv** %8, align 8
  %13 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %14 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.xt_match*, %struct.xt_match** %16, align 8
  store %struct.xt_match* %17, %struct.xt_match** %9, align 8
  %18 = load %struct.xt_match*, %struct.xt_match** %9, align 8
  %19 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @XT_ALIGN(i32 %20)
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @kmalloc(i32 %21, i32 %22)
  %24 = load %struct.nft_xt_match_priv*, %struct.nft_xt_match_priv** %8, align 8
  %25 = getelementptr inbounds %struct.nft_xt_match_priv, %struct.nft_xt_match_priv* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.nft_xt_match_priv*, %struct.nft_xt_match_priv** %8, align 8
  %27 = getelementptr inbounds %struct.nft_xt_match_priv, %struct.nft_xt_match_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %3
  %34 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %35 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %36 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %37 = load %struct.nft_xt_match_priv*, %struct.nft_xt_match_priv** %8, align 8
  %38 = getelementptr inbounds %struct.nft_xt_match_priv, %struct.nft_xt_match_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @__nft_match_init(%struct.nft_ctx* %34, %struct.nft_expr* %35, %struct.nlattr** %36, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load %struct.nft_xt_match_priv*, %struct.nft_xt_match_priv** %8, align 8
  %45 = getelementptr inbounds %struct.nft_xt_match_priv, %struct.nft_xt_match_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @kfree(i32 %46)
  br label %48

48:                                               ; preds = %43, %33
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %30
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.nft_xt_match_priv* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @XT_ALIGN(i32) #1

declare dso_local i32 @__nft_match_init(%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
