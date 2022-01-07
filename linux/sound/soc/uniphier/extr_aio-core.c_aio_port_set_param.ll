; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_port_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_port_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@PORT_TYPE_EVE = common dso_local global i64 0, align 8
@PORT_TYPE_CONV = common dso_local global i64 0, align 8
@PORT_DIR_OUTPUT = common dso_local global i64 0, align 8
@OPORTMXCTR3_SRCSEL_STREAM = common dso_local global i32 0, align 4
@OPORTMXCTR3_VALID_STREAM = common dso_local global i32 0, align 4
@OPORTMXCTR3_SRCSEL_PCM = common dso_local global i32 0, align 4
@OPORTMXCTR3_VALID_PCM = common dso_local global i32 0, align 4
@OPORTMXCTR3_IECTHUR_IECOUT = common dso_local global i32 0, align 4
@OPORTMXCTR3_PMSEL_PAUSE = common dso_local global i32 0, align 4
@OPORTMXCTR3_PMSW_MUTE_OFF = common dso_local global i32 0, align 4
@IPORTMXACLKSEL0EX_ACLKSEL0EX_INTERNAL = common dso_local global i32 0, align 4
@IPORTMXEXNOE_PCMINOE_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aio_port_set_param(%struct.uniphier_aio_sub* %0, i32 %1, %struct.snd_pcm_hw_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uniphier_aio_sub*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_hw_params*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_pcm_hw_params* %2, %struct.snd_pcm_hw_params** %7, align 8
  %12 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %13 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.regmap*, %struct.regmap** %17, align 8
  store %struct.regmap* %18, %struct.regmap** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %3
  %22 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %23 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PORT_TYPE_EVE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %21
  %30 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %31 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PORT_TYPE_CONV, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29, %21
  store i32 48000, i32* %9, align 4
  br label %41

38:                                               ; preds = %29
  %39 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %40 = call i32 @params_rate(%struct.snd_pcm_hw_params* %39)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %38, %37
  %42 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %43 = call i32 @aio_port_set_ch(%struct.uniphier_aio_sub* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %130

48:                                               ; preds = %41
  %49 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @aio_port_set_rate(%struct.uniphier_aio_sub* %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %130

56:                                               ; preds = %48
  %57 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %58 = call i32 @aio_port_set_fmt(%struct.uniphier_aio_sub* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %4, align 4
  br label %130

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %3
  %65 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %66 = call i32 @aio_port_set_clk(%struct.uniphier_aio_sub* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %130

71:                                               ; preds = %64
  %72 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %73 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PORT_DIR_OUTPUT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* @OPORTMXCTR3_SRCSEL_STREAM, align 4
  %84 = load i32, i32* @OPORTMXCTR3_VALID_STREAM, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %10, align 4
  br label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @OPORTMXCTR3_SRCSEL_PCM, align 4
  %88 = load i32, i32* @OPORTMXCTR3_VALID_PCM, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i32, i32* @OPORTMXCTR3_IECTHUR_IECOUT, align 4
  %92 = load i32, i32* @OPORTMXCTR3_PMSEL_PAUSE, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @OPORTMXCTR3_PMSW_MUTE_OFF, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %10, align 4
  %98 = load %struct.regmap*, %struct.regmap** %8, align 8
  %99 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %100 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @OPORTMXCTR3(i32 %104)
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @regmap_write(%struct.regmap* %98, i32 %105, i32 %106)
  br label %129

108:                                              ; preds = %71
  %109 = load %struct.regmap*, %struct.regmap** %8, align 8
  %110 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %111 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @IPORTMXACLKSEL0EX(i32 %115)
  %117 = load i32, i32* @IPORTMXACLKSEL0EX_ACLKSEL0EX_INTERNAL, align 4
  %118 = call i32 @regmap_write(%struct.regmap* %109, i32 %116, i32 %117)
  %119 = load %struct.regmap*, %struct.regmap** %8, align 8
  %120 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %121 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %120, i32 0, i32 0
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @IPORTMXEXNOE(i32 %125)
  %127 = load i32, i32* @IPORTMXEXNOE_PCMINOE_INPUT, align 4
  %128 = call i32 @regmap_write(%struct.regmap* %119, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %108, %90
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %69, %61, %54, %46
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @aio_port_set_ch(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @aio_port_set_rate(%struct.uniphier_aio_sub*, i32) #1

declare dso_local i32 @aio_port_set_fmt(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @aio_port_set_clk(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @OPORTMXCTR3(i32) #1

declare dso_local i32 @IPORTMXACLKSEL0EX(i32) #1

declare dso_local i32 @IPORTMXEXNOE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
