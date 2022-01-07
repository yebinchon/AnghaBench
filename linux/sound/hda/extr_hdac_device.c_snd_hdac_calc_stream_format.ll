; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_snd_hdac_calc_stream_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_snd_hdac_calc_stream_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@rate_bits = common dso_local global %struct.TYPE_2__* null, align 8
@AC_FMT_BITS_8 = common dso_local global i32 0, align 4
@AC_FMT_BITS_16 = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_FLOAT_LE = common dso_local global i32 0, align 4
@AC_FMT_BITS_32 = common dso_local global i32 0, align 4
@AC_FMT_BITS_24 = common dso_local global i32 0, align 4
@AC_FMT_BITS_20 = common dso_local global i32 0, align 4
@AC_DIG1_NONAUDIO = common dso_local global i16 0, align 2
@AC_FMT_TYPE_NON_PCM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_calc_stream_format(i32 %0, i32 %1, i32 %2, i32 %3, i16 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i16 %4, i16* %11, align 2
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %39, %5
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rate_bits, align 8
  %16 = load i32, i32* %12, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %14
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rate_bits, align 8
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rate_bits, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  br label %42

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  br label %14

42:                                               ; preds = %31, %14
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rate_bits, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %111

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp ugt i32 %55, 8
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %51
  store i32 0, i32* %6, align 4
  br label %111

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = sub i32 %59, 1
  %61 = load i32, i32* %13, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @snd_pcm_format_width(i32 %63)
  switch i32 %64, label %97 [
    i32 8, label %65
    i32 16, label %69
    i32 20, label %73
    i32 24, label %73
    i32 32, label %73
  ]

65:                                               ; preds = %58
  %66 = load i32, i32* @AC_FMT_BITS_8, align 4
  %67 = load i32, i32* %13, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %13, align 4
  br label %98

69:                                               ; preds = %58
  %70 = load i32, i32* @AC_FMT_BITS_16, align 4
  %71 = load i32, i32* %13, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %13, align 4
  br label %98

73:                                               ; preds = %58, %58, %58
  %74 = load i32, i32* %10, align 4
  %75 = icmp uge i32 %74, 32
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @SNDRV_PCM_FORMAT_FLOAT_LE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76, %73
  %81 = load i32, i32* @AC_FMT_BITS_32, align 4
  %82 = load i32, i32* %13, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %13, align 4
  br label %96

84:                                               ; preds = %76
  %85 = load i32, i32* %10, align 4
  %86 = icmp uge i32 %85, 24
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* @AC_FMT_BITS_24, align 4
  %89 = load i32, i32* %13, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %13, align 4
  br label %95

91:                                               ; preds = %84
  %92 = load i32, i32* @AC_FMT_BITS_20, align 4
  %93 = load i32, i32* %13, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %91, %87
  br label %96

96:                                               ; preds = %95, %80
  br label %98

97:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %111

98:                                               ; preds = %96, %69, %65
  %99 = load i16, i16* %11, align 2
  %100 = zext i16 %99 to i32
  %101 = load i16, i16* @AC_DIG1_NONAUDIO, align 2
  %102 = zext i16 %101 to i32
  %103 = and i32 %100, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load i32, i32* @AC_FMT_TYPE_NON_PCM, align 4
  %107 = load i32, i32* %13, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %105, %98
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %109, %97, %57, %50
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i32 @snd_pcm_format_width(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
