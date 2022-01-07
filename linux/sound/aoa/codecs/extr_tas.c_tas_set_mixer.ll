; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/codecs/extr_tas.c_tas_set_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/codecs/extr_tas.c_tas_set_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tas = type { i32*, i32* }

@tas_gaintable = common dso_local global i32* null, align 8
@TAS_REG_LMIX = common dso_local global i32 0, align 4
@TAS_REG_RMIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tas*)* @tas_set_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tas_set_mixer(%struct.tas* %0) #0 {
  %2 = alloca %struct.tas*, align 8
  %3 = alloca [9 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tas* %0, %struct.tas** %2, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %47, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %50

10:                                               ; preds = %7
  %11 = load %struct.tas*, %struct.tas** %2, align 8
  %12 = getelementptr inbounds %struct.tas, %struct.tas* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 177
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  store i32 177, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %10
  %22 = load i32*, i32** @tas_gaintable, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 16
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 3, %29
  %31 = add nsw i32 %30, 0
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 %32
  store i32 %28, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 8
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 3, %36
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 %39
  store i32 %35, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = mul nsw i32 3, %42
  %44 = add nsw i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 %45
  store i32 %41, i32* %46, align 4
  br label %47

47:                                               ; preds = %21
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %7

50:                                               ; preds = %7
  %51 = load %struct.tas*, %struct.tas** %2, align 8
  %52 = load i32, i32* @TAS_REG_LMIX, align 4
  %53 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %54 = call i32 @tas_write_reg(%struct.tas* %51, i32 %52, i32 9, i32* %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %95, %50
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 3
  br i1 %57, label %58, label %98

58:                                               ; preds = %55
  %59 = load %struct.tas*, %struct.tas** %2, align 8
  %60 = getelementptr inbounds %struct.tas, %struct.tas* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp sgt i32 %66, 177
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  store i32 177, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %58
  %70 = load i32*, i32** @tas_gaintable, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = ashr i32 %75, 16
  %77 = load i32, i32* %5, align 4
  %78 = mul nsw i32 3, %77
  %79 = add nsw i32 %78, 0
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 %80
  store i32 %76, i32* %81, align 4
  %82 = load i32, i32* %4, align 4
  %83 = ashr i32 %82, 8
  %84 = load i32, i32* %5, align 4
  %85 = mul nsw i32 3, %84
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 %87
  store i32 %83, i32* %88, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %5, align 4
  %91 = mul nsw i32 3, %90
  %92 = add nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 %93
  store i32 %89, i32* %94, align 4
  br label %95

95:                                               ; preds = %69
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %55

98:                                               ; preds = %55
  %99 = load %struct.tas*, %struct.tas** %2, align 8
  %100 = load i32, i32* @TAS_REG_RMIX, align 4
  %101 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %102 = call i32 @tas_write_reg(%struct.tas* %99, i32 %100, i32 9, i32* %101)
  ret void
}

declare dso_local i32 @tas_write_reg(%struct.tas*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
