; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_set_audio_source.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_set_audio_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcxhr = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@PCXHR_CFG_SRC_MASK = common dso_local global i32 0, align 4
@PCXHR_CFG_DATAIN_SEL_MASK = common dso_local global i32 0, align 4
@PCXHR_CFG_DATA_UER1_SEL_MASK = common dso_local global i32 0, align 4
@SOURCE_DIGISRC = common dso_local global i64 0, align 8
@SOURCE_DIGITAL = common dso_local global i64 0, align 8
@SOURCE_LINE = common dso_local global i64 0, align 8
@SOURCE_LINEMIC = common dso_local global i64 0, align 8
@SOURCE_MIC = common dso_local global i64 0, align 8
@PCXHR_XLX_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hr222_set_audio_source(%struct.snd_pcxhr* %0) #0 {
  %2 = alloca %struct.snd_pcxhr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_pcxhr* %0, %struct.snd_pcxhr** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @PCXHR_CFG_SRC_MASK, align 4
  %6 = load i32, i32* @PCXHR_CFG_DATAIN_SEL_MASK, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @PCXHR_CFG_DATA_UER1_SEL_MASK, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %10
  store i32 %16, i32* %14, align 8
  %17 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %18 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SOURCE_DIGISRC, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load i32, i32* @PCXHR_CFG_SRC_MASK, align 4
  %24 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %25 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %23
  store i32 %29, i32* %27, align 8
  store i32 1, i32* %3, align 4
  br label %38

30:                                               ; preds = %1
  %31 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %32 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SOURCE_DIGITAL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %30
  br label %38

38:                                               ; preds = %37, %22
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %38
  %42 = load i32, i32* @PCXHR_CFG_DATAIN_SEL_MASK, align 4
  %43 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %44 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %42
  store i32 %48, i32* %46, align 8
  %49 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %50 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %41
  %56 = load i32, i32* @PCXHR_CFG_DATA_UER1_SEL_MASK, align 4
  %57 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %58 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %56
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %55, %41
  br label %117

64:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  %65 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %66 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %65, i32 0, i32 1
  store i32 0, i32* %66, align 8
  %67 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %68 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %67, i32 0, i32 2
  store i32 0, i32* %68, align 4
  %69 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %70 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SOURCE_LINE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %64
  %75 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %76 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SOURCE_LINEMIC, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %74, %64
  %81 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %82 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 1, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %80
  %87 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %88 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %87, i32 0, i32 1
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %74
  %90 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %91 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SOURCE_MIC, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %97 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SOURCE_LINEMIC, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %95, %89
  %102 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %103 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 1, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %101
  %108 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %109 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %108, i32 0, i32 2
  store i32 1, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %95
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %115 = call i32 @hr222_update_analog_audio_level(%struct.snd_pcxhr* %114, i32 1, i32 0)
  br label %116

116:                                              ; preds = %113, %110
  br label %117

117:                                              ; preds = %116, %63
  %118 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %119 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %118, i32 0, i32 3
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load i32, i32* @PCXHR_XLX_CFG, align 4
  %122 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %123 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %122, i32 0, i32 3
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @PCXHR_OUTPB(%struct.TYPE_2__* %120, i32 %121, i32 %126)
  ret i32 0
}

declare dso_local i32 @hr222_update_analog_audio_level(%struct.snd_pcxhr*, i32, i32) #1

declare dso_local i32 @PCXHR_OUTPB(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
