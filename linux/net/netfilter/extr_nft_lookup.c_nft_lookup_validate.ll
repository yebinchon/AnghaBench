; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_lookup.c_nft_lookup_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_lookup.c_nft_lookup_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_data = type { i32 }
%struct.nft_lookup = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.nft_ctx*, %struct.TYPE_4__*, %struct.nft_set_iter*)* }
%struct.nft_set_iter = type { i64, i32, i64, i64, i32 }

@NFT_SET_MAP = common dso_local global i32 0, align 4
@NFT_DATA_VERDICT = common dso_local global i64 0, align 8
@nft_lookup_validate_setelem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nft_data**)* @nft_lookup_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_lookup_validate(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nft_data** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nft_data**, align 8
  %8 = alloca %struct.nft_lookup*, align 8
  %9 = alloca %struct.nft_set_iter, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nft_data** %2, %struct.nft_data*** %7, align 8
  %10 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %11 = call %struct.nft_lookup* @nft_expr_priv(%struct.nft_expr* %10)
  store %struct.nft_lookup* %11, %struct.nft_lookup** %8, align 8
  %12 = load %struct.nft_lookup*, %struct.nft_lookup** %8, align 8
  %13 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @NFT_SET_MAP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.nft_lookup*, %struct.nft_lookup** %8, align 8
  %22 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NFT_DATA_VERDICT, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %3
  store i32 0, i32* %4, align 4
  br label %60

29:                                               ; preds = %20
  %30 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nft_genmask_next(i32 %32)
  %34 = getelementptr inbounds %struct.nft_set_iter, %struct.nft_set_iter* %9, i32 0, i32 4
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.nft_set_iter, %struct.nft_set_iter* %9, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.nft_set_iter, %struct.nft_set_iter* %9, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds %struct.nft_set_iter, %struct.nft_set_iter* %9, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @nft_lookup_validate_setelem, align 4
  %39 = getelementptr inbounds %struct.nft_set_iter, %struct.nft_set_iter* %9, i32 0, i32 1
  store i32 %38, i32* %39, align 8
  %40 = load %struct.nft_lookup*, %struct.nft_lookup** %8, align 8
  %41 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (%struct.nft_ctx*, %struct.TYPE_4__*, %struct.nft_set_iter*)*, i32 (%struct.nft_ctx*, %struct.TYPE_4__*, %struct.nft_set_iter*)** %45, align 8
  %47 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %48 = load %struct.nft_lookup*, %struct.nft_lookup** %8, align 8
  %49 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = call i32 %46(%struct.nft_ctx* %47, %struct.TYPE_4__* %50, %struct.nft_set_iter* %9)
  %52 = getelementptr inbounds %struct.nft_set_iter, %struct.nft_set_iter* %9, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %29
  %56 = getelementptr inbounds %struct.nft_set_iter, %struct.nft_set_iter* %9, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %55, %28
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.nft_lookup* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_genmask_next(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
