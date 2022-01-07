; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_sti_uniperif.c_sti_uniperiph_get_tdm_word_pos.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_sti_uniperif.c_sti_uniperiph_get_tdm_word_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniperif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@WORD_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sti_uniperiph_get_tdm_word_pos(%struct.uniperif* %0, i32* %1) #0 {
  %3 = alloca %struct.uniperif*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  store %struct.uniperif* %0, %struct.uniperif** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %13 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %15, 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %18 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %22 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %90, %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @WORD_MAX, align 4
  %32 = icmp slt i32 %30, %31
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i1 [ false, %25 ], [ %32, %29 ]
  br i1 %34, label %35, label %93

35:                                               ; preds = %33
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = lshr i32 %36, %37
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %89

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %46
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %62

50:                                               ; preds = %41
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = add i32 %54, 2
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %58
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %50, %41
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp sgt i32 %65, 3
  br i1 %66, label %67, label %88

67:                                               ; preds = %62
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %71 = load i32, i32* %70, align 16
  %72 = shl i32 %71, 8
  %73 = or i32 %69, %72
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 16
  %77 = or i32 %73, %76
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %79 = load i32, i32* %78, align 8
  %80 = shl i32 %79, 24
  %81 = or i32 %77, %80
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %81, i32* %85, align 4
  store i32 0, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %67, %62
  br label %89

89:                                               ; preds = %88, %35
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %25

93:                                               ; preds = %33
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
