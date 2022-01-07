; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6dsp-common.c_q6dsp_map_channels.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6dsp-common.c_q6dsp_map_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCM_MAX_NUM_CHANNEL = common dso_local global i32 0, align 4
@PCM_CHANNEL_FC = common dso_local global i32 0, align 4
@PCM_CHANNEL_FL = common dso_local global i32 0, align 4
@PCM_CHANNEL_FR = common dso_local global i32 0, align 4
@PCM_CHANNEL_LS = common dso_local global i32 0, align 4
@PCM_CHANNEL_RS = common dso_local global i32 0, align 4
@PCM_CHANNEL_LFE = common dso_local global i32 0, align 4
@PCM_CHANNEL_LB = common dso_local global i32 0, align 4
@PCM_CHANNEL_RB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @q6dsp_map_channels(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @PCM_MAX_NUM_CHANNEL, align 4
  %7 = zext i32 %6 to i64
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @PCM_MAX_NUM_CHANNEL, align 4
  %10 = call i32 @memset(i32* %8, i32 0, i32 %9)
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %106 [
    i32 1, label %12
    i32 2, label %16
    i32 3, label %23
    i32 4, label %33
    i32 5, label %46
    i32 6, label %62
    i32 8, label %81
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @PCM_CHANNEL_FC, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %13, i32* %15, align 4
  br label %109

16:                                               ; preds = %2
  %17 = load i32, i32* @PCM_CHANNEL_FL, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @PCM_CHANNEL_FR, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %20, i32* %22, align 4
  br label %109

23:                                               ; preds = %2
  %24 = load i32, i32* @PCM_CHANNEL_FL, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @PCM_CHANNEL_FR, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @PCM_CHANNEL_FC, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32 %30, i32* %32, align 4
  br label %109

33:                                               ; preds = %2
  %34 = load i32, i32* @PCM_CHANNEL_FL, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @PCM_CHANNEL_FR, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @PCM_CHANNEL_LS, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @PCM_CHANNEL_RS, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  store i32 %43, i32* %45, align 4
  br label %109

46:                                               ; preds = %2
  %47 = load i32, i32* @PCM_CHANNEL_FL, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @PCM_CHANNEL_FR, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @PCM_CHANNEL_FC, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @PCM_CHANNEL_LS, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @PCM_CHANNEL_RS, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  store i32 %59, i32* %61, align 4
  br label %109

62:                                               ; preds = %2
  %63 = load i32, i32* @PCM_CHANNEL_FL, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @PCM_CHANNEL_FR, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @PCM_CHANNEL_LFE, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @PCM_CHANNEL_FC, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @PCM_CHANNEL_LS, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @PCM_CHANNEL_RS, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 5
  store i32 %78, i32* %80, align 4
  br label %109

81:                                               ; preds = %2
  %82 = load i32, i32* @PCM_CHANNEL_FL, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @PCM_CHANNEL_FR, align 4
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @PCM_CHANNEL_LFE, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @PCM_CHANNEL_FC, align 4
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @PCM_CHANNEL_LS, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @PCM_CHANNEL_RS, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 5
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @PCM_CHANNEL_LB, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 6
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @PCM_CHANNEL_RB, align 4
  %104 = load i32*, i32** %4, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 7
  store i32 %103, i32* %105, align 4
  br label %109

106:                                              ; preds = %2
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %110

109:                                              ; preds = %81, %62, %46, %33, %23, %16, %12
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %106
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
