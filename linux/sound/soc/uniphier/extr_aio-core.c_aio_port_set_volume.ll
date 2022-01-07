; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_port_set_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_port_set_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@PORT_DIR_INPUT = common dso_local global i64 0, align 8
@AUD_VOL_FADE_TIME = common dso_local global i32 0, align 4
@OPORTMXTYVOLPARA1_SLOPEU_MASK = common dso_local global i32 0, align 4
@OPORTMXTYVOLPARA2_TARGET_MASK = common dso_local global i32 0, align 4
@OPORTMXTYVOLPARA2_FADE_MASK = common dso_local global i32 0, align 4
@OPORTMXTYVOLPARA2_FADE_FADEIN = common dso_local global i32 0, align 4
@OPORTMXTYVOLPARA2_FADE_FADEOUT = common dso_local global i32 0, align 4
@AOUTFADECTR0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aio_port_set_volume(%struct.uniphier_aio_sub* %0, i32 %1) #0 {
  %3 = alloca %struct.uniphier_aio_sub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %12 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.regmap*, %struct.regmap** %16, align 8
  store %struct.regmap* %17, %struct.regmap** %5, align 8
  %18 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %19 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %24 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %25 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PORT_DIR_INPUT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %90

32:                                               ; preds = %2
  %33 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %34 = call i32 @aio_port_get_volume(%struct.uniphier_aio_sub* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  %38 = call i32 @abs(i32 %37) #3
  store i32 %38, i32* %8, align 4
  %39 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %40 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %39, i32 0, i32 0
  %41 = call i32 @params_rate(i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %32
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @AUD_VOL_FADE_TIME, align 4
  %47 = sdiv i32 %45, %46
  %48 = mul nsw i32 %47, 1000
  %49 = load i32, i32* %10, align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %44, %32
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @max(i32 1, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.regmap*, %struct.regmap** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @OPORTMXTYVOLPARA1(i32 %55, i32 0)
  %57 = load i32, i32* @OPORTMXTYVOLPARA1_SLOPEU_MASK, align 4
  %58 = load i32, i32* %9, align 4
  %59 = shl i32 %58, 16
  %60 = call i32 @regmap_update_bits(%struct.regmap* %54, i32 %56, i32 %57, i32 %59)
  %61 = load %struct.regmap*, %struct.regmap** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @OPORTMXTYVOLPARA2(i32 %62, i32 0)
  %64 = load i32, i32* @OPORTMXTYVOLPARA2_TARGET_MASK, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @regmap_update_bits(%struct.regmap* %61, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %51
  %71 = load %struct.regmap*, %struct.regmap** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @OPORTMXTYVOLPARA2(i32 %72, i32 0)
  %74 = load i32, i32* @OPORTMXTYVOLPARA2_FADE_MASK, align 4
  %75 = load i32, i32* @OPORTMXTYVOLPARA2_FADE_FADEIN, align 4
  %76 = call i32 @regmap_update_bits(%struct.regmap* %71, i32 %73, i32 %74, i32 %75)
  br label %84

77:                                               ; preds = %51
  %78 = load %struct.regmap*, %struct.regmap** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @OPORTMXTYVOLPARA2(i32 %79, i32 0)
  %81 = load i32, i32* @OPORTMXTYVOLPARA2_FADE_MASK, align 4
  %82 = load i32, i32* @OPORTMXTYVOLPARA2_FADE_FADEOUT, align 4
  %83 = call i32 @regmap_update_bits(%struct.regmap* %78, i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %77, %70
  %85 = load %struct.regmap*, %struct.regmap** %5, align 8
  %86 = load i32, i32* @AOUTFADECTR0, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @BIT(i32 %87)
  %89 = call i32 @regmap_write(%struct.regmap* %85, i32 %86, i32 %88)
  br label %90

90:                                               ; preds = %84, %31
  ret void
}

declare dso_local i32 @aio_port_get_volume(%struct.uniphier_aio_sub*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @params_rate(i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @OPORTMXTYVOLPARA1(i32, i32) #1

declare dso_local i32 @OPORTMXTYVOLPARA2(i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
