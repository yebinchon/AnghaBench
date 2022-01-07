; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_range.c_nft_range_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_range.c_nft_range_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i8* }
%struct.nft_pktinfo = type { i32 }
%struct.nft_range_expr = type { i64, i32, i32, i32, i32 }

@NFT_BREAK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nft_range_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_range_expr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %10 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %11 = call %struct.nft_range_expr* @nft_expr_priv(%struct.nft_expr* %10)
  store %struct.nft_range_expr* %11, %struct.nft_range_expr** %7, align 8
  %12 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %13 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.nft_range_expr*, %struct.nft_range_expr** %7, align 8
  %16 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load %struct.nft_range_expr*, %struct.nft_range_expr** %7, align 8
  %20 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %19, i32 0, i32 4
  %21 = load %struct.nft_range_expr*, %struct.nft_range_expr** %7, align 8
  %22 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memcmp(i32* %18, i32* %20, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %26 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.nft_range_expr*, %struct.nft_range_expr** %7, align 8
  %29 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load %struct.nft_range_expr*, %struct.nft_range_expr** %7, align 8
  %33 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %32, i32 0, i32 3
  %34 = load %struct.nft_range_expr*, %struct.nft_range_expr** %7, align 8
  %35 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memcmp(i32* %31, i32* %33, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.nft_range_expr*, %struct.nft_range_expr** %7, align 8
  %39 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %65 [
    i32 129, label %41
    i32 128, label %53
  ]

41:                                               ; preds = %3
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44, %41
  %48 = load i8*, i8** @NFT_BREAK, align 8
  %49 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %50 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  br label %52

52:                                               ; preds = %47, %44
  br label %65

53:                                               ; preds = %3
  %54 = load i32, i32* %8, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i8*, i8** @NFT_BREAK, align 8
  %61 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %62 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i8* %60, i8** %63, align 8
  br label %64

64:                                               ; preds = %59, %56, %53
  br label %65

65:                                               ; preds = %3, %64, %52
  ret void
}

declare dso_local %struct.nft_range_expr* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
