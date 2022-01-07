; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_oport_set_stream_type.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_oport_set_stream_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@OPORTMXPAUDAT_PAUSEPC_CMN = common dso_local global i32 0, align 4
@OPORTMXREPET_STRLENGTH_AC3 = common dso_local global i32 0, align 4
@OPORTMXREPET_PMLENGTH_AC3 = common dso_local global i32 0, align 4
@OPORTMXPAUDAT_PAUSEPD_AC3 = common dso_local global i32 0, align 4
@OPORTMXREPET_STRLENGTH_MPA = common dso_local global i32 0, align 4
@OPORTMXREPET_PMLENGTH_MPA = common dso_local global i32 0, align 4
@OPORTMXPAUDAT_PAUSEPD_MPA = common dso_local global i32 0, align 4
@OPORTMXREPET_STRLENGTH_MP3 = common dso_local global i32 0, align 4
@OPORTMXREPET_PMLENGTH_MP3 = common dso_local global i32 0, align 4
@OPORTMXPAUDAT_PAUSEPD_MP3 = common dso_local global i32 0, align 4
@OPORTMXREPET_STRLENGTH_DTS1 = common dso_local global i32 0, align 4
@OPORTMXREPET_PMLENGTH_DTS1 = common dso_local global i32 0, align 4
@OPORTMXPAUDAT_PAUSEPD_DTS1 = common dso_local global i32 0, align 4
@OPORTMXREPET_STRLENGTH_DTS2 = common dso_local global i32 0, align 4
@OPORTMXREPET_PMLENGTH_DTS2 = common dso_local global i32 0, align 4
@OPORTMXPAUDAT_PAUSEPD_DTS2 = common dso_local global i32 0, align 4
@OPORTMXREPET_STRLENGTH_DTS3 = common dso_local global i32 0, align 4
@OPORTMXREPET_PMLENGTH_DTS3 = common dso_local global i32 0, align 4
@OPORTMXPAUDAT_PAUSEPD_DTS3 = common dso_local global i32 0, align 4
@OPORTMXREPET_STRLENGTH_AAC = common dso_local global i32 0, align 4
@OPORTMXREPET_PMLENGTH_AAC = common dso_local global i32 0, align 4
@OPORTMXPAUDAT_PAUSEPD_AAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aio_oport_set_stream_type(%struct.uniphier_aio_sub* %0, i32 %1) #0 {
  %3 = alloca %struct.uniphier_aio_sub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %9 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.regmap*, %struct.regmap** %13, align 8
  store %struct.regmap* %14, %struct.regmap** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load i32, i32* @OPORTMXPAUDAT_PAUSEPC_CMN, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %67 [
    i32 134, label %17
    i32 129, label %24
    i32 130, label %31
    i32 133, label %38
    i32 132, label %45
    i32 131, label %52
    i32 135, label %59
    i32 128, label %66
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @OPORTMXREPET_STRLENGTH_AC3, align 4
  %19 = load i32, i32* @OPORTMXREPET_PMLENGTH_AC3, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @OPORTMXPAUDAT_PAUSEPD_AC3, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %67

24:                                               ; preds = %2
  %25 = load i32, i32* @OPORTMXREPET_STRLENGTH_MPA, align 4
  %26 = load i32, i32* @OPORTMXREPET_PMLENGTH_MPA, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @OPORTMXPAUDAT_PAUSEPD_MPA, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %67

31:                                               ; preds = %2
  %32 = load i32, i32* @OPORTMXREPET_STRLENGTH_MP3, align 4
  %33 = load i32, i32* @OPORTMXREPET_PMLENGTH_MP3, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @OPORTMXPAUDAT_PAUSEPD_MP3, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %67

38:                                               ; preds = %2
  %39 = load i32, i32* @OPORTMXREPET_STRLENGTH_DTS1, align 4
  %40 = load i32, i32* @OPORTMXREPET_PMLENGTH_DTS1, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @OPORTMXPAUDAT_PAUSEPD_DTS1, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %67

45:                                               ; preds = %2
  %46 = load i32, i32* @OPORTMXREPET_STRLENGTH_DTS2, align 4
  %47 = load i32, i32* @OPORTMXREPET_PMLENGTH_DTS2, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @OPORTMXPAUDAT_PAUSEPD_DTS2, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %67

52:                                               ; preds = %2
  %53 = load i32, i32* @OPORTMXREPET_STRLENGTH_DTS3, align 4
  %54 = load i32, i32* @OPORTMXREPET_PMLENGTH_DTS3, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @OPORTMXPAUDAT_PAUSEPD_DTS3, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %67

59:                                               ; preds = %2
  %60 = load i32, i32* @OPORTMXREPET_STRLENGTH_AAC, align 4
  %61 = load i32, i32* @OPORTMXREPET_PMLENGTH_AAC, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @OPORTMXPAUDAT_PAUSEPD_AAC, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %67

66:                                               ; preds = %2
  br label %67

67:                                               ; preds = %2, %66, %59, %52, %45, %38, %31, %24, %17
  %68 = load %struct.regmap*, %struct.regmap** %5, align 8
  %69 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %70 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @OPORTMXREPET(i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @regmap_write(%struct.regmap* %68, i32 %75, i32 %76)
  %78 = load %struct.regmap*, %struct.regmap** %5, align 8
  %79 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %80 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @OPORTMXPAUDAT(i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @regmap_write(%struct.regmap* %78, i32 %85, i32 %86)
  ret i32 0
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @OPORTMXREPET(i32) #1

declare dso_local i32 @OPORTMXPAUDAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
