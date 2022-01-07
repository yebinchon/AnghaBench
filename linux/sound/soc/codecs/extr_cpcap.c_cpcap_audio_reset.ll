; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cpcap.c_cpcap_audio_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cpcap.c_cpcap_audio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.snd_soc_component = type { i32 }
%struct.cpcap_audio = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"init audio codec\00", align 1
@cpcap_default_regs = common dso_local global %struct.TYPE_3__* null, align 8
@CPCAP_DAI_HIFI = common dso_local global i32 0, align 4
@CPCAP_DAI_VOICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @cpcap_audio_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_audio_reset(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpcap_audio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = call %struct.cpcap_audio* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.cpcap_audio* %10, %struct.cpcap_audio** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %48, %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpcap_default_regs, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %15
  %21 = load %struct.cpcap_audio*, %struct.cpcap_audio** %6, align 8
  %22 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpcap_default_regs, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpcap_default_regs, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpcap_default_regs, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @regmap_update_bits(i32 %23, i32 %29, i32 %35, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %20
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %92

47:                                               ; preds = %20
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %15

51:                                               ; preds = %15
  %52 = load %struct.cpcap_audio*, %struct.cpcap_audio** %6, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @cpcap_dai_mux(%struct.cpcap_audio* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %92

59:                                               ; preds = %51
  %60 = load %struct.cpcap_audio*, %struct.cpcap_audio** %6, align 8
  %61 = load i32, i32* @CPCAP_DAI_HIFI, align 4
  %62 = call i32 @cpcap_set_sysclk(%struct.cpcap_audio* %60, i32 %61, i32 0, i32 26000000)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %92

67:                                               ; preds = %59
  %68 = load %struct.cpcap_audio*, %struct.cpcap_audio** %6, align 8
  %69 = load i32, i32* @CPCAP_DAI_VOICE, align 4
  %70 = call i32 @cpcap_set_sysclk(%struct.cpcap_audio* %68, i32 %69, i32 0, i32 26000000)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %92

75:                                               ; preds = %67
  %76 = load %struct.cpcap_audio*, %struct.cpcap_audio** %6, align 8
  %77 = load i32, i32* @CPCAP_DAI_HIFI, align 4
  %78 = call i32 @cpcap_set_samprate(%struct.cpcap_audio* %76, i32 %77, i32 48000)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %92

83:                                               ; preds = %75
  %84 = load %struct.cpcap_audio*, %struct.cpcap_audio** %6, align 8
  %85 = load i32, i32* @CPCAP_DAI_VOICE, align 4
  %86 = call i32 @cpcap_set_samprate(%struct.cpcap_audio* %84, i32 %85, i32 48000)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %92

91:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %89, %81, %73, %65, %57, %45
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.cpcap_audio* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @cpcap_dai_mux(%struct.cpcap_audio*, i32) #1

declare dso_local i32 @cpcap_set_sysclk(%struct.cpcap_audio*, i32, i32, i32) #1

declare dso_local i32 @cpcap_set_samprate(%struct.cpcap_audio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
