; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cpcap.c_cpcap_set_samprate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cpcap.c_cpcap_set_samprate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_audio = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@CPCAP_REG_SDAC = common dso_local global i32 0, align 4
@CPCAP_BIT_ST_SR0 = common dso_local global i32 0, align 4
@CPCAP_BIT_DF_RESET_ST_DAC = common dso_local global i32 0, align 4
@CPCAP_BIT_ST_CLOCK_TREE_RESET = common dso_local global i32 0, align 4
@CPCAP_REG_CC = common dso_local global i32 0, align 4
@CPCAP_BIT_CDC_SR0 = common dso_local global i32 0, align 4
@CPCAP_BIT_DF_RESET = common dso_local global i32 0, align 4
@CPCAP_BIT_CDC_CLOCK_TREE_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"invalid DAI: %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unsupported samplerate %d\00", align 1
@CLOCK_TREE_RESET_TIME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"reset self-clear failed: %04x\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpcap_audio*, i32, i32)* @cpcap_set_samprate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_set_samprate(%struct.cpcap_audio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpcap_audio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cpcap_audio* %0, %struct.cpcap_audio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.cpcap_audio*, %struct.cpcap_audio** %5, align 8
  %17 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %16, i32 0, i32 1
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %8, align 8
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %36 [
    i32 129, label %20
    i32 128, label %28
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @CPCAP_REG_SDAC, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @CPCAP_BIT_ST_SR0, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @CPCAP_BIT_DF_RESET_ST_DAC, align 4
  %24 = call i32 @BIT(i32 %23)
  %25 = load i32, i32* @CPCAP_BIT_ST_CLOCK_TREE_RESET, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = or i32 %24, %26
  store i32 %27, i32* %13, align 4
  br label %44

28:                                               ; preds = %3
  %29 = load i32, i32* @CPCAP_REG_CC, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @CPCAP_BIT_CDC_SR0, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* @CPCAP_BIT_DF_RESET, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = load i32, i32* @CPCAP_BIT_CDC_CLOCK_TREE_RESET, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = or i32 %32, %34
  store i32 %35, i32* %13, align 4
  br label %44

36:                                               ; preds = %3
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %38 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %125

44:                                               ; preds = %28, %20
  %45 = load i32, i32* %11, align 4
  %46 = shl i32 15, %45
  %47 = load i32, i32* %13, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  switch i32 %49, label %77 [
    i32 48000, label %50
    i32 44100, label %53
    i32 32000, label %56
    i32 24000, label %59
    i32 22050, label %62
    i32 16000, label %65
    i32 12000, label %68
    i32 11025, label %71
    i32 8000, label %74
  ]

50:                                               ; preds = %44
  %51 = load i32, i32* %11, align 4
  %52 = shl i32 8, %51
  store i32 %52, i32* %12, align 4
  br label %85

53:                                               ; preds = %44
  %54 = load i32, i32* %11, align 4
  %55 = shl i32 7, %54
  store i32 %55, i32* %12, align 4
  br label %85

56:                                               ; preds = %44
  %57 = load i32, i32* %11, align 4
  %58 = shl i32 6, %57
  store i32 %58, i32* %12, align 4
  br label %85

59:                                               ; preds = %44
  %60 = load i32, i32* %11, align 4
  %61 = shl i32 5, %60
  store i32 %61, i32* %12, align 4
  br label %85

62:                                               ; preds = %44
  %63 = load i32, i32* %11, align 4
  %64 = shl i32 4, %63
  store i32 %64, i32* %12, align 4
  br label %85

65:                                               ; preds = %44
  %66 = load i32, i32* %11, align 4
  %67 = shl i32 3, %66
  store i32 %67, i32* %12, align 4
  br label %85

68:                                               ; preds = %44
  %69 = load i32, i32* %11, align 4
  %70 = shl i32 2, %69
  store i32 %70, i32* %12, align 4
  br label %85

71:                                               ; preds = %44
  %72 = load i32, i32* %11, align 4
  %73 = shl i32 1, %72
  store i32 %73, i32* %12, align 4
  br label %85

74:                                               ; preds = %44
  %75 = load i32, i32* %11, align 4
  %76 = shl i32 0, %75
  store i32 %76, i32* %12, align 4
  br label %85

77:                                               ; preds = %44
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %79 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %125

85:                                               ; preds = %74, %71, %68, %65, %62, %59, %56, %53, %50
  %86 = load %struct.cpcap_audio*, %struct.cpcap_audio** %5, align 8
  %87 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @regmap_update_bits(i32 %88, i32 %89, i32 %90, i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %85
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %4, align 4
  br label %125

99:                                               ; preds = %85
  %100 = load i32, i32* @CLOCK_TREE_RESET_TIME, align 4
  %101 = call i32 @mdelay(i32 %100)
  %102 = load %struct.cpcap_audio*, %struct.cpcap_audio** %5, align 8
  %103 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @regmap_read(i32 %104, i32 %105, i32* %15)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %4, align 4
  br label %125

111:                                              ; preds = %99
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %13, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %118 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @dev_err(i32 %119, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @EIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %125

124:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %116, %109, %97, %77, %36
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
