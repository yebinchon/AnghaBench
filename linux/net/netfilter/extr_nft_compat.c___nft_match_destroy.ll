; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c___nft_match_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c___nft_match_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32, i32 }
%struct.nft_expr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xt_match* }
%struct.xt_match = type { i32 (%struct.xt_mtdtor_param*)*, %struct.module* }
%struct.xt_mtdtor_param = type { %struct.xt_match*, i32, i8*, i32 }
%struct.module = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_ctx*, %struct.nft_expr*, i8*)* @__nft_match_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nft_match_destroy(%struct.nft_ctx* %0, %struct.nft_expr* %1, i8* %2) #0 {
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xt_match*, align 8
  %8 = alloca %struct.module*, align 8
  %9 = alloca %struct.xt_mtdtor_param, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %11 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.xt_match*, %struct.xt_match** %13, align 8
  store %struct.xt_match* %14, %struct.xt_match** %7, align 8
  %15 = load %struct.xt_match*, %struct.xt_match** %7, align 8
  %16 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %15, i32 0, i32 1
  %17 = load %struct.module*, %struct.module** %16, align 8
  store %struct.module* %17, %struct.module** %8, align 8
  %18 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %9, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = load %struct.xt_match*, %struct.xt_match** %7, align 8
  %23 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %9, i32 0, i32 0
  store %struct.xt_match* %22, %struct.xt_match** %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %9, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %9, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %9, i32 0, i32 0
  %31 = load %struct.xt_match*, %struct.xt_match** %30, align 8
  %32 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %31, i32 0, i32 0
  %33 = load i32 (%struct.xt_mtdtor_param*)*, i32 (%struct.xt_mtdtor_param*)** %32, align 8
  %34 = icmp ne i32 (%struct.xt_mtdtor_param*)* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %9, i32 0, i32 0
  %37 = load %struct.xt_match*, %struct.xt_match** %36, align 8
  %38 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %37, i32 0, i32 0
  %39 = load i32 (%struct.xt_mtdtor_param*)*, i32 (%struct.xt_mtdtor_param*)** %38, align 8
  %40 = call i32 %39(%struct.xt_mtdtor_param* %9)
  br label %41

41:                                               ; preds = %35, %3
  %42 = load %struct.module*, %struct.module** %8, align 8
  %43 = call i32 @module_put(%struct.module* %42)
  %44 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %45 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = call i32 @kfree(%struct.TYPE_2__* %46)
  ret void
}

declare dso_local i32 @module_put(%struct.module*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
