; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_soc_hw_rule.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_soc_hw_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai = type { i32 }
%struct.snd_interval = type { i8*, i8* }

@UINT_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_dai*, i32*, i32, %struct.snd_interval*, %struct.snd_interval*)* @rsnd_soc_hw_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_soc_hw_rule(%struct.rsnd_dai* %0, i32* %1, i32 %2, %struct.snd_interval* %3, %struct.snd_interval* %4) #0 {
  %6 = alloca %struct.rsnd_dai*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_interval*, align 8
  %10 = alloca %struct.snd_interval*, align 8
  %11 = alloca %struct.snd_interval, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rsnd_dai* %0, %struct.rsnd_dai** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.snd_interval* %3, %struct.snd_interval** %9, align 8
  store %struct.snd_interval* %4, %struct.snd_interval** %10, align 8
  %14 = call i32 @snd_interval_any(%struct.snd_interval* %11)
  %15 = load i8*, i8** @UINT_MAX, align 8
  %16 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 0
  store i8* null, i8** %17, align 8
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %97, %5
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %100

22:                                               ; preds = %18
  %23 = load %struct.snd_interval*, %struct.snd_interval** %10, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @snd_interval_test(%struct.snd_interval* %23, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %97

32:                                               ; preds = %22
  %33 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %34 = load %struct.snd_interval*, %struct.snd_interval** %9, align 8
  %35 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rsnd_ssi_clk_query(%struct.rsnd_dai* %33, i8* %36, i32 %41, i32* null)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ugt i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @min(i8* %47, i32 %52)
  %54 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  %55 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @max(i8* %56, i32 %61)
  %63 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  br label %64

64:                                               ; preds = %45, %32
  %65 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %66 = load %struct.snd_interval*, %struct.snd_interval** %9, align 8
  %67 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @rsnd_ssi_clk_query(%struct.rsnd_dai* %65, i8* %68, i32 %73, i32* null)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ugt i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %64
  %78 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @min(i8* %79, i32 %84)
  %86 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 1
  store i8* %85, i8** %86, align 8
  %87 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @max(i8* %88, i32 %93)
  %95 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 0
  store i8* %94, i8** %95, align 8
  br label %96

96:                                               ; preds = %77, %64
  br label %97

97:                                               ; preds = %96, %31
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %18

100:                                              ; preds = %18
  %101 = load %struct.snd_interval*, %struct.snd_interval** %10, align 8
  %102 = call i32 @snd_interval_refine(%struct.snd_interval* %101, %struct.snd_interval* %11)
  ret i32 %102
}

declare dso_local i32 @snd_interval_any(%struct.snd_interval*) #1

declare dso_local i32 @snd_interval_test(%struct.snd_interval*, i32) #1

declare dso_local i32 @rsnd_ssi_clk_query(%struct.rsnd_dai*, i8*, i32, i32*) #1

declare dso_local i8* @min(i8*, i32) #1

declare dso_local i8* @max(i8*, i32) #1

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, %struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
