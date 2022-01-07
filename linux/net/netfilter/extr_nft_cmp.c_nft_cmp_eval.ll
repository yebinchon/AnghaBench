; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_cmp.c_nft_cmp_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_cmp.c_nft_cmp_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.nft_pktinfo = type { i32 }
%struct.nft_cmp_expr = type { i64, i32, i32, i32 }

@NFT_BREAK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nft_cmp_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_cmp_expr*, align 8
  %8 = alloca i32, align 4
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %9 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %10 = call %struct.nft_cmp_expr* @nft_expr_priv(%struct.nft_expr* %9)
  store %struct.nft_cmp_expr* %10, %struct.nft_cmp_expr** %7, align 8
  %11 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %12 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.nft_cmp_expr*, %struct.nft_cmp_expr** %7, align 8
  %15 = getelementptr inbounds %struct.nft_cmp_expr, %struct.nft_cmp_expr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load %struct.nft_cmp_expr*, %struct.nft_cmp_expr** %7, align 8
  %19 = getelementptr inbounds %struct.nft_cmp_expr, %struct.nft_cmp_expr* %18, i32 0, i32 3
  %20 = load %struct.nft_cmp_expr*, %struct.nft_cmp_expr** %7, align 8
  %21 = getelementptr inbounds %struct.nft_cmp_expr, %struct.nft_cmp_expr* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memcmp(i32* %17, i32* %19, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.nft_cmp_expr*, %struct.nft_cmp_expr** %7, align 8
  %25 = getelementptr inbounds %struct.nft_cmp_expr, %struct.nft_cmp_expr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %57 [
    i32 133, label %27
    i32 128, label %32
    i32 130, label %37
    i32 129, label %42
    i32 132, label %47
    i32 131, label %52
  ]

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %58

31:                                               ; preds = %27
  br label %57

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %58

36:                                               ; preds = %32
  br label %57

37:                                               ; preds = %3
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %58

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %3, %41
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %58

46:                                               ; preds = %42
  br label %57

47:                                               ; preds = %3
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %58

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %3, %51
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %58

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %3, %56, %46, %36, %31
  br label %63

58:                                               ; preds = %55, %50, %45, %40, %35, %30
  %59 = load i32, i32* @NFT_BREAK, align 4
  %60 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %61 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  br label %63

63:                                               ; preds = %58, %57
  ret void
}

declare dso_local %struct.nft_cmp_expr* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
