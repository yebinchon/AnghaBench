; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nft_target_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nft_target_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32, i32 }
%struct.nft_expr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xt_target* }
%struct.xt_target = type { i32 (%struct.xt_tgdtor_param*)*, %struct.module* }
%struct.xt_tgdtor_param = type { %struct.xt_target*, i32, i8*, i32 }
%struct.module = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_ctx*, %struct.nft_expr*)* @nft_target_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_target_destroy(%struct.nft_ctx* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca %struct.nft_ctx*, align 8
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.xt_target*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca %struct.xt_tgdtor_param, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %3, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %4, align 8
  %9 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %10 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.xt_target*, %struct.xt_target** %12, align 8
  store %struct.xt_target* %13, %struct.xt_target** %5, align 8
  %14 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %15 = call i8* @nft_expr_priv(%struct.nft_expr* %14)
  store i8* %15, i8** %6, align 8
  %16 = load %struct.xt_target*, %struct.xt_target** %5, align 8
  %17 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %16, i32 0, i32 1
  %18 = load %struct.module*, %struct.module** %17, align 8
  store %struct.module* %18, %struct.module** %7, align 8
  %19 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %8, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = load %struct.xt_target*, %struct.xt_target** %5, align 8
  %24 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %8, i32 0, i32 0
  store %struct.xt_target* %23, %struct.xt_target** %24, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %8, i32 0, i32 2
  store i8* %25, i8** %26, align 8
  %27 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %8, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %8, i32 0, i32 0
  %32 = load %struct.xt_target*, %struct.xt_target** %31, align 8
  %33 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %32, i32 0, i32 0
  %34 = load i32 (%struct.xt_tgdtor_param*)*, i32 (%struct.xt_tgdtor_param*)** %33, align 8
  %35 = icmp ne i32 (%struct.xt_tgdtor_param*)* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %8, i32 0, i32 0
  %38 = load %struct.xt_target*, %struct.xt_target** %37, align 8
  %39 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %38, i32 0, i32 0
  %40 = load i32 (%struct.xt_tgdtor_param*)*, i32 (%struct.xt_tgdtor_param*)** %39, align 8
  %41 = call i32 %40(%struct.xt_tgdtor_param* %8)
  br label %42

42:                                               ; preds = %36, %2
  %43 = load %struct.module*, %struct.module** %7, align 8
  %44 = call i32 @module_put(%struct.module* %43)
  %45 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %46 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = call i32 @kfree(%struct.TYPE_2__* %47)
  ret void
}

declare dso_local i8* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @module_put(%struct.module*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
