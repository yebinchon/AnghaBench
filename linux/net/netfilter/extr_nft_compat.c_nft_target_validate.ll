; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nft_target_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nft_target_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xt_target* }
%struct.xt_target = type { i32, i32 }
%struct.nft_data = type { i32 }
%struct.nft_base_chain = type { %struct.nf_hook_ops }
%struct.nf_hook_ops = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nft_data**)* @nft_target_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_target_validate(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nft_data** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nft_data**, align 8
  %8 = alloca %struct.xt_target*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nft_base_chain*, align 8
  %12 = alloca %struct.nf_hook_ops*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nft_data** %2, %struct.nft_data*** %7, align 8
  %13 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %14 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.xt_target*, %struct.xt_target** %16, align 8
  store %struct.xt_target* %17, %struct.xt_target** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @nft_is_base_chain(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %59

23:                                               ; preds = %3
  %24 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.nft_base_chain* @nft_base_chain(i32 %26)
  store %struct.nft_base_chain* %27, %struct.nft_base_chain** %11, align 8
  %28 = load %struct.nft_base_chain*, %struct.nft_base_chain** %11, align 8
  %29 = getelementptr inbounds %struct.nft_base_chain, %struct.nft_base_chain* %28, i32 0, i32 0
  store %struct.nf_hook_ops* %29, %struct.nf_hook_ops** %12, align 8
  %30 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %12, align 8
  %31 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 1, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.xt_target*, %struct.xt_target** %8, align 8
  %35 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %23
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.xt_target*, %struct.xt_target** %8, align 8
  %41 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %60

48:                                               ; preds = %38, %23
  %49 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %50 = load %struct.xt_target*, %struct.xt_target** %8, align 8
  %51 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nft_compat_chain_validate_dependency(%struct.nft_ctx* %49, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %60

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %3
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %56, %45
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @nft_is_base_chain(i32) #1

declare dso_local %struct.nft_base_chain* @nft_base_chain(i32) #1

declare dso_local i32 @nft_compat_chain_validate_dependency(%struct.nft_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
