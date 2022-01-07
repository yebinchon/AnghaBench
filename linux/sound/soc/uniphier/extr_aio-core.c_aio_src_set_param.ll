; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_src_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_src_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@PORT_DIR_OUTPUT = common dso_local global i64 0, align 8
@OPORTMXSRC1CTR_THMODE_SRC = common dso_local global i32 0, align 4
@OPORTMXSRC1CTR_SRCPATH_CALC = common dso_local global i32 0, align 4
@OPORTMXSRC1CTR_SYNC_ASYNC = common dso_local global i32 0, align 4
@OPORTMXSRC1CTR_FSIIPSEL_INNER = common dso_local global i32 0, align 4
@OPORTMXSRC1CTR_FSISEL_ACLK = common dso_local global i32 0, align 4
@OPORTMXRATE_I_ACLKSEL_APLLA1 = common dso_local global i32 0, align 4
@OPORTMXRATE_I_MCKSEL_36 = common dso_local global i32 0, align 4
@OPORTMXRATE_I_FSSEL_48 = common dso_local global i32 0, align 4
@OPORTMXRATE_I_ACLKSEL_APLLA2 = common dso_local global i32 0, align 4
@OPORTMXRATE_I_MCKSEL_33 = common dso_local global i32 0, align 4
@OPORTMXRATE_I_FSSEL_44_1 = common dso_local global i32 0, align 4
@OPORTMXRATE_I_FSSEL_32 = common dso_local global i32 0, align 4
@OPORTMXRATE_I_ACLKSRC_APLL = common dso_local global i32 0, align 4
@OPORTMXRATE_I_LRCKSTP_STOP = common dso_local global i32 0, align 4
@OPORTMXRATE_I_LRCKSTP_MASK = common dso_local global i32 0, align 4
@OPORTMXRATE_I_LRCKSTP_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aio_src_set_param(%struct.uniphier_aio_sub* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uniphier_aio_sub*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %8 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %4, align 8
  %9 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.regmap*, %struct.regmap** %13, align 8
  store %struct.regmap* %14, %struct.regmap** %6, align 8
  %15 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %4, align 8
  %16 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PORT_DIR_OUTPUT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %89

23:                                               ; preds = %2
  %24 = load %struct.regmap*, %struct.regmap** %6, align 8
  %25 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %4, align 8
  %26 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @OPORTMXSRC1CTR(i32 %30)
  %32 = load i32, i32* @OPORTMXSRC1CTR_THMODE_SRC, align 4
  %33 = load i32, i32* @OPORTMXSRC1CTR_SRCPATH_CALC, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @OPORTMXSRC1CTR_SYNC_ASYNC, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @OPORTMXSRC1CTR_FSIIPSEL_INNER, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @OPORTMXSRC1CTR_FSISEL_ACLK, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @regmap_write(%struct.regmap* %24, i32 %31, i32 %40)
  %42 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %43 = call i32 @params_rate(%struct.snd_pcm_hw_params* %42)
  switch i32 %43, label %44 [
    i32 48000, label %45
    i32 44100, label %51
    i32 32000, label %57
  ]

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %23, %44
  %46 = load i32, i32* @OPORTMXRATE_I_ACLKSEL_APLLA1, align 4
  %47 = load i32, i32* @OPORTMXRATE_I_MCKSEL_36, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @OPORTMXRATE_I_FSSEL_48, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %7, align 4
  br label %63

51:                                               ; preds = %23
  %52 = load i32, i32* @OPORTMXRATE_I_ACLKSEL_APLLA2, align 4
  %53 = load i32, i32* @OPORTMXRATE_I_MCKSEL_33, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @OPORTMXRATE_I_FSSEL_44_1, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %7, align 4
  br label %63

57:                                               ; preds = %23
  %58 = load i32, i32* @OPORTMXRATE_I_ACLKSEL_APLLA1, align 4
  %59 = load i32, i32* @OPORTMXRATE_I_MCKSEL_36, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @OPORTMXRATE_I_FSSEL_32, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %57, %51, %45
  %64 = load %struct.regmap*, %struct.regmap** %6, align 8
  %65 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %4, align 8
  %66 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @OPORTMXRATE_I(i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @OPORTMXRATE_I_ACLKSRC_APLL, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @OPORTMXRATE_I_LRCKSTP_STOP, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @regmap_write(%struct.regmap* %64, i32 %71, i32 %76)
  %78 = load %struct.regmap*, %struct.regmap** %6, align 8
  %79 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %4, align 8
  %80 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @OPORTMXRATE_I(i32 %84)
  %86 = load i32, i32* @OPORTMXRATE_I_LRCKSTP_MASK, align 4
  %87 = load i32, i32* @OPORTMXRATE_I_LRCKSTP_START, align 4
  %88 = call i32 @regmap_update_bits(%struct.regmap* %78, i32 %85, i32 %86, i32 %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %63, %22
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @OPORTMXSRC1CTR(i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @OPORTMXRATE_I(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
