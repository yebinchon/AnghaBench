; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_port_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_port_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.regmap* }
%struct.TYPE_7__ = type { %struct.device }
%struct.device = type { i32 }
%struct.regmap = type { i32 }

@PORT_DIR_OUTPUT = common dso_local global i64 0, align 8
@OPORTMXCTR1_I2SLRSEL_LEFT = common dso_local global i32 0, align 4
@OPORTMXCTR1_I2SLRSEL_RIGHT = common dso_local global i32 0, align 4
@OPORTMXCTR1_I2SLRSEL_I2S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Format is not supported(%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OPORTMXCTR1_OUTBITSEL_24 = common dso_local global i32 0, align 4
@OPORTMXCTR1_I2SLRSEL_MASK = common dso_local global i32 0, align 4
@OPORTMXCTR1_OUTBITSEL_MASK = common dso_local global i32 0, align 4
@IPORTMXCTR1_LRSEL_LEFT = common dso_local global i32 0, align 4
@IPORTMXCTR1_LRSEL_RIGHT = common dso_local global i32 0, align 4
@IPORTMXCTR1_LRSEL_I2S = common dso_local global i32 0, align 4
@IPORTMXCTR1_OUTBITSEL_24 = common dso_local global i32 0, align 4
@IPORTMXCTR1_CHSEL_ALL = common dso_local global i32 0, align 4
@IPORTMXCTR1_LRSEL_MASK = common dso_local global i32 0, align 4
@IPORTMXCTR1_OUTBITSEL_MASK = common dso_local global i32 0, align 4
@IPORTMXCTR1_CHSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uniphier_aio_sub*)* @aio_port_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_port_set_fmt(%struct.uniphier_aio_sub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uniphier_aio_sub*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %3, align 8
  %7 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %8 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %7, i32 0, i32 1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.regmap*, %struct.regmap** %12, align 8
  store %struct.regmap* %13, %struct.regmap** %4, align 8
  %14 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %15 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %5, align 8
  %22 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %23 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PORT_DIR_OUTPUT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %68

29:                                               ; preds = %1
  %30 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %31 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %30, i32 0, i32 1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %41 [
    i32 129, label %35
    i32 128, label %37
    i32 130, label %39
  ]

35:                                               ; preds = %29
  %36 = load i32, i32* @OPORTMXCTR1_I2SLRSEL_LEFT, align 4
  store i32 %36, i32* %6, align 4
  br label %51

37:                                               ; preds = %29
  %38 = load i32, i32* @OPORTMXCTR1_I2SLRSEL_RIGHT, align 4
  store i32 %38, i32* %6, align 4
  br label %51

39:                                               ; preds = %29
  %40 = load i32, i32* @OPORTMXCTR1_I2SLRSEL_I2S, align 4
  store i32 %40, i32* %6, align 4
  br label %51

41:                                               ; preds = %29
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %44 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %112

51:                                               ; preds = %39, %37, %35
  %52 = load i32, i32* @OPORTMXCTR1_OUTBITSEL_24, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load %struct.regmap*, %struct.regmap** %4, align 8
  %56 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %57 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %56, i32 0, i32 0
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @OPORTMXCTR1(i32 %61)
  %63 = load i32, i32* @OPORTMXCTR1_I2SLRSEL_MASK, align 4
  %64 = load i32, i32* @OPORTMXCTR1_OUTBITSEL_MASK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @regmap_update_bits(%struct.regmap* %55, i32 %62, i32 %65, i32 %66)
  br label %111

68:                                               ; preds = %1
  %69 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %70 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %80 [
    i32 129, label %74
    i32 128, label %76
    i32 130, label %78
  ]

74:                                               ; preds = %68
  %75 = load i32, i32* @IPORTMXCTR1_LRSEL_LEFT, align 4
  store i32 %75, i32* %6, align 4
  br label %90

76:                                               ; preds = %68
  %77 = load i32, i32* @IPORTMXCTR1_LRSEL_RIGHT, align 4
  store i32 %77, i32* %6, align 4
  br label %90

78:                                               ; preds = %68
  %79 = load i32, i32* @IPORTMXCTR1_LRSEL_I2S, align 4
  store i32 %79, i32* %6, align 4
  br label %90

80:                                               ; preds = %68
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %83 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %82, i32 0, i32 1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %112

90:                                               ; preds = %78, %76, %74
  %91 = load i32, i32* @IPORTMXCTR1_OUTBITSEL_24, align 4
  %92 = load i32, i32* @IPORTMXCTR1_CHSEL_ALL, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  %96 = load %struct.regmap*, %struct.regmap** %4, align 8
  %97 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %98 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %97, i32 0, i32 0
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @IPORTMXCTR1(i32 %102)
  %104 = load i32, i32* @IPORTMXCTR1_LRSEL_MASK, align 4
  %105 = load i32, i32* @IPORTMXCTR1_OUTBITSEL_MASK, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @IPORTMXCTR1_CHSEL_MASK, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @regmap_update_bits(%struct.regmap* %96, i32 %103, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %90, %51
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %80, %41
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @OPORTMXCTR1(i32) #1

declare dso_local i32 @IPORTMXCTR1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
