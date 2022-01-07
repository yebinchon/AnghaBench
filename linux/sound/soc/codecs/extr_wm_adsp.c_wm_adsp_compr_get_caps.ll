; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_compr_get_caps.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_compr_get_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.snd_compr_stream = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.wm_adsp_compr* }
%struct.wm_adsp_compr = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.snd_compr_caps = type { i32, i32, i32, i32, i32, i32, i32* }

@wm_adsp_fw = common dso_local global %struct.TYPE_8__* null, align 8
@WM_ADSP_MIN_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@WM_ADSP_MAX_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@WM_ADSP_MIN_FRAGMENTS = common dso_local global i32 0, align 4
@WM_ADSP_MAX_FRAGMENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm_adsp_compr_get_caps(%struct.snd_compr_stream* %0, %struct.snd_compr_caps* %1) #0 {
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca %struct.snd_compr_caps*, align 8
  %5 = alloca %struct.wm_adsp_compr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  store %struct.snd_compr_caps* %1, %struct.snd_compr_caps** %4, align 8
  %8 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %11, align 8
  store %struct.wm_adsp_compr* %12, %struct.wm_adsp_compr** %5, align 8
  %13 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %14 = getelementptr inbounds %struct.wm_adsp_compr, %struct.wm_adsp_compr* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wm_adsp_fw, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %80

25:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %53, %25
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wm_adsp_fw, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %27, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %26
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wm_adsp_fw, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %48 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  br label %53

53:                                               ; preds = %35
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %26

56:                                               ; preds = %26
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %59 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wm_adsp_fw, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %67 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @WM_ADSP_MIN_FRAGMENT_SIZE, align 4
  %69 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %70 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @WM_ADSP_MAX_FRAGMENT_SIZE, align 4
  %72 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %73 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @WM_ADSP_MIN_FRAGMENTS, align 4
  %75 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %76 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @WM_ADSP_MAX_FRAGMENTS, align 4
  %78 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %79 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %56, %2
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
