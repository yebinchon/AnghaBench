; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_cmp.c___nft_cmp_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_cmp.c___nft_cmp_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_offload_ctx = type { %struct.nft_offload_reg* }
%struct.nft_offload_reg = type { i32, i64, i32, i32, i32 }
%struct.nft_flow_rule = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.nft_cmp_expr = type { i64, i64, i32, i32 }

@NFT_CMP_EQ = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_offload_ctx*, %struct.nft_flow_rule*, %struct.nft_cmp_expr*)* @__nft_cmp_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nft_cmp_offload(%struct.nft_offload_ctx* %0, %struct.nft_flow_rule* %1, %struct.nft_cmp_expr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_offload_ctx*, align 8
  %6 = alloca %struct.nft_flow_rule*, align 8
  %7 = alloca %struct.nft_cmp_expr*, align 8
  %8 = alloca %struct.nft_offload_reg*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.nft_offload_ctx* %0, %struct.nft_offload_ctx** %5, align 8
  store %struct.nft_flow_rule* %1, %struct.nft_flow_rule** %6, align 8
  store %struct.nft_cmp_expr* %2, %struct.nft_cmp_expr** %7, align 8
  %11 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.nft_offload_ctx, %struct.nft_offload_ctx* %11, i32 0, i32 0
  %13 = load %struct.nft_offload_reg*, %struct.nft_offload_reg** %12, align 8
  %14 = load %struct.nft_cmp_expr*, %struct.nft_cmp_expr** %7, align 8
  %15 = getelementptr inbounds %struct.nft_cmp_expr, %struct.nft_cmp_expr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.nft_offload_reg, %struct.nft_offload_reg* %13, i64 %16
  store %struct.nft_offload_reg* %17, %struct.nft_offload_reg** %8, align 8
  %18 = load %struct.nft_flow_rule*, %struct.nft_flow_rule** %6, align 8
  %19 = getelementptr inbounds %struct.nft_flow_rule, %struct.nft_flow_rule* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i32* %20, i32** %9, align 8
  %21 = load %struct.nft_flow_rule*, %struct.nft_flow_rule** %6, align 8
  %22 = getelementptr inbounds %struct.nft_flow_rule, %struct.nft_flow_rule* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32* %23, i32** %10, align 8
  %24 = load %struct.nft_cmp_expr*, %struct.nft_cmp_expr** %7, align 8
  %25 = getelementptr inbounds %struct.nft_cmp_expr, %struct.nft_cmp_expr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NFT_CMP_EQ, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %3
  %30 = load %struct.nft_offload_reg*, %struct.nft_offload_reg** %8, align 8
  %31 = getelementptr inbounds %struct.nft_offload_reg, %struct.nft_offload_reg* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.nft_cmp_expr*, %struct.nft_cmp_expr** %7, align 8
  %34 = getelementptr inbounds %struct.nft_cmp_expr, %struct.nft_cmp_expr* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29, %3
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %94

40:                                               ; preds = %29
  %41 = load i32*, i32** %10, align 8
  %42 = load %struct.nft_offload_reg*, %struct.nft_offload_reg** %8, align 8
  %43 = getelementptr inbounds %struct.nft_offload_reg, %struct.nft_offload_reg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load %struct.nft_cmp_expr*, %struct.nft_cmp_expr** %7, align 8
  %48 = getelementptr inbounds %struct.nft_cmp_expr, %struct.nft_cmp_expr* %47, i32 0, i32 3
  %49 = load %struct.nft_cmp_expr*, %struct.nft_cmp_expr** %7, align 8
  %50 = getelementptr inbounds %struct.nft_cmp_expr, %struct.nft_cmp_expr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @memcpy(i32* %46, i32* %48, i32 %51)
  %53 = load i32*, i32** %9, align 8
  %54 = load %struct.nft_offload_reg*, %struct.nft_offload_reg** %8, align 8
  %55 = getelementptr inbounds %struct.nft_offload_reg, %struct.nft_offload_reg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load %struct.nft_offload_reg*, %struct.nft_offload_reg** %8, align 8
  %60 = getelementptr inbounds %struct.nft_offload_reg, %struct.nft_offload_reg* %59, i32 0, i32 3
  %61 = load %struct.nft_cmp_expr*, %struct.nft_cmp_expr** %7, align 8
  %62 = getelementptr inbounds %struct.nft_cmp_expr, %struct.nft_cmp_expr* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @memcpy(i32* %58, i32* %60, i32 %63)
  %65 = load %struct.nft_offload_reg*, %struct.nft_offload_reg** %8, align 8
  %66 = getelementptr inbounds %struct.nft_offload_reg, %struct.nft_offload_reg* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @BIT(i64 %67)
  %69 = load %struct.nft_flow_rule*, %struct.nft_flow_rule** %6, align 8
  %70 = getelementptr inbounds %struct.nft_flow_rule, %struct.nft_flow_rule* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %68
  store i32 %74, i32* %72, align 8
  %75 = load %struct.nft_offload_reg*, %struct.nft_offload_reg** %8, align 8
  %76 = getelementptr inbounds %struct.nft_offload_reg, %struct.nft_offload_reg* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.nft_flow_rule*, %struct.nft_flow_rule** %6, align 8
  %79 = getelementptr inbounds %struct.nft_flow_rule, %struct.nft_flow_rule* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.nft_offload_reg*, %struct.nft_offload_reg** %8, align 8
  %84 = getelementptr inbounds %struct.nft_offload_reg, %struct.nft_offload_reg* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 %77, i32* %86, align 4
  %87 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %5, align 8
  %88 = load %struct.nft_cmp_expr*, %struct.nft_cmp_expr** %7, align 8
  %89 = getelementptr inbounds %struct.nft_cmp_expr, %struct.nft_cmp_expr* %88, i32 0, i32 3
  %90 = load %struct.nft_cmp_expr*, %struct.nft_cmp_expr** %7, align 8
  %91 = getelementptr inbounds %struct.nft_cmp_expr, %struct.nft_cmp_expr* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @nft_offload_update_dependency(%struct.nft_offload_ctx* %87, i32* %89, i32 %92)
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %40, %37
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @nft_offload_update_dependency(%struct.nft_offload_ctx*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
