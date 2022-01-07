; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun8i-codec-analog.c_sun8i_codec_analog_cmpnt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun8i-codec-analog.c_sun8i_codec_analog_cmpnt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.device* }
%struct.device = type { i32 }
%struct.sun8i_codec_analog_quirks = type { i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @sun8i_codec_analog_cmpnt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_codec_analog_cmpnt_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sun8i_codec_analog_quirks*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %7, i32 0, i32 0
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.sun8i_codec_analog_quirks* @of_device_get_match_data(%struct.device* %10)
  store %struct.sun8i_codec_analog_quirks* %11, %struct.sun8i_codec_analog_quirks** %5, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = load %struct.sun8i_codec_analog_quirks*, %struct.sun8i_codec_analog_quirks** %5, align 8
  %14 = call i32 @sun8i_codec_analog_add_mixer(%struct.snd_soc_component* %12, %struct.sun8i_codec_analog_quirks* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %98

19:                                               ; preds = %1
  %20 = load %struct.sun8i_codec_analog_quirks*, %struct.sun8i_codec_analog_quirks** %5, align 8
  %21 = getelementptr inbounds %struct.sun8i_codec_analog_quirks, %struct.sun8i_codec_analog_quirks* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = call i32 @sun8i_codec_add_headphone(%struct.snd_soc_component* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %98

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %19
  %33 = load %struct.sun8i_codec_analog_quirks*, %struct.sun8i_codec_analog_quirks** %5, align 8
  %34 = getelementptr inbounds %struct.sun8i_codec_analog_quirks, %struct.sun8i_codec_analog_quirks* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %39 = call i32 @sun8i_codec_add_hmic(%struct.snd_soc_component* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %98

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %32
  %46 = load %struct.sun8i_codec_analog_quirks*, %struct.sun8i_codec_analog_quirks** %5, align 8
  %47 = getelementptr inbounds %struct.sun8i_codec_analog_quirks, %struct.sun8i_codec_analog_quirks* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %52 = call i32 @sun8i_codec_add_linein(%struct.snd_soc_component* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %98

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %45
  %59 = load %struct.sun8i_codec_analog_quirks*, %struct.sun8i_codec_analog_quirks** %5, align 8
  %60 = getelementptr inbounds %struct.sun8i_codec_analog_quirks, %struct.sun8i_codec_analog_quirks* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %65 = call i32 @sun8i_codec_add_lineout(%struct.snd_soc_component* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %98

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %58
  %72 = load %struct.sun8i_codec_analog_quirks*, %struct.sun8i_codec_analog_quirks** %5, align 8
  %73 = getelementptr inbounds %struct.sun8i_codec_analog_quirks, %struct.sun8i_codec_analog_quirks* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %78 = call i32 @sun8i_codec_add_mbias(%struct.snd_soc_component* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %98

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %71
  %85 = load %struct.sun8i_codec_analog_quirks*, %struct.sun8i_codec_analog_quirks** %5, align 8
  %86 = getelementptr inbounds %struct.sun8i_codec_analog_quirks, %struct.sun8i_codec_analog_quirks* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %91 = call i32 @sun8i_codec_add_mic2(%struct.snd_soc_component* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %98

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %84
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %94, %81, %68, %55, %42, %29, %17
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.sun8i_codec_analog_quirks* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @sun8i_codec_analog_add_mixer(%struct.snd_soc_component*, %struct.sun8i_codec_analog_quirks*) #1

declare dso_local i32 @sun8i_codec_add_headphone(%struct.snd_soc_component*) #1

declare dso_local i32 @sun8i_codec_add_hmic(%struct.snd_soc_component*) #1

declare dso_local i32 @sun8i_codec_add_linein(%struct.snd_soc_component*) #1

declare dso_local i32 @sun8i_codec_add_lineout(%struct.snd_soc_component*) #1

declare dso_local i32 @sun8i_codec_add_mbias(%struct.snd_soc_component*) #1

declare dso_local i32 @sun8i_codec_add_mic2(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
