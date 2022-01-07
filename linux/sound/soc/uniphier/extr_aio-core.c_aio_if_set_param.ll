; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_if_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_if_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { %struct.TYPE_12__*, i32, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@PORT_DIR_OUTPUT = common dso_local global i64 0, align 8
@PBOUTMXCTR0_ENDIAN_0123 = common dso_local global i32 0, align 4
@PBOUTMXCTR0_MEMFMT_STREAM = common dso_local global i32 0, align 4
@PBOUTMXCTR0_MEMFMT_2CH = common dso_local global i32 0, align 4
@PBOUTMXCTR0_MEMFMT_6CH = common dso_local global i32 0, align 4
@PBOUTMXCTR0_MEMFMT_8CH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PBOUTMXCTR0_ENDIAN_3210 = common dso_local global i32 0, align 4
@PBINMXCTR_NCONNECT_CONNECT = common dso_local global i32 0, align 4
@PBINMXCTR_INOUTSEL_IN = common dso_local global i32 0, align 4
@PBINMXCTR_PBINSEL_SHIFT = common dso_local global i32 0, align 4
@PBINMXCTR_ENDIAN_3210 = common dso_local global i32 0, align 4
@PBINMXCTR_MEMFMT_D0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aio_if_set_param(%struct.uniphier_aio_sub* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uniphier_aio_sub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %4, align 8
  %10 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %9, i32 0, i32 2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.regmap*, %struct.regmap** %14, align 8
  store %struct.regmap* %15, %struct.regmap** %6, align 8
  %16 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %4, align 8
  %17 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PORT_DIR_OUTPUT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %67

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @PBOUTMXCTR0_ENDIAN_0123, align 4
  %28 = load i32, i32* @PBOUTMXCTR0_MEMFMT_STREAM, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %8, align 4
  br label %47

30:                                               ; preds = %23
  %31 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %4, align 8
  %32 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %31, i32 0, i32 1
  %33 = call i32 @params_channels(i32* %32)
  switch i32 %33, label %40 [
    i32 2, label %34
    i32 6, label %36
    i32 8, label %38
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* @PBOUTMXCTR0_MEMFMT_2CH, align 4
  store i32 %35, i32* %7, align 4
  br label %43

36:                                               ; preds = %30
  %37 = load i32, i32* @PBOUTMXCTR0_MEMFMT_6CH, align 4
  store i32 %37, i32* %7, align 4
  br label %43

38:                                               ; preds = %30
  %39 = load i32, i32* @PBOUTMXCTR0_MEMFMT_8CH, align 4
  store i32 %39, i32* %7, align 4
  br label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %94

43:                                               ; preds = %38, %36, %34
  %44 = load i32, i32* @PBOUTMXCTR0_ENDIAN_3210, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %43, %26
  %48 = load %struct.regmap*, %struct.regmap** %6, align 8
  %49 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %4, align 8
  %50 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @PBOUTMXCTR0(i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @regmap_write(%struct.regmap* %48, i32 %55, i32 %56)
  %58 = load %struct.regmap*, %struct.regmap** %6, align 8
  %59 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %4, align 8
  %60 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %59, i32 0, i32 0
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @PBOUTMXCTR1(i32 %64)
  %66 = call i32 @regmap_write(%struct.regmap* %58, i32 %65, i32 0)
  br label %93

67:                                               ; preds = %2
  %68 = load %struct.regmap*, %struct.regmap** %6, align 8
  %69 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %4, align 8
  %70 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PBINMXCTR(i32 %74)
  %76 = load i32, i32* @PBINMXCTR_NCONNECT_CONNECT, align 4
  %77 = load i32, i32* @PBINMXCTR_INOUTSEL_IN, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %4, align 8
  %80 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @PBINMXCTR_PBINSEL_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = or i32 %78, %86
  %88 = load i32, i32* @PBINMXCTR_ENDIAN_3210, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @PBINMXCTR_MEMFMT_D0, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @regmap_write(%struct.regmap* %68, i32 %75, i32 %91)
  br label %93

93:                                               ; preds = %67, %47
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %40
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @params_channels(i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @PBOUTMXCTR0(i32) #1

declare dso_local i32 @PBOUTMXCTR1(i32) #1

declare dso_local i32 @PBINMXCTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
